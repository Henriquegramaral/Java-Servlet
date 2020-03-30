<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>Cadastro de Pessoas</title>
  </head>
  <body style="background-color: #A9A9A9;">
<form action="PessoaInsert" method="post">
 <div class="container">
  <div class="form-group">
    <label for="nome">Nome</label>
    <input type="text" name="nome" class="form-control" required="required">
  </div>
  <div class="form-group">
    <label for="sobrenome">Sobrenome</label>
    <input type="text" name="sobrenome" class="form-control" required="required">
  </div>  
  <div class="form-group">
    <label for="cnh">CNH</label>
    <input type="text" name="cnh" class="form-control" required="required">
  </div>
  <div class="form-group">
    <label for="categoria">Categoria</label>
    <input type="text" name="categoria" class="form-control" required="required">
  </div>    
  <div class="form-group">
    <label for="nascimento">Data de nascimento</label>
    <input type="date" name="nascimento" class="form-control" required="required">
  </div>    
  <div class="form-group">
    <label for="telefone">Telefone</label>
    <input type="text" name="telefone" class="form-control" required="required">
  </div>  
  <div class="form-group">
    <label for="email">Email</label>
    <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
  </div>
  <div class="form-group">
    <label for="logradouro">Logradouro</label>
    <input type="text" name="logradouro" class="form-control" required="required">
  </div>  
  <div class="form-group">
    <label for="complemento">Complemento</label>
    <input type="text" name="complemento" class="form-control" required="required">
  </div> 
  <div class="form-group">
    <label for="cep">CEP</label>
    <input type="text" name="cep" class="form-control" required="required">
  </div>  
  <div class="form-group">
    <label for="cidade">Cidade</label>
    <input type="text" name="cidade" class="form-control" required="required">
  </div>  
  <div class="form-group">
    <label for="estado">Estado</label>
    <input type="text" name="estado" class="form-control" required="required">
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