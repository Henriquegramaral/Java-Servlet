package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Carro;

@WebServlet("/CarroInsert")
public class CarroInsert extends HttpServlet {

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
	

	   Integer aux;	
	   Float precof;
	   Float locacaof;
	   precof = Float.parseFloat(req.getParameter("preco"));
	   locacaof = Float.parseFloat(req.getParameter("locacao"));
	   Carro c = new Carro();
	   c.setNome(req.getParameter("nome"));
	   c.setMarca(req.getParameter("marca"));
	   c.setModelo(req.getParameter("modelo"));
	   c.setPreco(precof);
	   c.setLocacao(locacaof);
	   c.setFllocado(0);
	   
	   aux = 0;
	   
	   List <Carro> carros;
	   if (req.getSession().getAttribute("carros") == null){
	 	  carros = new ArrayList<Carro>();
	 	  req.getSession().setAttribute("carros", carros);
	   }else
	 	  carros = (ArrayList)req.getSession().getAttribute("carros");	
	   
	   if(carros.size() == 0){
		   carros.add(c);
		   req.setAttribute("aux", "Carro cadastrado com sucesso");
	   }
	   
	   else{
	   
	   for(int i = 0; i < carros.size(); i++){
		   Carro car = (Carro) carros.get(i);
		   if(req.getParameter("nome").equals(car.getNome())){
			  aux = 1;
			  req.setAttribute("aux", "Este veículo já está cadastrado.");
		   }}
	   
	   
	   if(aux == 0){
		   carros.add(c);
		   req.setAttribute("aux", "Carro cadastrado com sucesso");
	     }}
	   
	    
	   
		//req.setAttribute(GREETING_REQUEST_PARAMETER_KEY, greeting);
		req.getRequestDispatcher("CadastroCarro.jsp").forward(req, resp);}}

