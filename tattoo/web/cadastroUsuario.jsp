<%-- 
    Document   : cadastroUsuario
    Created on : 25/06/2018, 20:21:30
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
         <div class="col-md-8  form-usuario">
        <form class="form-horizontal" action="/action_page.php">
  <div class="form-group">
    <label class="control-label col-sm-2" for="email">Nome:</label>
    <div class="col-sm-10">
      <input type="email" class="form-control" id="email" placeholder="Enter email">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="email">Email:</label>
    <div class="col-sm-10">
      <input type="email" class="form-control" id="email" placeholder="Enter email">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Password:</label>
    <div class="col-sm-10"> 
      <input type="password" class="form-control" id="pwd" placeholder="Enter password">
    </div>
  </div>
  
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">Submit</button>
      <button type="reset" class="btn btn-default">Limpar</button>
    </div>
  </div>
</form> 
       </div>  
     </div> 
  </div>
         
         
         <%@include file="WEB-INF/footer.jspf" %> 
    </body>
</html>
