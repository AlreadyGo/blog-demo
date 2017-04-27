package demo.mine.pojo;

import java.util.regex.Pattern;

/**
 * @author zhou
 * @Description:
 * @date 2017/3/1 11:04
 * @jdk v1.7
 */
public interface Constants {
    int SUCCESS_STATUS = 0;
    int FAILURE_STATUS = -1;
    int PART_FAILURE_STATUS = -2;
    Pattern picPattern = Pattern.compile("^\\S.*(.jp.?g|.JPG|.JPEG|.png|.bmp)$");
    long ONE_M = 1024 * 1024;
}
