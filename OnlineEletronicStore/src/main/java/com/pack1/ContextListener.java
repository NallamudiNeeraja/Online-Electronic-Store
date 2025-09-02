package com.pack1;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
@WebListener
public class ContextListener implements ServletContextListener,ServletContextAttributeListener
{
	@Override
public void contextInitialized(ServletContextEvent sce)
{
	System.out.println("Context object cretated");
	ServletContext context=sce.getServletContext();
	System.out.println("Your Application is deployed into :"+context.getServerInfo());
}
	@Override	
public void contextDestroyed(ServletContextEvent sce)
{
	System.out.println("context object destroyed");	
}
public void attributeAdded(ServletContextAttributeEvent scae)
{
	System.out.println("Attribute added");
	String name=scae.getName();
	System.out.println("Attribute Name :"+name);
}
}
