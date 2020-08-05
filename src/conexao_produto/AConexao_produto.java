package conexao_produto;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public abstract class AConexao_produto {
	
	public Connection con;  
    public PreparedStatement stm;  
    public ResultSet res = null;
    
    private int proCodigo;
    private String proDescricao;
    private int tppCodigo;
    private double proPrecocusto;
    private double proPrecovenda;
    private double proEstoque;
    private String proEmbalagem;
    private double proIpi;
    
	
	public int getProCodigo() {
		return proCodigo;
	}


	public void setProCodigo(int proCodigo) {
		this.proCodigo = proCodigo;
	}


	public String getProDescricao() {
		return proDescricao;
	}


	public void setProDescricao(String proDescricao) {
		this.proDescricao = proDescricao;
	}


	public int getTppCodigo() {
		return tppCodigo;
	}


	public void setTppCodigo(int tppCodigo) {
		this.tppCodigo = tppCodigo;
	}


	public double getProPrecocusto() {
		return proPrecocusto;
	}


	public void setProPrecocusto(double proPrecocusto) {
		this.proPrecocusto = proPrecocusto;
	}


	public double getProPrecovenda() {
		return proPrecovenda;
	}


	public void setProPrecovenda(double proPrecovenda) {
		this.proPrecovenda = proPrecovenda;
	}


	public double getProEstoque() {
		return proEstoque;
	}


	public void setProEstoque(double proEstoque) {
		this.proEstoque = proEstoque;
	}


	public String getProEmbalagem() {
		return proEmbalagem;
	}


	public void setProEmbalagem(String proEmbalagem) {
		this.proEmbalagem = proEmbalagem;
	}


	public double getProIpi() {
		return proIpi;
	}


	public void setProIpi(double proIpi) {
		this.proIpi = proIpi;
	}


	public ResultSet getResultado() {
		return res;
	}
    
    
}
