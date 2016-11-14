package demo.mine.service;

import demo.mine.pojo.Msg;

import java.util.List;

/**
 * Created by Already on 2016/9/17.
 */
public interface MsgService {

    List<Msg> listAllMsgs(Integer size);

    void insertMsg(Msg msg);
}
