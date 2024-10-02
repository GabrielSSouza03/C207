public boolean insertAluno (User user) { no usages
    connectToDb();
    boolean sucesso;
    String sql = "INSERT INTO Usuario (nome,idAlunos) VALUES (Lucas, 1)";
    try {
        pstcon.prepareStatement(sql);
        pst.setString(parameterindex: 1, user.getNome());
        pst.setString(parameterindex: 2, user.getCpf());
        pst.execute();
        sucesso true;
    } catch (SQLException exc) {
        System.out.println("Erro:"exc.getMessage());
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