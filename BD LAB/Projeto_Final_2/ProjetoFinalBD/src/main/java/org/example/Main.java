package br.inatel.DAO;
import br.inatel.DAO.DAO.UserDAO;

public class Main{
    public static void main(String[]args){
        UserDAO UserDao = new UserDAO();
        userDAO.testConnection();
    }
}