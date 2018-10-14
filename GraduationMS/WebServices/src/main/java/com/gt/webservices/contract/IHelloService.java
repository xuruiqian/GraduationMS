package com.gt.webservices.contract;

import javax.jws.WebParam;
import javax.jws.WebService;
import javax.jws.WebMethod;

@WebService
public interface IHelloService {

    @WebMethod
    String sayHello(@WebParam(name = "userName") String userName);
}