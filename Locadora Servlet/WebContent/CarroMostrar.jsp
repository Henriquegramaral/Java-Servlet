<%@page import="java.util.ArrayList"%>
<%@page import="models.Carro"%>
<%@page import="java.util.List"%>
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

    <title>Relatório de Carros</title>
  </head>
  <body style="background-color: #A9A9A9;">
  
  <table class="table table-striped table-dark">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Nome</th>
      <th scope="col">Marca</th>
      <th scope="col">Modelo</th>
      <th scope="col">Preço</th>
      <th scope="col">Valor de locação</th>
      <th scope="col">Status</th>
    </tr>
  </thead>
  <tbody>  
     
     
     <% 
 
 List <Carro> carros;
 if (session.getAttribute("carros") == null){
	  carros = new ArrayList<Carro>();
	  session.setAttribute("carros", carros);
 }else
	  carros = (ArrayList)session.getAttribute("carros");	
 	  
 
   for(int i = 0; i < carros.size(); i++){
   	Carro car = (Carro) carros.get(i);
   	%><tr><th scope="row"><% out.print(i);%></th><%
   	%><td><% out.print(car.getNome());%></td><% 
   	%><td><% out.print(car.getMarca());%></td><%
    %><td><% out.print(car.getModelo());%></td><%
    %><td><% out.print(car.getPreco());%></td><%
    %><td><% out.print(car.getLocacao());%></td><%
    %><td><% if(car.getFllocado() == 0){
			out.print("Disponível.");
		}else{
			out.print("Locado.");
		}%></td></tr><%
	 
   
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