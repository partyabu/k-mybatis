package com.abucloud.mapper;

import com.abucloud.bo.UserInfoBO;

import java.util.List;

/**
 * <p>
 * 用户信息表  Mapper 接口
 * </p>
 *
 * @author liukang
 * @since 2021-08-22
 */
public interface UserInfoMapper {

    List<UserInfoBO> selectList();
}
