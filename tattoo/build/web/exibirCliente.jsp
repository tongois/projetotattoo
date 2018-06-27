<%-- 
    Document   : exibirCliente
    Created on : 25/06/2018, 20:24:08
    Author     : Ton
--%>
<%@page import="br.com.fatecpg.db.Clientes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <body>
        <%@include file="WEB-INF/header.jspf" %> 

        <div class="container-fluid">
            <div class="caixa">

                <table class="table table-hover exibir-cliente">
                    <table border="1">

                        <tr>
                            <th>ID</th>
                            <th>Papel</th>
                            <th>Nome</th>
                            <th>Login</th>
                            <th>Opções</th>
                        </tr>
                        <%for (Clientes c : Clientes.validateClientes());%>
                        <tr>
                            <td><%=c.getId()%></td>
                            <td><%=c.getRole()%></td>
                            <td><%=c.getName()%></td>
                            <td><%=c.getLogin()%></td>
                            <td>
                                <form>
                                    <button type="button" class="btn btn-warning" name="id2" value="<%=u.getId()%>"/>
                                    <button type="button" class="btn btn-danger" name="formEditUser" value="Editar"/>
                                </form>
                            </td>
                            <td>
                                <form>
                                    <input type="hidden" name="id" value="<%=u.getId()%>"/>
                                    <input type="submit" name="formDeleteUser" value="Remover"/>
                                </form>
                            </td>

                        </tr>
                        <%}%>
                        </tr>
                        </tbody>
                    </table>
            </div>
        </div>




        <%@include file="WEB-INF/footer.jspf" %> 
    </body>
</html>
