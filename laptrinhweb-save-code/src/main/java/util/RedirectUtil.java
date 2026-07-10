package util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class RedirectUtil {

    public static void sendRelativeRedirect(HttpServletRequest request, HttpServletResponse response, String target)
            throws IOException {
        String redirectPath = target;
        if (!redirectPath.startsWith("/")) {
            redirectPath = request.getContextPath() + "/" + redirectPath;
        }
        response.setHeader("Location", redirectPath);
        response.setStatus(HttpServletResponse.SC_FOUND);
    }
}
