package demo.mine.mapper;

import demo.mine.pojo.Msg;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by Already on 2016/9/17.
 */
public interface MsgMapper {
    List<Msg> listAllMsgs(@Param("size") Integer size);

    void insertMsg(Msg msg);
}
