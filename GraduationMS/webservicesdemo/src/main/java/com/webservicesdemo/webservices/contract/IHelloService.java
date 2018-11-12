package com.webservicesdemo.webservices.contract;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;
import javax.jws.soap.SOAPBinding;

@WebService
@SOAPBinding(style = SOAPBinding.Style.RPC)
public interface IHelloService {

    @WebMethod
    String sayHello(@WebParam(name = "userName") String userName);
}