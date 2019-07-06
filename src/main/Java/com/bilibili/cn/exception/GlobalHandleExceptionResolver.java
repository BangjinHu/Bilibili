package com.bilibili.cn.exception;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GlobalHandleExceptionResolver implements HandlerExceptionResolver {

    private static Logger LOG = Logger.getLogger(GlobalHandleExceptionResolver.class);
    private static final int USER_EXCEPTION_CODE = 1;
    private static final int OTHER_EXCEPTION_CODE = 2;

    @Override
    public ModelAndView resolveException(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception ex) {
        ModelAndView mv = new ModelAndView("error");
        if (ex instanceof UserException){
            mv.addObject("message", ex.getMessage());
            mv.addObject("code", USER_EXCEPTION_CODE);
            LOG.error("用户异常" + ex.getMessage(), ex);
        }else {
            mv.addObject("message", "未知异常");
            mv.addObject("code", OTHER_EXCEPTION_CODE);
            LOG.error("未知异常" + ex.getMessage(), ex);
        }
        return mv;
    }
}
