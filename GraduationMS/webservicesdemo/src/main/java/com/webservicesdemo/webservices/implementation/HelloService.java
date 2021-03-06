package com.webservicesdemo.webservices.implementation;

import com.webservicesdemo.webservices.contract.IHelloService;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.jws.WebService;
import javax.jws.soap.SOAPBinding;

@SOAPBinding(style = SOAPBinding.Style.RPC)
@WebService(endpointInterface = "com.webservicesdemo.webservices.contract.IHelloService",serviceName = "hello")
public class HelloService implements IHelloService {

    //定义一个全局的记录器，通过LoggerFactory获取
    private static final Logger logger = LoggerFactory.getLogger(HelloService.class);

    @Override
    public String sayHello(String userName) {
        logger.info("new connect,params: userName = "+userName);
        return "Hello ," + userName;
    }

    @Test
    public void Test() {
        logger.info("logback 成功了");
        logger.error("logback 成功了");
    }
}