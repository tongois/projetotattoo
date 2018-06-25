<%-- 
    Document   : exibirCliente
    Created on : 25/06/2018, 20:24:08
    Author     : Ton
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <body>
        <%@include file="WEB-INF/header.jspf" %> 
  
  <div class="container-fluid">
     <div class="caixa">
         
  <table class="table table-hover exibir-cliente">
    <thead>
      <tr>
       <th>ID</th>
        <th>Nome</th>
        <th>Email</th>
        <th>RG</th>
        <th>Opções</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>John</td>
        <td>Doe</td>
        <td>john@example.com</td>
        <td>john@example.com</td>
        <td>
            <button type="button" class="btn btn-warning">Editar</button>
            <button type="button" class="btn btn-danger">Excluir</button>
        </td>
      </tr>
      <tr>
        <td>Mary</td>
        <td>Moe</td>
        <td>mary@example.com</td>
        <td>john@example.com</td>
        <td>
            <button type="button" class="btn btn-warning">Editar</button>
            <button type="button" class="btn btn-danger">Excluir</button></td>
      </tr>
    </tbody>
  </table>
     </div>
  </div>
        
        
        
        
        <%@include file="WEB-INF/footer.jspf" %> 
    </body>
</html>
