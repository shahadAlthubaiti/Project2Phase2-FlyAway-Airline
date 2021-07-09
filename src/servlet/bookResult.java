package servlet;

import java.io.IOException;

import java.time.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.model.search;

public class bookResult extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public bookResult() {
        super();
    }

    @Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	search.date=request.getParameter("date");
    	search.day=request.getParameter("day");
    	search.source=request.getParameter("source");
    	search.destination=request.getParameter("destination");
    	search.passengers=Integer.parseInt(request.getParameter("passengers"));
    	
    	response.sendRedirect("book-result.jsp");
	}
    
    public String getDay(String dateInp)
    {
    	LocalDate ld= LocalDate.parse("dateInp");
    	
    	return ld.getDayOfWeek().toString();
    	}

}
