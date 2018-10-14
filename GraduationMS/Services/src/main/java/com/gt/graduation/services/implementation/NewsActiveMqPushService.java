package com.gt.graduation.services.implementation;


import com.alibaba.fastjson.JSON;
import com.gt.demo.DataRepository.Entities.News;
import com.gt.graduation.services.contract.IActiveMqPushService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jms.core.JmsTemplate;
import org.springframework.jms.core.MessageCreator;
import org.springframework.stereotype.Service;

import javax.jms.Destination;
import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.Session;

@Service("newsPushService")
public class NewsActiveMqPushService implements IActiveMqPushService {

	@Autowired
	private JmsTemplate jmsTemplate;
	
	@Autowired
	@Qualifier("newsServiceQueue")
	private Destination destination;
	
	@Override
	public void push(final Object info) {
		pushExecutor.execute(new Runnable() {
			@Override
			public void run() {
				jmsTemplate.send(destination, new MessageCreator() {
					public Message createMessage(Session session) throws JMSException {
						 News p = (News) info;
						return session.createTextMessage(JSON.toJSONString(p));
					}
				});
			}			
		});
	}
}