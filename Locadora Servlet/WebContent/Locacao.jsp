<%@page import="java.util.ArrayList"%>
<%@page import="models.Pessoa"%>
<%@page import="models.Carro"%>
<%@page import="java.util.List"%>

     <% List <Pessoa> pessoas;
 if (session.getAttribute("pessoas") == null){
	  pessoas = new ArrayList<Pessoa>();
	  session.setAttribute("pessoas", pessoas);
 }else
	  pessoas = (ArrayList)session.getAttribute("pessoas"); 
	  
 List <Carro> carros;
 if (session.getAttribute("carros") == null){
	  carros = new ArrayList<Carro>();
	  session.setAttribute("carros", carros);
 }else
	  carros = (ArrayList)session.getAttribute("carros");	  
	  
	  %>	
	  
  
	  
	  
	  
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>Locação</title>
  </head>
  <body>
<form action="LocacaoInsert" method="post" style="margin-left: 100px;">
 <divs class="container">
 <div class="form-group">
 <label for="usuario">Usuario</label>
 <br>
    <select name="usuario" required="required">
	<%for(int i = 0; i < pessoas.size(); i++){
	   	Pessoa pes = (Pessoa) pessoas.get(i);
	   	%> <option value="<% out.print(pes.getNome()); %>"><%out.print(pes.getNome()); %></option><%}%>
	</select> </div>
  <div class="form-group">
  <label for="carro">Carro</label>
  <br>
    <select name="carro" required="required">
	<%for(int i = 0; i < carros.size(); i++){
	   	Carro car = (Carro) carros.get(i);
	   	if(car.getFllocado() != 1){
	   	%> <option value="<% out.print(car.getNome()); %>"><%out.print(car.getNome()); %></option><%}}%>
	</select>
  </div>  
  <div class="form-group">
    <label for="data">Data</label>
    <input type="date" name="data" class="form-control" required="required">
  </div>
  <div class="form-group">
    <label for="dataestimada">Data estimada de devolução</label>
    <input type="date" name="dataestimada" class="form-control" required="required">
  </div>        
  <button type="submit" class="btn btn-secondary">Locar</button>
  <a href="Index.jsp"> <button type="button" class="btn btn-secondary">Voltar</button></a>
  </div>
</form>
 	<% if (request.getAttribute("aux") != null){
 	      %><script type="text/javascript">alert("<% out.print(request.getAttribute("aux")); %>")</script> <%	
 	} %>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  </body>
</html>