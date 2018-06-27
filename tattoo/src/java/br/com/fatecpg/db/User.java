package br.com.fatecpg.db;

import br.com.fatecpg.tattoo.web.DatabaseConnector;
import java.util.ArrayList;

/**
 *
 * @author RicardoPupo
 */
public class User {

    private long id;
    private String login;
    private String name;
    private String role;
    private long passwordHash;

    public User() {
    }

    public User(long id, String role, String name, String login, long passwordHash) {
        this.id = id;
        this.login = login;
        this.role = role;
        this.name = name;
        this.passwordHash = passwordHash;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getPasswordHash() {
        return passwordHash;
    }

    public void setPasswordHash(long passwordHash) {
        this.passwordHash = passwordHash;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public static ArrayList<User> getUsers() {
        ArrayList<User> list = new ArrayList<>();
        ///TODO
        return list;
    }

    public static User validateUser(String login, String password) throws Exception {
        String Query = "SELECT * FROM USERS WHERE login = ? AND passwordHash = ?";
        ArrayList<Object[]> list = DatabaseConnector.executeQuery(Query, new Object[]{login, password.hashCode()});
        if (list.size() > 0) {
            Object[] row = list.get(0);
            User u = new User((long) row[0], (String) row[1], (String) row[2], (String) row[3], (long) row[4]);
            return u;
        } else {
            return null;
        }
    }

    public static ArrayList<User> validateUsers() throws Exception {
        String Query = "SELECT * FROM USERS";
        ArrayList<User> users = new ArrayList<>();
        ArrayList<Object[]> list = DatabaseConnector.executeQuery(Query, new Object[]{});
        for (int i = 0; i < list.size(); i++) {
            Object[] row = list.get(i);
            User u = new User((long) row[0], (String) row[1], (String) row[2], (String) row[3], (long) row[4]);
            users.add(u);
        }
        return users;
    }

    public static void addUser(String name, String role, String login, long passwordHash) throws Exception {
        String SQL = "INSERT INTO USERS VALUES(default ,? ,? ,? ,?)";
        Object parameters[] = {role, name, login, passwordHash};
        DatabaseConnector.execute(SQL, parameters);

    }

    public static void editUser(long id, String role, String name, String login, long passwordHash) throws Exception {
        String SQL = "UPDATE USERS SET ROLE=?, NAME=?, LOGIN=?, PASSWORDHASH=? WHERE ID = ?";
        Object parameters[] = {id, role, name, login, passwordHash};
        DatabaseConnector.execute(SQL, parameters);
    }

    public static void removeUser(long id) throws Exception {
        String SQL = "DELETE FROM USERS WHERE ID = ?";
        Object parameters[] = {id};
        DatabaseConnector.execute(SQL, parameters);
    }
}
