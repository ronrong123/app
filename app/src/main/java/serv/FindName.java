package serv;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FindName extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public FindName() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//id 파라미터에 해당하는 이름을 검색해서 리턴
		try {
			Thread.sleep(2000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.setContentType("text/html; charset=UTF-8");
		String id = request.getParameter("userid");
		if(id.equals("admin")) {
			response.getWriter().append("관리자");
		}else {
			response.getWriter().append("사용자");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
