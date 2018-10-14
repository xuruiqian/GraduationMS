package com.gt.server;

import com.gt.webservices.contract.IHelloService;
import com.gt.webservices.implementation.HelloService;

import javax.xml.ws.Endpoint;
import java.io.*;

public class Server {
    public static void main(String[] args) {
        InputStream is = System.in;
        OutputStream os = System.out;

        try {
            //create and publish an endPoint
            IHelloService hello = new HelloService();
            Endpoint endPoint = Endpoint.publish("http://localhost:8080/hw", hello);
        } catch (Exception e) {
            e.printStackTrace();
        }

        try {
            while (true) {
                String console = "com.gt.server.shell>";
                os.write(console.getBytes());
                BufferedReader br = new BufferedReader(new InputStreamReader(is));
                String inputStr = br.readLine();
                os.write(inputStr.getBytes());

                if (inputStr.toUpperCase().equals("EXIT")) {
                    os.write(("Exiting...").getBytes());
                    break;
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}