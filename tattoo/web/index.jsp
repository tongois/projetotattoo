<%-- 
    Document   : index
    Created on : 25/06/2018, 20:12:03
    Author     : Ton
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="WEB-INF/header.jspf" %> 
        
        
    <div class="container-fluid">
         <div class="caixa">
             <div class="opcao-index">
             <a href="cadastroCliente.jsp">Cadastrar Cliente</a>
             <a href="cadastroUsuario.jsp">Cadastrar Usuarios</a>
             <a href="exibirCliente.jsp">Exibir Clientes</a
             </div>
     </div>
  </div>
        
        
        <%@include file="WEB-INF/footer.jspf" %> 
    </body>
</html>
