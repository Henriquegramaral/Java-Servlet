package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.joda.time.DateTime;
import org.joda.time.Days;

import models.Carro;
import models.Locacao;

@WebServlet("/DevolucaoInsert")
public class DevolucaoInsert extends HttpServlet {

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
	 
	 Float vllocacao;	
	 
     vllocacao = Float.parseFloat("0");
 
 	  List<Locacao> locacoes;
   if (req.getSession().getAttribute("locacoes") == null){
 	  locacoes = new ArrayList<Locacao>();
 	  req.getSession().setAttribute("locacoes", locacoes);
   }else
 	  locacoes = (ArrayList)req.getSession().getAttribute("locacoes");	
   
   List <Carro> carros;
   if (req.getSession().getAttribute("carros") == null){
 	  carros = new ArrayList<Carro>();
 	  req.getSession().setAttribute("carros", carros);
   }else
 	  carros = (ArrayList)req.getSession().getAttribute("carros");   
   
   
   for(int i = 0; i< carros.size(); i++){
	   Carro car = (Carro) carros.get(i);
	   if(req.getParameter("locacao").equals(car.getNome())){
		car.setFllocado(0);	
		vllocacao = car.getLocacao();
	   }
   } 
   
   for(int i = 0; i< locacoes.size(); i++){
	   Locacao loc = (Locacao) locacoes.get(i);
	   if(req.getParameter("locacao").equals(loc.getCarro()) && loc.getFldevolvido() == 0){
			Calendar datainicial = new GregorianCalendar();
			datainicial.setTime(loc.getDataestimada());
			Calendar datafinal = new GregorianCalendar();
			datafinal.setTime(new Date());
			long dias = ((datafinal.getTimeInMillis() - datainicial.getTimeInMillis()) / (24*60*60*1000));
			
		   
		   if(dias > 0)
		   {
			 loc.setValormulta(dias * (((vllocacao * 25)/100) + vllocacao));  
			 loc.setValorpago((dias * (((vllocacao * 25)/100) + vllocacao)) + loc.getValorcobrado());
		   }else{
			 loc.setValormulta(Float.parseFloat("0"));
			 loc.setValorpago(loc.getValorcobrado());
		   } 
		  loc.setFldevolvido(1);
		  loc.setDatadevolucao((new Date()));
		  req.setAttribute("aux", "Devolução realizada com sucesso.");
	   }
   } 
   
   
	//req.setAttribute(GREETING_REQUEST_PARAMETER_KEY, greeting);
	req.getRequestDispatcher("Devolucao.jsp").forward(req, resp);
	
	}}

