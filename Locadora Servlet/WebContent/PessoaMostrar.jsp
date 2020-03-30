<%@page import="javax.swing.JList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="models.Pessoa"%>
<%@page import="javax.swing.DefaultListModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>Relatório de pessoas</title>
  </head>
  <body>
     <table class="table table-striped table-dark">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Nome</th>
      <th scope="col">Sobrenome</th>
      <th scope="col">CNH</th>
      <th scope="col">Categoria</th>
      <th scope="col">Nascimento</th>
      <th scope="col">Telefone</th>
      <th scope="col">Email</th>
      <th scope="col">Logradouro</th>
      <th scope="col">Complemento</th>
      <th scope="col">CEP</th>
      <th scope="col">Cidade</th>
      <th scope="col">Estado</th>
    </tr>
  </thead>
  <tbody>
     <% 
 
	 List <Pessoa> pessoas;
	 if (session.getAttribute("pessoas") == null){
		  pessoas = new ArrayList<Pessoa>();
		  session.setAttribute("pessoas", pessoas);
	 }else
		  pessoas = (ArrayList)session.getAttribute("pessoas");	
 
 
   for(int i = 0; i < pessoas.size(); i++){
   	Pessoa pes = (Pessoa) pessoas.get(i);
   	%><tr><th scope="row"><%out.print(i);%></th><%
   	%><td><% out.print(pes.getNome());%></td><% 
   	%><td><% out.print(pes.getSobrenome());%></td><%
   	%><td><% out.print(pes.getCnh());%></td><%
   	%><td><% out.print(pes.getCategoria());%></td><%
   	%><td><% out.print(pes.getDataNascimento());%></td><%
   	%><td><% out.print(pes.getTelefone());%></td><%
   	%><td><% out.print(pes.getEmail());%></td><% 
   	%><td><% out.print(pes.getLogradouro()); %></td><%
   	%><td><% out.print(pes.getComplemento());%></td><%
   	%><td><% out.print(pes.getCep());%></td><%
   	%><td><% out.print(pes.getCidade());%></td><% 
   	%><td><% out.print(pes.getEstado());%></td></tr><% 

   
   } %>
   
  </tbody>
</table>
   
   <a href="Index.jsp"> <button type="button" class="btn btn-secondary">Voltar</button></a>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  </body>
</html>