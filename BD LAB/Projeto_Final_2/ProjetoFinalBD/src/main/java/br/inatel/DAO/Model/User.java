package br.inatel.DAO.Model;

public class User {


    public class Aluno {
        private int idAlunos;
        private String nome;

        // Construtor
        public Aluno(int idAlunos, String nome) {
            this.idAlunos = idAlunos;
            this.nome = nome;
        }

        // Getters e Setters
        public int getIdAlunos() {
            return idAlunos;
        }

        public void setIdAlunos(int idAlunos) {
            this.idAlunos = idAlunos;
        }

        public String getNome() {
            return nome;
        }

        public void setNome(String nome) {
            this.nome = nome;
        }
    }
    package model;

    public class Sala {
        private int idSala;
        private String nome;
        private int capacidade;

        // Construtor
        public Sala(int idSala, String nome, int capacidade) {
            this.idSala = idSala;
            this.nome = nome;
            this.capacidade = capacidade;
        }

        // Getters e Setters
        public int getIdSala() {
            return idSala;
        }

        public void setIdSala(int idSala) {
            this.idSala = idSala;
        }

        public String getNome() {
            return nome;
        }

        public void setNome(String nome) {
            this.nome = nome;
        }

        public int getCapacidade() {
            return capacidade;
        }

        public void setCapacidade(int capacidade) {
            this.capacidade = capacidade;
        }
    }


}
