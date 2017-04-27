package demo.mine.exception;

/**
 * @author zhou
 * @Description:业务异常
 * @date 2017/4/11 13:55
 * @jdk v1.7
 */
public class BizException extends RuntimeException {
    public BizException(String message) {
        super(message);
    }

    public BizException(String message, Throwable cause) {
        super(message, cause);
    }

    public BizException(Throwable cause) {
        super(cause);
    }
}
