package edu.etime.electronicmall.dao;

import edu.etime.electronicmall.entities.Payment;

public interface PaymentMapper {
    int deleteByPrimaryKey(String payid);

    int insert(Payment record);

    int insertSelective(Payment record);

    Payment selectByPrimaryKey(String payid);

    int updateByPrimaryKeySelective(Payment record);

    int updateByPrimaryKey(Payment record);
}