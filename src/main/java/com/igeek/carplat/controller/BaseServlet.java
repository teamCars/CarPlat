package com.igeek.carplat.controller;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/**
 * @version 1.0
 * @Description TODO
 * @Author sunziwei
 * @Date 2021/6/6 18:57
 */
public class BaseServlet extends HttpServlet {
    @Override
    public void service(HttpServletRequest request, HttpServletResponse response){
        //获取请求参数
        String methodName = request.getParameter("method");
        //获取当前类类型
        Class<? extends BaseServlet> clazz = this.getClass();

        try {
            //根据请求参数获得方法
            Method method = clazz.getDeclaredMethod(methodName, HttpServletRequest.class, HttpServletResponse.class);
            //实行方法
            method.invoke(this, request, response);
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }

    }
}
