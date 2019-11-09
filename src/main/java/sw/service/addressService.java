package sw.service;

import sw.pojo.address;

import java.util.List;
import java.util.Map;

public interface addressService {
    int insAddress(Map<Object, Object> map);

    List<address> selAddressById(int userId);

    int delAddressByaId(int aId);

    int updAddressByaId(address address);
}
