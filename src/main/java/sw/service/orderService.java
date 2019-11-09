package sw.service;

import sw.pojo.all;
import sw.pojo.order;

import java.util.List;

public interface orderService {
    int insOrders(order order);

    List<order> selOrderByuId(int userId);

    List<all> selALl(int userId);
}
