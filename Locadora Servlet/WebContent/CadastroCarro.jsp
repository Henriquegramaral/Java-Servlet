<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>Cadastro de Carros</title>
  </head>
  <body style="background-color: #A9A9A9;">
<form action="CarroInsert" method="post">
 <div class="container">
  <div class="form-group">
    <label for="nome">Nome</label>
    <input type="text" name="nome" class="form-control" required="required">
  </div>
  <div class="form-group">
    <label for="marca">Marca</label>
    <input type="text" name="marca" class="form-control" required="required">
  </div>  
  <div class="form-group">
    <label for="modelo">Modelo</label>
    <input type="text" name="modelo" class="form-control" required="required">
  </div>
  <div class="form-group">
    <label for="preco">Preço</label>
    <input type="text"  name="preco" class="form-control" required="required">
  </div>      
  <div class="form-group">
    <label for="locacao">Valor locação</label>
    <input type="text"  name="locacao" class="form-control" required="required">
  </div>                   
  <button type="submit" class="btn btn-secondary">Cadastrar</button>
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