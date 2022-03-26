package com.abucloud;

import com.abucloud.bo.UserInfoBO;
import com.abucloud.mapper.UserInfoMapper;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/**
 * @Description:
 * @Author party-abu
 * @Date 2022/3/23 21:21
 */
public class TestKMybatis {

    private SqlSessionFactory sqlSessionFactory;
    private InputStream inputStream;

    @Before
    public void beforeTest() {
        String resource = "mybatis-config.xml";
        try {
            inputStream = Resources.getResourceAsStream(resource);
        } catch (IOException e) {
            e.printStackTrace();
        }
        sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
    }

    @After
    public void afterTest() {
        try {
            inputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    @Test
    public void test01() {
        SqlSession sqlSession = sqlSessionFactory.openSession();
        UserInfoMapper userInfoMapper = sqlSession.getMapper(UserInfoMapper.class);
        List<UserInfoBO> tbUserInfo = userInfoMapper.selectList();
        System.out.println(tbUserInfo);
        sqlSession.close();
    }
}
