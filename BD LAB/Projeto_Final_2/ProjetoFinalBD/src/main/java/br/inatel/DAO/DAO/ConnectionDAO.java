package br.inatel.DAO.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ConnectionDAO {

    Connection con; // Conexão
    PreparedStatement pst; // Declaração preparada - código SQL
    Statement st; // Declaração - código SQL
    ResultSet rs; // Resposta do banco de dados

    String database = "integracao";
    String user = "root";
    String password = "root";
    String url = "jdbc:mysql://localhost:3306/" + database + "?useTimezone=true&serverTimezone=UTC";

    // Método para conectar ao banco de dados
    public void connectToDb() {
        try {
            con = DriverManager.getConnection(url, user, password);
            System.out.println("Conectado com sucesso!");
        } catch (SQLException exc) {
            System.out.println("Erro: " + exc.getMessage());
        }
    }

    // Método para fechar a conexão, se necessário
    public void closeConnection() {
        try {
            if (con != null && !con.isClosed()) {
                con.close();
                System.out.println("Conexão fechada.");
            }
        } catch (SQLException exc) {
            System.out.println("Erro ao fechar a conexão: " + exc.getMessage());
        }
    }
}
