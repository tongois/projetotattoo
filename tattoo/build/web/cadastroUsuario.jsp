<%-- 
    Document   : cadastroUsuario
    Created on : 25/06/2018, 20:21:30
    Author     : Ton
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String error = null;
    String error2 = null;
    if (request.getParameter("formDeleteUser") != null) {
        try {
            long id = Long.parseLong(request.getParameter("id"));
            User.removeUser(id);
            response.sendRedirect(request.getRequestURI());

        } catch (Exception e) {
            error2 = "Não foi possivel excluir usuário!!!";
        }
    }
    if (request.getParameter("formEditUser") != null) {
        try {
            long id = Long.parseLong(request.getParameter("id2"));
            String name = request.getParameter("role");
            String role = request.getParameter("name");
            String login = request.getParameter("login");
            long passwordHash = request.getParameter("pass").hashCode();
            User.editUser(id, role, name, login, passwordHash);
            response.sendRedirect(request.getRequestURI());

        } catch (Exception e) {
            error2 = "Não foi possivel excluir usuário!!!";
        }
    }

    if (request.getParameter("newUser") != null) {
        String name = request.getParameter("name");
        String role = request.getParameter("role");
        String login = request.getParameter("login");
        long passwordHash = request.getParameter("pass").hashCode();
        try {
            User.addUser(name, role, login, passwordHash);
            response.sendRedirect(request.getRequestURI());
        } catch (Exception e) {
            error = "Não foi possivel inserir o novo usuário";
        }
    }
%>
<!DOCTYPE html>
<html>
    <body>

        <%@include file="WEB-INF/header.jspf" %> 
        <form>
            <p style="color: white">Cadastro de Cliente</p>
            <p style="color: white">Papel:</p>
            <select name="role">
                <option value="ADMIN">ADMIN</option>
                <option value="OPERADOR">OPERADOR</option>
            </select>
            <input type="text" placeholder="Nome" name="name"/>
            <input type="text" placeholder="Login" name="login"/>
            <input type="password" placeholder="Enter password"name="pass"/>
            <input type="submit" name="newUser" value="add"/>
        </form>
        <table border="1">
            <%for (User u : User.validateUsers());%>
            <tr>
                <th>ID</th>
                <th>Papel</th>
                <th>Nome</th>
                <th>Login</th>
                <th>Opções</th>
            </tr>
            <%for (User u : User.validateUsers()) {;%>
            <tr>
                <td><%=u.getId()%></td>
                <td><%=u.getRole()%></td>
                <td><%=u.getName()%></td>
                <td><%=u.getLogin()%></td>
                <td>
                    <form>
                        <input type="hidden" name="id2" value="<%=u.getId()%>"/>
                        <input type="submit" name="formEditUser" value="Editar"/>
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
        </table>
    </div>
</div>
<%@include file="WEB-INF/footer.jspf" %> 
</body>
</html>
