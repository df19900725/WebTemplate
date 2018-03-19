var uploadUrl = ctx + "/upload";
initFileInput("input-id", uploadUrl, '请上传实体封面图');

//这些变量都是jcrop剪裁图片需要的
var jcrop_api,boundx,boundy,
  // Grab some information about the preview pane
  $preview = $('#preview-pane'),
  $pcnt = $('#preview-pane .preview-container'),
  $pimg = $('#preview-pane .preview-container img'),

  xsize = $pcnt.width(),
  ysize = $pcnt.height();

// var imageCut = $('#preview-image-custom');
var rotate = false;

function initFileInput(ctrlName, uploadUrl, tips) {

  $('#' + ctrlName).fileinput({
    language: 'zh', //设置语言
    uploadUrl: uploadUrl, //上传的地址
    allowedFileExtensions: ['jpg', 'gif', 'png'],//接收的文件后缀
    showUpload: true, //是否显示上传按钮
    showCaption: false,//是否显示标题
    browseClass: "btn btn-primary", //按钮样式
    theme: "fa",
    autoOrientImage: true,
    // showPreview: false,
    validateInitialCount: true,
    dropZoneTitle:tips,
    enctype: 'multipart/form-data',
    maxFileCount: 1 //表示允许同时上传的最大文件个数

  }).on("fileimageloaded", function (event, previewId ) {

    //需要判断图片是否需要旋转
    var image = new Image();
    image.src = $("img.file-preview-image").attr("src");
    var previewElement= rotateImage(image);

    $(previewElement).css("width",'308px');
    $(previewElement).css("height",'auto');

    $("#jcrop-image-div").html(previewElement);

    $(".file-preview").hide();  //将bootstrap file-input插件默认的预览界面隐藏起来，启用自定义预览
    $("#preview-pane").show();

    previewElement = $("#preview-image-custom");

    //将图片预览模块的图片加载出来
    previewElement.Jcrop({
      aspectRatio: 3 / 2,             //剪裁的长宽比
      onChange: updatePreview,
      onSelect: updatePreview

    },function(){

      var bounds = this.getBounds();
      boundx = bounds[0];
      boundy = bounds[1];
      // Store the API in the jcrop_api variable
      jcrop_api = this;
      jcrop_api.setSelect([0, 0, 308, 0]);

      $preview.appendTo(jcrop_api.ui.holder);
    });

    $(".jcrop-preview").attr('src',previewElement.attr("src"));


  }).on('fileclear', function(event) {
    console.log("fileclear");
    // $("#preview-pane").hide();
    $("#jcrop-image-div").html('<img class="img-fluid" id="preview-image-custom" src="" />');
    $(".file-preview").show()

  }).on( 'filepreupload', function (event, data) {    //在上传图片的时候，把剪切的结果的参数也上传一下

    var jcropHolder = $(".jcrop-holder");

    //如果图片旋转过，需要更新剪切的参数，//固定剪切后的图片是412 * 308
    if( rotate ){
      var w = imageCutParam.w;
      var h = imageCutParam.h;
      var x = imageCutParam.x;
      var y = imageCutParam.y;
      imageCutParam.scaleWidth = jcropHolder.css('height').replace("px", "");
      imageCutParam.scaleHeight = jcropHolder.css('width').replace("px", "");
      imageCutParam.h = w;
      imageCutParam.w = h;
      imageCutParam.x = y;
      imageCutParam.y = 308 - w -x;
    }else {
      imageCutParam.scaleWidth = jcropHolder.css('width').replace("px", "");
      imageCutParam.scaleHeight = jcropHolder.css('height').replace("px", "");
      rotateAngel = 0;
    }
    data.form.append("imageCutParams", JSON.stringify(imageCutParam));
    data.form.append("rotate", rotateAngel);

  }).on("fileuploaded", function (event, data, previewId, index) {

    if( data.response.resultCode === 200){
      $("#cover_upload_handle").hide();
      $("#cover_reupload_button").show();
      $("#cover_uploaded").attr("src", ctx + data.response.resultModel.url)

    }
    console.log(data.response)
  });
}

//重新上传
function reupload(){
  $("#cover_reupload_button").hide();
  $("#cover_upload_handle").show();
  $("#cover_uploaded").attr("src", '')
}

var imageCutParam;   //记录剪切的参数
var rotateAngel;    //iOS的图片上传的时候会出现角度翻转的问题，这个变量记录需要旋转的角度

//更新预览区域的图片，并更新剪切参数
function updatePreview(c)
{
  if (parseInt(c.w) > 0)
  {
    var rx = xsize / c.w;
    var ry = ysize / c.h;

    $pimg.css({
      width: Math.round(rx * boundx) + 'px',
      height: Math.round(ry * boundy) + 'px',
      marginLeft: '-' + Math.round(rx * c.x) + 'px',
      marginTop: '-' + Math.round(ry * c.y) + 'px'
    });
  }

  imageCutParam = c    //将剪切的结果存起来
}

//旋转图片
function rotateImage(image) {
  console.log('rotateImage why');

  var width = image.width;
  var height = image.height;

  var canvas = document.createElement("canvas");
  var ctx = canvas.getContext('2d');

  var newImage = new Image();

  //旋转图片操作
  EXIF.getData(image,function () {
      var orientation = EXIF.getTag(this,'Orientation');
      // orientation = 6;//测试数据
      console.log('orientation:'+orientation);
      switch (orientation){
        //正常状态
        case 1:
          console.log('旋转0°');
          // canvas.height = height;
          // canvas.width = width;
          rotate = false;
          newImage = image;
          break;
        //旋转90度
        case 6:
          console.log('旋转90°');
          canvas.height = width;
          canvas.width = height;
          ctx.rotate(Math.PI/2);
          ctx.translate(0,-height);

          ctx.drawImage(image,0,0);
          rotate = true;
          rotateAngel = 90;
          imageDate = canvas.toDataURL('Image/jpeg',1)
          newImage.src = imageDate;
          newImage.id='preview-image-custom';
          break;
        //旋转180°
        case 3:
          console.log('旋转180°');
          canvas.height = height;
          canvas.width = width;
          ctx.rotate(Math.PI);
          ctx.translate(-width,-height);

          ctx.drawImage(image,0,0)
          imageDate = canvas.toDataURL('Image/jpeg',1)
          newImage.src = imageDate;
          break;
        //旋转270°
        case 8:
          console.log('旋转270°');
          canvas.height = width;
          canvas.width = height;
          ctx.rotate(-Math.PI/2);
          ctx.translate(-height,0);

          ctx.drawImage(image,0,0)
          imageDate = canvas.toDataURL('Image/jpeg',1)
          newImage.src = imageDate;
          break;
        //undefined时不旋转
        case undefined:
          console.log('undefined  不旋转');
          newImage = image;
          break;
      }
    }
  );

  newImage.id='preview-image-custom';
  return newImage;
}
