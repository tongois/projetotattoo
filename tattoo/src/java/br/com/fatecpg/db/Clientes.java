package br.com.fatecpg.db;

import br.com.fatecpg.tattoo.web.DatabaseConnector;
import java.util.ArrayList;

/**
 *
 * @author RicardoPupo
 */
public class Clientes {

    private static void add(Clientes c) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    private long id;
    private String name;
    private String email;
    private String telefone;
    private String rg;

    public Clientes() {
    }

    public Clientes(long id, String name, String email, String telefone, String rg) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.telefone = telefone;
        this.rg = rg;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getRg() {
        return rg;
    }

    public void setRg(String rg) {
        this.rg = rg;
    }

    public static ArrayList<Clientes> validateClientes() throws Exception {
        String Query = "SELECT * FROM USERS";
        ArrayList<Clientes> clientes = new ArrayList<>();
        ArrayList<Object[]> list = DatabaseConnector.executeQuery(Query, new Object[]{});
        for (int i = 0; i < list.size(); i++) {
            Object[] row = list.get(i);
            Clientes c = new Clientes((long) row[0], (String) row[1], (String) row[2], (String) row[3], (String) row[4]);
            Clientes.add(c);
        }
        return clientes;
    }

    public static void addCliente(String name, String role, String login, long passwordHash) throws Exception {
        String SQL = "INSERT INTO USERS VALUES(default ,? ,? ,? ,?)";
        Object parameters[] = {role, name, login, passwordHash};
        DatabaseConnector.execute(SQL, parameters);

    }

    public static void editCliente(long id, String role, String name, String login, long passwordHash) throws Exception {
        String SQL = "UPDATE USERS SET ROLE=?, NAME=?, LOGIN=?, PASSWORDHASH=? WHERE ID = ?";
        Object parameters[] = {id, role, name, login, passwordHash};
        DatabaseConnector.execute(SQL, parameters);
    }

    public static void removeCliente(long id) throws Exception {
        String SQL = "DELETE FROM USERS WHERE ID = ?";
        Object parameters[] = {id};
        DatabaseConnector.execute(SQL, parameters);
    }
}
