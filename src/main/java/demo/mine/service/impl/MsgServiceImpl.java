package demo.mine.service.impl;

import demo.mine.mapper.MsgMapper;
import demo.mine.pojo.Msg;
import demo.mine.service.MsgService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Already on 2016/9/17.
 */
@Service
public class MsgServiceImpl implements MsgService {
    @Resource
    private MsgMapper msgMapper;

    public List<Msg> listAllMsgs(Integer size) {
        return msgMapper.listAllMsgs(size);
    }

    public void insertMsg(Msg msg) {
        msgMapper.insertMsg(msg);
    }
}
