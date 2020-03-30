package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Carro;
@WebServlet("/AlteraCarroInsert")
public class AlteraCarroInsert extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(final HttpServletRequest req, final HttpServletResponse resp) throws ServletException, IOException {

		handleRequest(req, resp);
	}

	protected void doPost(final HttpServletRequest req, final HttpServletResponse resp)
			throws ServletException, IOException {

		handleRequest(req, resp);
	}

	private void handleRequest(final HttpServletRequest req, final HttpServletResponse resp)
			throws ServletException, IOException {

	   List<Carro> carros;
	   if (req.getSession().getAttribute("carros") == null){
	 	  carros = new ArrayList<Carro>();
	 	  req.getSession().setAttribute("carros", carros);
	   }else
	 	  carros = (ArrayList)req.getSession().getAttribute("carros");	
	   
	 
	   
	   
	   for(int i = 0; i < carros.size(); i++){
		   Carro car = (Carro) carros.get(i);
	   	   if(req.getParameter("carro").equals(car.getNome())){
	   		   car.setLocacao(Float.parseFloat(req.getParameter("locacao")));
	   	   }
	   }
	   
	   req.setAttribute("aux", "Alteração realizada com sucesso.");
		   
		//req.setAttribute(GREETING_REQUEST_PARAMETER_KEY, greeting);
		req.getRequestDispatcher("AlteraCarro.jsp").forward(req, resp);

}}
