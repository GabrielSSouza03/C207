public boolean deleteAluno(int id) { no usages
    connectToDb();
    boolean sucesso;
    String sql = "DELETE FROM usuario WHERE id= ?";
    try {
        pst = con.prepareStatement(sql);
        pst.setInt(parameterIndex: 1, id);
        pst.execute();
        sucesso true;
    } catch (SQLException exc) {
        System.out.println("Erro: "+exc.getMessage());
        sucesso false;
    } finally {
        try {
            con.close();
            pst.close();
        } catch (SQLException exc) {
            System.out.println("Erro: " + exc.getMessage());
        }
    }
    return sucesso;