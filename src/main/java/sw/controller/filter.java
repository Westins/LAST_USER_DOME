package sw.controller;


import sw.pojo.user;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter("/*")
public class filter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("初始化过滤器！");
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        HttpSession session = request.getSession();
        String url = request.getServletPath();
        session.setAttribute("url", "index");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        System.out.println("访问路径:" + url);
        if (url.indexOf("index.jsp") != -1) {
            request.getRequestDispatcher("goods/indexView.do").forward(request, response);
        }
        if (url.indexOf("gouwuche.jsp") != -1) {
            if (session.getAttribute("userSession") == null) {
                session.setAttribute("url", "gouwuche");
                request.getRequestDispatcher("/login.jsp").forward(request, response);
            }
        }
        if (url.indexOf("/order.jsp") != -1) {
            if (session.getAttribute("userSession") == null) {
                if (session.getAttribute("sCartIds") == null) {
                    session.setAttribute("url", "gouwuche");
                } else {
                    session.setAttribute("url", "order");
                }
                request.getRequestDispatcher("/login.jsp").forward(request, response);
            } else {
                System.out.println("用户已登录");
                if (session.getAttribute("sCartIds") == null) {
                    request.getRequestDispatcher("/gouwuche.jsp").forward(request, response);
                } else {
                    System.out.println("1122233");
                    request.getRequestDispatcher("/address/orderView.do").forward(request, response);
                }
            }
        }
        if (url.indexOf("/my_order.jsp") != -1) {
            if (session.getAttribute("userSession") == null) {
                session.setAttribute("url", "my_order");
                request.getRequestDispatcher("/login.jsp").forward(request, response);
            }
        }
        filterChain.doFilter(servletRequest, servletResponse);//放行
    }

    @Override
    public void destroy() {
        System.out.println("销毁过滤器！");
    }
}
