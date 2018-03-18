package org.test.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.test.utils.ImageUtils;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.UUID;

@Controller
public class FileUploadController {

  @RequestMapping("/file-upload")
  public ModelAndView fileUploadPage(){
    return new ModelAndView("fileupload");
  }

  @RequestMapping("/upload")
  public @ResponseBody JSONObject upLoadFile( @RequestParam("file") MultipartFile[] files, HttpServletRequest request, String imageCutParams){

    System.out.println("imageCutParams:"+imageCutParams);

    String originalFileName = files[0].getOriginalFilename();
    String saveFileName = UUID.randomUUID() + "." + originalFileName.substring(originalFileName.lastIndexOf(".")+1);
    String savePath = request.getSession().getServletContext().getRealPath("/resources/files");
    System.out.println("save path:"+savePath +"/" +saveFileName);
    File file = new File(savePath, saveFileName);
    try {
      FileUtils.writeByteArrayToFile(file, files[0].getBytes());
    } catch (IOException e) {
      e.printStackTrace();
    }

    JSONObject imgCutParams = JSON.parseObject(imageCutParams);
    //开始剪裁图片
    try {
      if( ImageUtils.imgCut(savePath +"/"+ saveFileName, savePath +"/"+ saveFileName,
              imgCutParams.getInteger("x"),
              imgCutParams.getInteger("y"),
              imgCutParams.getInteger("w"),
              imgCutParams.getInteger("h"),
              imgCutParams.getInteger("scaleWidth"),
              imgCutParams.getInteger("scaleHeight")) ){

        System.out.println("剪裁成功！");
      }
    } catch (Exception e) {
      System.out.println("剪裁失败！");
      e.printStackTrace();
    }
    return null;
  }

}
