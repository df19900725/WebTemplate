<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var = "ctx" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html lang="zh">
<head>
  <title>网站代码示例</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="${ctx }/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
  <link href="${ctx }/resources/css/font-awesome.min.css" rel="stylesheet" type="text/css" />

  <link href="${ctx }/resources/fileinput/themes/explorer-fa/theme.css" rel="stylesheet">
  <link href="${ctx }/resources/fileinput/fileinput.min.css" rel="stylesheet">

  <link href="${ctx }/resources/css/jquery.Jcrop.min.css" rel="stylesheet">

  <style>
  	.row{
  		margin-top:20px;
  	}
  </style>

  <style type="text/css">

    /* Apply these styles only when #preview-pane has
       been placed within the Jcrop widget */
    .jcrop-holder #preview-pane {
      display: block;
      position: absolute;
      z-index: 2000;
      top: 10px;
      right: -280px;
      padding: 6px;
      border: 1px rgba(0,0,0,.4) solid;
      background-color: white;

      -webkit-border-radius: 6px;
      -moz-border-radius: 6px;
      border-radius: 6px;

      -webkit-box-shadow: 1px 1px 5px 2px rgba(0, 0, 0, 0.2);
      -moz-box-shadow: 1px 1px 5px 2px rgba(0, 0, 0, 0.2);
      box-shadow: 1px 1px 5px 2px rgba(0, 0, 0, 0.2);
    }

    /* The Javascript code will set the aspect ratio of the crop
       area based on the size of the thumbnail preview,
       specified here */
    #preview-pane .preview-container {
      width: 250px;
      height: 170px;
      overflow: hidden;
    }

  </style>
  <script>
    var ctx = '${ctx }'
  </script>
</head>
<body>

  <div class="container">

    <div class="row" style="height: 600px;margin:0 auto; width: 600px">
      <div id="cover_upload_handle">
        <div id="jcrop-image-div" style="margin-bottom: 10px;"><img class="img-fluid" id="preview-image-custom" src="" /></div>
        <form id="cover_form" enctype="multipart/form-data">
          <input id="input-id" name="file" type="file" class="file" />
        </form>
        <div id="picture"></div>
        <div id="image-cut-params" style="display: none"></div>

        <div id="preview-pane" style="display: none">
          <div class="preview-container">
            <img src="" class="jcrop-preview" alt="Preview" />
          </div>
        </div>
      </div>
      <div id="cover_uploaded_show"><img class="img-fluid" id="cover_uploaded" src="" /></div>
      <button id="cover_reupload_button" onclick="reupload()" class="btn btn-primary" style="display: none; margin-top: 10px; height: 36px !important;">重新上传</button>
    </div>
  </div>

  <script type="text/javascript" src="${ctx }/resources/js/jquery-3.2.1.min.js"></script>
  <script type="text/javascript" src="${ctx }/resources/js/tether.min.js"></script>
  <script type="text/javascript" src="${ctx }/resources/js/bootstrap.min.js"></script>

  <script>
    $("button.fileinput-remove-button").on('click',function () {
      imageCut.attr('src', '')
    });
  </script>
  <!-- the main fileinput plugin file -->
  <script type="text/javascript" src="${ctx }/resources/fileinput/fileinput.js"></script>
  <script type="text/javascript" src="${ctx }/resources/fileinput/zh.js"></script>
  <script type="text/javascript" src="${ctx }/resources/fileinput/themes/explorer-fa/theme.js"></script>
  <script type="text/javascript" src="${ctx }/resources/fileinput/themes/fa/theme.js"></script>

  <script src="${ctx}/resources/js/jquery.Jcrop.js"></script>
  <script src="${ctx}/resources/js/exif.js"></script>
  <script src="${ctx}/resources/js/image.cut.js"></script>
  <%--<script>


    var uploadUrl = "/location/add_location_cover";
    initFileInput("input-id", uploadUrl, '请上传图片');

    //这些变量都是jcrop剪裁图片需要的
    var jcrop_api,boundx,boundy,
    // Grab some information about the preview pane
    $preview = $('#preview-pane'),
    $pcnt = $('#preview-pane .preview-container'),
    $pimg = $('#preview-pane .preview-container img'),

    xsize = $pcnt.width(),
    ysize = $pcnt.height();

    var imageCut = $('#preview-image-custom');

    function initFileInput(ctrlName, uploadUrl, tips) {

      $('#' + ctrlName).fileinput({
        language: 'zh', //设置语言
        uploadUrl: '${ctx}/upload', //上传的地址
        allowedFileExtensions: ['jpg', 'gif', 'png'],//接收的文件后缀
        showUpload: true, //是否显示上传按钮
        showCaption: false,//是否显示标题
        browseClass: "btn btn-primary", //按钮样式
        theme: "fa",
        // showPreview: false,
        validateInitialCount: true,
        dropZoneTitle:tips,
        enctype: 'multipart/form-data',
        maxFileCount: 1, //表示允许同时上传的最大文件个数
      }).on("fileimageloaded", function (event, previewId ) {

        $(".file-preview").hide();
        //将原生的fileinput的预览关闭
        var fileInputID = $('#' + previewId);
        var previewElement = $("#preview-image-custom");
        previewElement.attr('src',fileInputID.find('img.file-preview-image').attr("src"));  //设置待剪裁图片
        updatePreview([29, 208, 208, 0]);
        previewElement.css('width','370px');
        previewElement.css('height','208px');

        //将图片预览模块的图片加载出来
        previewElement.Jcrop({
          aspectRatio: 3 / 2,             //剪裁的长宽比
          setSelect: [29, 208, 208, 0],    //默认的剪裁区域
          onChange: updatePreview,
          onSelect: updatePreview

        },function(){
          // Use the API to get the real image size
          var bounds = this.getBounds();
          boundx = bounds[0];
          boundy = bounds[1];
          // Store the API in the jcrop_api variable
          jcrop_api = this;

          // Move the preview into the jcrop container for css positioning
          $preview.appendTo(jcrop_api.ui.holder);
        });

        $(".jcrop-preview").attr('src',fileInputID.find('img.file-preview-image').attr("src"));

        jcrop_api.setSelect([29, 208, 208, 0]);

      }).on('fileclear', function(event) {
        console.log("fileclear");
        $("#jcrop-image-div").html('<img class="img-fluid" id="preview-image-custom" src="" />');
        $(".file-preview").show()
      }).on( 'filepreupload', function (event, data) {    //在上传图片的时候，把剪切的结果的参数也上传一下

        var jcropHolder = $(".jcrop-holder");
        imageCutParam.scaleWidth = jcropHolder.css('width').replace("px","");
        imageCutParam.scaleHeight = jcropHolder.css('height').replace("px","");
        data.form.append("imageCutParams", JSON.stringify(imageCutParam));
      })
    }

    var imageCutParam;
    //更新预览区域的图片
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
  </script>--%>
</body>
</html>

