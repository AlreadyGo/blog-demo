package demo.mine.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import demo.mine.exception.BizException;
import demo.mine.pojo.Constants;
import demo.mine.pojo.RespInfo;
import org.apache.log4j.Logger;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author zhou
 * @Description:
 * @date 2017/4/11 13:53
 * @jdk v1.7
 */
@ControllerAdvice
public class GlobalController {
    private Logger logger = Logger.getLogger(this.getClass());
    private ObjectMapper mapper = new ObjectMapper();



    @ExceptionHandler(Exception.class)
    @ResponseBody
    public RespInfo handleException(Exception ex) {
        logger.error(String.format("%s--inner error:", Thread.currentThread().getName()), ex);
        String message = "系统繁忙,请稍后再试";
        if (ex instanceof BizException) {
            message = ex.getMessage();
        }
        return new RespInfo(Constants.FAILURE_STATUS, message, ex.getLocalizedMessage());
    }
}
