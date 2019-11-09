package sw.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import sw.dao.orderMapper;
import sw.pojo.all;
import sw.pojo.order;
import sw.service.orderService;

import java.util.List;

@Service
public class orderServiceImpl implements orderService {

    @Autowired
    private orderMapper orderMapper;

    @Override
    public int insOrders(order order) {
        return orderMapper.insOrders(order);
    }

    @Override
    public List<order> selOrderByuId(int userId) {
        return orderMapper.selOrderByuId(userId);
    }

    @Override
    public List<all> selALl(int userId) {
        return orderMapper.selALl(userId);
    }
}
