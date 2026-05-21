package model;

import javax.persistence.*;
import org.hibernate.Session;
import org.hibernate.Transaction;
import util.HibernateUtil;

@Entity
@Table(name = "Motorista")
public class Motorista {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String nome;

    @Column(nullable = false)
    private String cpf;
    
    @Column(nullable = false)
    private String status;
    
    private String cnh;
    private String telefone;
    
    // Construtor Vazio
    public Motorista() {}
    
    // Construtor Cheio
    public Motorista(String nome, String cpf, String cnh,
            String telefone, String status) {
      this.nome = nome;
      this.cpf = cpf;
      this.cnh = cnh;
      this.telefone = telefone;
      this.status = status;
}

 // CRUD

    public boolean salvar() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();

        try {
            session.save(this);
            tx.commit();
            return true;
        } catch (Exception e) {
            tx.rollback();
            e.printStackTrace();
            return false;
        } finally {
            session.close();
        }
    }

    public boolean editar() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();

        try {
            session.update(this);
            tx.commit();
            return true;
        } catch (Exception e) {
            tx.rollback();
            e.printStackTrace();
            return false;
        } finally {
            session.close();
        }
    }

    public boolean excluir() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();

        try {
            session.delete(this);
            tx.commit();
            return true;
        } catch (Exception e) {
            tx.rollback();
            e.printStackTrace();
            return false;
        } finally {
            session.close();
        }
    }

    public static Motorista localizarPorId(Long id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            return session.get(Motorista.class, id);
        } finally {
            session.close();
        }
    }

    // == GETTERS E SETTERS ==

    public Long getId() { return id; }
    public String getNome() { return nome; }
    public void setNome(String nome) { this.nome = nome; }

    public String getCpf() { return cpf; }
    public void setCpf(String cpf) { this.cpf = cpf; }

    public String getCnh() { return cnh; }
    public void setCnh(String cnh) { this.cnh = cnh; }

    public String getTelefone() { return telefone; }
    public void setTelefone(String telefone) { this.telefone = telefone; }
    
    public String getStatus() {return status;}
    public void setStatus(String status) {this.status = status;}
}