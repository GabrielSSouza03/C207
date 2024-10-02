public ArrayList<User> selectAluno() {
    connectToDb();
    ArrayList<User> users = new ArrayList<>();
    String sql = "SELECT * FROM usuario";
    try {
        st con.createStatement();
        rs = st.executeQuery(sql);
        System.out.println("Lista de usuários:");
        while (rs.next()) {
            User userAux = new User(rs.getString("nome"), rs.getString("cpf"), rs.getInt("id"));
            System.out.println("Nome: + userAux.getNome() + "CPF: " + userAux.getCpf());
            System.out.println(". -----");
            users.add(userAux);
        }
    } catch (SQLException exc) {
        System.out.println("Erro: + exc.getMessage());
finally {
            try {
                con.close();
                st.close();
                rs.close();
            } catch (SQLException exc) {
                System.out.println("Erro: + exc.getMessage());
            }
            return users;