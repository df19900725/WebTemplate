package org.test.utils;

import org.apache.commons.dbutils.QueryRunner;
import org.springframework.stereotype.Component;

import com.alibaba.druid.pool.DruidDataSource;

/**
 * 
 * ClassName: MyQueryRunnerUtil <br/>
 * Function: TODO 获取QueryRunner对象<br/>
 * Reason: TODO 单例模式 <br/>
 * date: 2015�?10�?28�? 下午8:53:01 <br/>
 *
 * @author ZhangXu
 * @version
 */

@Component
public final class MyQueryRunnerUtil {

  private static DruidDataSource dataSource;

  public DruidDataSource getDataSource() {
    return dataSource;
  }

  public void setDataSource(DruidDataSource dataSource) {
    MyQueryRunnerUtil.dataSource = dataSource;
  }

  static QueryRunner qr;

  public static QueryRunner getQueryRunner() {
    if (qr == null) {
      qr = new QueryRunner(dataSource);
    }
    return qr;
  }

}
