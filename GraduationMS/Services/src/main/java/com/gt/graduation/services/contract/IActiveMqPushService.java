package com.gt.graduation.services.contract;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public interface IActiveMqPushService {
    public final ExecutorService pushExecutor = Executors.newFixedThreadPool(10);
    public void push(Object info);
}
