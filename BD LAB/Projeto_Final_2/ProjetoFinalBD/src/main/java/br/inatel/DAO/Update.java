public boolean updateAluno(int id, User user) {
    connectToDb();
    boolean successo;
    String sql = "UPDATE aluno SET nome = Marcos WHERE idAluno = 2";
    try {
        PreparedStatement pst = con.prepareStatement(sql);
        pst.setString(1, user.getNome());
        pst.setString(2, user.getCpf());
        pst.setInt(3, id);
        pst.execute();
        successo = true;
    } catch (SQLException exc) {
        System.out.println("Erro: " + exc.getMessage());
        successo = false;
    } finally {
        try {
            if (pst != null) pst.close();
            if (con != null) con.close();
        } catch (SQLException e) {
            System.out.println("Erro ao fechar recursos: " + e.getMessage());
        }
    }
    return successo;
}
