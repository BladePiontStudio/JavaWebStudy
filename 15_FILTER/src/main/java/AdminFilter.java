import javax.servlet.*;
import java.io.IOException;

public class AdminFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
        System.out.println("AdminFilter.init");
    }

    public void destroy() {
        System.out.println("AdminFilter.destroy");
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        System.out.println("AdminFilter.doFilter");
        chain.doFilter(request, response);
    }
}
