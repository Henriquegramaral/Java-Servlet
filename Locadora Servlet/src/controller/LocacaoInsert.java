package controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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

import models.Carro;
import models.Locacao;

@WebServlet("/LocacaoInsert")
public class LocacaoInsert extends HttpServlet {

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
	
	   String nomecarro;  
	   Float vllocacao;
	   SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
	   
	   vllocacao = Float.parseFloat("0");
	   
	   List<Carro> carros;
	   if (req.getSession().getAttribute("carros") == null){
	  	  carros = new ArrayList<Carro>();
	  	  req.getSession().setAttribute("carros", carros);
	   }else
		  carros = (ArrayList)req.getSession().getAttribute("carros");
	   
	   nomecarro = req.getParameter("carro");
	   
	   
	   for(int i=0; i < carros.size(); i++){
		   Carro car = (Carro) carros.get(i);
		   if(nomecarro.equals(car.getNome())){
			   car.setFllocado(1);
			   vllocacao = car.getLocacao();}
		   }
	   

		
	    Calendar datainicial = new GregorianCalendar();
		try {
			datainicial.setTime(format.parse(req.getParameter("data")));
		} catch (ParseException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		Calendar datafinal = new GregorianCalendar();
		try {
			datafinal.setTime(format.parse(req.getParameter("dataestimada")));
		} catch (ParseException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		long dias = ((datafinal.getTimeInMillis() - datainicial.getTimeInMillis()) / (24*60*60*1000));
	   
	    vllocacao = (vllocacao * dias);
	   
	  
	   Locacao l = new Locacao();
	   l.setUsuario(req.getParameter("usuario"));
	   l.setCarro(req.getParameter("carro"));
	   try {
		l.setData(format.parse(req.getParameter("data")));
	} catch (ParseException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}   
	   try {
		l.setDataestimada(format.parse(req.getParameter("dataestimada")));
	} catch (ParseException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   l.setDatadevolucao(null);
	   l.setValorcobrado(vllocacao);
	   l.setValorpago(null);
	   l.setValormulta(null);
	   l.setFldevolvido(0);
	   
	   List <Locacao> locacoes;
	   if (req.getSession().getAttribute("locacoes") == null){
	 	  locacoes = new ArrayList<Locacao>();
	 	  req.getSession().setAttribute("locacoes", locacoes);
	   }else
	 	  locacoes = (ArrayList)req.getSession().getAttribute("locacoes");	
	   	  
	       locacoes.add(l);
	       req.setAttribute("aux", "Locação efetuada com sucesso");
	       
			//req.setAttribute(GREETING_REQUEST_PARAMETER_KEY, greeting);
			req.getRequestDispatcher("Locacao.jsp").forward(req, resp);

}}
