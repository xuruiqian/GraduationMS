package com.gt.webservices.implementation;


import com.gt.webservices.contract.IHelloService;

import javax.jws.WebService;
import javax.jws.soap.SOAPBinding;

@SOAPBinding(style = SOAPBinding.Style.RPC)
@WebService(endpointInterface = "com.gt.webservices.contract.IHelloService",serviceName = "hello")
public class HelloService implements IHelloService {

    @Override
    public String sayHello(String userName) {
        return "Hello ," + userName;
    }
}