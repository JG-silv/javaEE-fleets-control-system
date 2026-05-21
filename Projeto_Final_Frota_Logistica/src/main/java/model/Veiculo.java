package model;

import javax.persistence.*;

import org.hibernate.Session;
import org.hibernate.Transaction;
import java.util.List;
import util.HibernateUtil;

@Entity
@Table(name = "veiculo")
public class Veiculo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String placa;

    @Column(nullable = false)
    private String modelo;

    @Column(nullable = false)
    private String marca;

    private int ano;
    private String cor;
    private String tipo;
    private double capacidadeCarga;
    private String status;
    private double quilometragem;
    private String combustivel;
    private String chassi;

// Construtor Vazio
    public Veiculo() {}

 // Construtor Cheio
    public Veiculo(String placa, String modelo, String marca, int ano,
                   String tipo, double capacidade, double km,
                   String status, String combustivel) {

        this.placa = placa;
        this.modelo = modelo;
        this.marca = marca;
        this.ano = ano;
        this.tipo = tipo;
        this.capacidadeCarga = capacidade;
        this.quilometragem = km;
        this.status = status;
        this.combustivel = combustivel;
    }
    
// CRUD
    
    public boolean salvar() {

        if (placa == null || placa.isEmpty() ||
            modelo == null || modelo.isEmpty() ||
            marca == null || marca.isEmpty()) {
            return false;
        }

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
    public static List<Veiculo> listarTodos() {

        Session session = HibernateUtil.getSessionFactory().openSession();

        try {
            return session.createQuery("from Veiculo", Veiculo.class).list();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } finally {
            session.close();
        }
    }
    public static List<Veiculo> filtrar(String status, String tipo) {

        Session session = HibernateUtil.getSessionFactory().openSession();

        try {

            String hql = "from Veiculo where 1=1";

            if (status != null && !status.isEmpty()) {
                hql += " and status = :status";
            }

            if (tipo != null && !tipo.isEmpty()) {
                hql += " and tipo = :tipo";
            }

            var query = session.createQuery(hql, Veiculo.class);

            if (status != null && !status.isEmpty()) {
                query.setParameter("status", status);
            }

            if (tipo != null && !tipo.isEmpty()) {
                query.setParameter("tipo", tipo);
            }

            return query.list();

        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } finally {
            session.close();
        }
    }
    public static Veiculo localizarPlaca(String placa) {

        Session session = HibernateUtil.getSessionFactory().openSession();

        try {

        	String hql = "from Veiculo where lower(placa) = :placa";
        	
            return session.createQuery(hql, Veiculo.class)
            		.setParameter("placa", placa.toLowerCase())
                    .uniqueResult();

        } catch (Exception e) {

            e.printStackTrace();
            return null;

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
    public static Veiculo localizarPorId(Long id) {

        Session session = HibernateUtil
                .getSessionFactory()
                .openSession();

        try {

            return session.get(Veiculo.class, id);

        } catch (Exception e) {

            e.printStackTrace();

            return null;

        } finally {

            session.close();
        }
    }
    public boolean excluir() {

        Session session =
                HibernateUtil
                .getSessionFactory()
                .openSession();

        Transaction tx =
                session.beginTransaction();

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
    // == GETTERS E SETTERS ==

    public Long getId() { return id; }

    public String getPlaca() { return placa; }
    public void setPlaca(String placa) { this.placa = placa; }

    public String getModelo() { return modelo; }
    public void setModelo(String modelo) { this.modelo = modelo; }

    public String getMarca() { return marca; }
    public void setMarca(String marca) { this.marca = marca; }

    public int getAno() { return ano; }
    public void setAno(int ano) { this.ano = ano; }

    public String getCor() { return cor; }
    public void setCor(String cor) { this.cor = cor; }

    public String getTipo() { return tipo; }
    public void setTipo(String tipo) { this.tipo = tipo; }

    public double getCapacidadeCarga() { return capacidadeCarga; }
    public void setCapacidadeCarga(double capacidadeCarga) { this.capacidadeCarga = capacidadeCarga; }

    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }

    public double getQuilometragem() { return quilometragem; }
    public void setQuilometragem(double quilometragem) { this.quilometragem = quilometragem; }

    public String getCombustivel() { return combustivel; }
    public void setCombustivel(String combustivel) { this.combustivel = combustivel; }

    public String getChassi() { return chassi; }
    public void setChassi(String chassi) { this.chassi = chassi; }
}