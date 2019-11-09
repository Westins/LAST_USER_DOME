package sw.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import sw.dao.addressMapper;
import sw.pojo.address;
import sw.service.addressService;

import java.util.List;
import java.util.Map;

@Service
public class addressServiceImpl implements addressService {

    @Autowired
    private addressMapper addressMapper;

    @Override
    public int insAddress(Map<Object, Object> map) {
        return addressMapper.insAddress(map);
    }

    @Override
    public List<address> selAddressById(int userId) {
        return addressMapper.selAddressById(userId);
    }

    @Override
    public int delAddressByaId(int aId) {
        return addressMapper.delAddressByaId(aId);
    }

    @Override
    public int updAddressByaId(address address) {
        return addressMapper.updAddressByaId(address);
    }
}
