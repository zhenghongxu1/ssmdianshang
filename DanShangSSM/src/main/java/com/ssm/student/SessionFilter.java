package com.ssm.student;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.filter.OncePerRequestFilter;

public class SessionFilter extends OncePerRequestFilter{

	@Override
	protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
			throws ServletException, IOException {
	       request.getSession().setAttribute("loginedUser", "ssss");
        // 涓嶈繃婊ょ殑uri
        String[] notFilter = new String[] { "login.jsp","face.jsp","faceLogin.jsp","login1.jsp", "index.jsp","Map.jsp","newPassword.html","register.jsp","/DanShangSSM/newPassword.jsp","NewFile.jsp"};
        // 璇锋眰鐨剈ri
        String uri = request.getRequestURI();
       System.out.println(uri);
        // uri涓寘鍚玝ackground鏃舵墠杩涜杩囨护showall
        if (uri.indexOf(".jsp") != -1 || uri.indexOf(".html") != -1 ||uri.indexOf("showall") != -1) {
            // 鏄惁杩囨护
            boolean doFilter = true;
            for (String s : notFilter) {
                if (uri.indexOf(s) != -1) {
                    // 濡傛灉uri涓寘鍚笉杩囨护鐨剈ri锛屽垯涓嶈繘琛岃繃婊�
                    doFilter = false;
                    break;
                }
            }
            if (doFilter) {
                // 鎵ц杩囨护
                // 浠巗ession涓幏鍙栫櫥褰曡�呭疄浣�
                Object obj = request.getSession().getAttribute("yonghu");
                if (null == obj) {
                    // 濡傛灉session涓笉瀛樺湪鐧诲綍鑰呭疄浣擄紝鍒欏脊鍑烘鎻愮ず閲嶆柊鐧诲綍
                    // 璁剧疆request鍜宺esponse鐨勫瓧绗﹂泦锛岄槻姝贡鐮�
                    request.setCharacterEncoding("UTF-8");
                    response.setCharacterEncoding("UTF-8");
                    response.setContentType("text/html");
                    PrintWriter out = response.getWriter();
                    String loginPage = "login-old.jsp";
                    StringBuilder builder = new StringBuilder();
                    builder.append("<script type=\"text/javascript\">");
                    builder.append("alert('页面过期，请重新登陆');");
                    builder.append("window.top.location.href='");
                    builder.append("/DanShangSSM/login.jsp");
                    builder.append("';");
                    builder.append("</script>");
                    out.print(builder.toString());
                } else {
                    // 濡傛灉session涓瓨鍦ㄧ櫥褰曡�呭疄浣擄紝鍒欑户缁�
                    filterChain.doFilter(request, response);
                }
            } else {
                // 濡傛灉涓嶆墽琛岃繃婊わ紝鍒欑户缁�
                filterChain.doFilter(request, response);
            }
        } else {
            // 濡傛灉uri涓笉鍖呭惈background锛屽垯缁х画
            filterChain.doFilter(request, response);
        }
		
	}

}
