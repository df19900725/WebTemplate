package org.test.utils;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.awt.image.CropImageFilter;
import java.awt.image.FilteredImageSource;
import java.awt.image.ImageFilter;
import java.io.File;

public class ImageUtils {

  /**
   * 截图工具，根据截取的比例进行缩放裁剪
   *
   * @param originalPath        待剪裁图片路径
   * @param newPath     剪裁后图片路径
   * @param zoomX       缩放后的X坐标
   * @param zoomY       缩放后的Y坐标
   * @param zoomW       缩放后的截取宽度
   * @param zoomH       缩放后的截取高度
   * @param scaleWidth  缩放后图片的宽度
   * @param scaleHeight 缩放后的图片高度
   * @return 是否成功
   * @throws Exception 任何异常均抛出
   */
  public static boolean imgCut(String originalPath, String newPath, int zoomX, int zoomY, int zoomW,
                               int zoomH, int scaleWidth, int scaleHeight) throws Exception {
    Image img;
    ImageFilter cropFilter;
    BufferedImage bi = ImageIO.read(new File(originalPath));
    int fileWidth = bi.getWidth();
    int fileHeight = bi.getHeight();
    double scale = (double) fileWidth / (double) scaleWidth;

    double realX = zoomX * scale;
    double realY = zoomY * scale;
    double realW = zoomW * scale;
    double realH = zoomH * scale;
    System.out.println("file width:"+fileWidth+"\t"+realW);
    if (fileWidth >= realW && fileHeight >= realH) {
      Image image = bi.getScaledInstance(fileWidth, fileHeight, Image.SCALE_DEFAULT);
      cropFilter = new CropImageFilter((int) realX, (int) realY, (int) realW, (int) realH);
      img = Toolkit.getDefaultToolkit().createImage(
              new FilteredImageSource(image.getSource(), cropFilter));
      BufferedImage bufferedImage = new BufferedImage((int) realW, (int) realH, BufferedImage.TYPE_INT_RGB);
      Graphics g = bufferedImage.getGraphics();
      g.drawImage(img, 0, 0, null);
      g.dispose();
      System.out.println("why");
      //输出文件
      return ImageIO.write(bufferedImage, "JPEG", new File(newPath));
    } else {
      return true;
    }
  }

  public static void main(String[] args) throws Exception {

    String imagePath = "D:\\OneDrive\\Programs\\20170831\\WebTemplate\\target\\WebTemplate-0.0.1-SNAPSHOT\\resources\\files/f7a329ec-549c-4926-a8e6-33d38aa0feaa.jpg";
//    imgCut(imagePath, 29,0,226,131,197,131);
    imgCut(imagePath, imagePath,29,0,197,131,370,208);
  }

}
