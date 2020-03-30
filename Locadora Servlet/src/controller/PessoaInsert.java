package controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Pessoa;

@WebServlet("/PessoaInsert")
public class PessoaInsert extends HttpServlet {

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
	
	  Integer aux = 0;

	  Pessoa p = new Pessoa();
	  SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
	  p.setNome(req.getParameter("nome"));
	  p.setSobrenome(req.getParameter("sobrenome"));
	  p.setCnh(req.getParameter("cnh"));
	  p.setCategoria(req.getParameter("categoria"));
	  p.setTelefone(req.getParameter("telefone"));
	  p.setEmail(req.getParameter("email"));
	  p.setLogradouro(req.getParameter("logradouro"));
	  p.setComplemento(req.getParameter("complemento"));
	  p.setCep(req.getParameter("cep"));
	  p.setCidade(req.getParameter("cidade"));
	  p.setEstado(req.getParameter("estado"));
	  try {
		p.setNascimento(format.parse(req.getParameter("nascimento")));
	} catch (ParseException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

	  
	  List<Pessoa> pessoas;
	  if (req.getSession().getAttribute("pessoas") == null){
		  pessoas = new ArrayList<Pessoa>();
		  req.getSession().setAttribute("pessoas", pessoas);
	  }else
		  pessoas = (ArrayList)req.getSession().getAttribute("pessoas");
	  
	  if(pessoas.size() == 0) {
		  pessoas.add(p);
		  req.setAttribute("aux", "Pessoa cadastrada com sucesso.");
	  }else {
	  
	  for(int i = 0; i < pessoas.size(); i++) {
		  Pessoa pes = (Pessoa) pessoas.get(i);
		  if(pes.getNome().equals(req.getParameter("nome"))) {
			 aux = 1;
			 req.setAttribute("aux", "Já existe uma pessoa com este nome cadastrada.");}
		     }
	   
	      if(aux == 0) {
		  pessoas.add(p);
		  req.setAttribute("aux", "Pessoa cadastrada com sucesso.");}
	  
	  }
	      
	 
	     
	      
			//req.setAttribute(GREETING_REQUEST_PARAMETER_KEY, greeting);
			req.getRequestDispatcher("CadastroPessoa.jsp").forward(req, resp);	      
	 

}}
