<%-- 
    Document   : cadastroCliente
    Created on : 25/06/2018, 20:19:06
    Author     : Ton
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   
    <body>
        <%@include file="WEB-INF/header.jspf" %> 
        
        
        <div class="container-fluid">
        <div class="caixa">
         <p>Cadastro de Cliente</p>
   
         <div class="col-md-8 formulario">
         <form class="form-inline" action="/action_page.php">
    <div class="form-group " >
      <label for="email">Nome:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
    </div>
    <div class="form-group">
      <label for="pwd">Telefone:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
    </div>
    
    <div class="form-group " >
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
    </div>
    <div class="form-group">
      <label for="pwd">RG:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
    </div>
   
  </form>
      <button type="submit" class="btn btn-default">Cadastrar</button>
      <button type="reset" class="btn btn-default">Limpar</button>
       </div>  
     </div>
      
  </div>
        
        <%@include file="WEB-INF/footer.jspf" %> 
    </body>
</html>
