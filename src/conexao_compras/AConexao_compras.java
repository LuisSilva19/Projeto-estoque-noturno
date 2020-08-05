package conexao_compras;

import java.sql.Connection;
import java.sql.ResultSet;

import java.sql.PreparedStatement;

public abstract class AConexao_compras {
	
	public Connection con;  
    public PreparedStatement stm;  
    public ResultSet res = null;
    
    private int comCodigo;
    private int tpgCodigo;
    private int forCodigo;
    private int nfCodigo;
    private String comDataCompra;
    private double comValorTotal;
    private String comObservacao;
    
	public String getComObservacao() {
		return comObservacao;
	}
	public void setComObservacao(String comObservacao) {
		this.comObservacao = comObservacao;
	}
	public int getComCodigo() {
		return comCodigo;
	}
	public void setComCodigo(int comCodigo) {
		this.comCodigo = comCodigo;
	}
	public int getTpgCodigo() {
		return tpgCodigo;
	}
	public void setTpgCodigo(int tpgCodigo) {
		this.tpgCodigo = tpgCodigo;
	}
	public int getForCodigo() {
		return forCodigo;
	}
	public void setForCodigo(int forCodigo) {
		this.forCodigo = forCodigo;
	}
	public int getNfCodigo() {
		return nfCodigo;
	}
	public void setNfCodigo(int nfCodigo) {
		this.nfCodigo = nfCodigo;
	}
	public String getComDataCompra() {
		return comDataCompra;
	}
	public void setComDataCompra(String comDataCompra) {
		this.comDataCompra = comDataCompra;
	}
	public double getComValorTotal() {
		return comValorTotal;
	}
	public void setComValorTotal(double comValorTotal) {
		this.comValorTotal = comValorTotal;
	}
	public ResultSet getResultado() {
		return res;
	}
    
    
    
}
