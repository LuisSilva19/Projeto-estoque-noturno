package conexao_vendas;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public abstract class AConexao_vendas {
	
	public Connection con;  
    public PreparedStatement stm;  
    public ResultSet res = null;
    
    private int venCodigo;
    private int funCodigo;
    private int tpgCodigo;
    private int nfCodigo;
    private String venDatavenda;
    private double venValortotal;
    private String venObservacoes;
    
	public int getVenCodigo() {
		return venCodigo;
	}
	public void setVenCodigo(int venCodigo) {
		this.venCodigo = venCodigo;
	}
	public int getFunCodigo() {
		return funCodigo;
	}
	public void setFunCodigo(int funCodigo) {
		this.funCodigo = funCodigo;
	}
	public int getTpgCodigo() {
		return tpgCodigo;
	}
	public void setTpgCodigo(int tpgCodigo) {
		this.tpgCodigo = tpgCodigo;
	}
	public int getNfCodigo() {
		return nfCodigo;
	}
	public void setNfCodigo(int nfCodigo) {
		this.nfCodigo = nfCodigo;
	}
	public String getVenDatavenda() {
		return venDatavenda;
	}
	public void setVenDatavenda(String venDatavenda) {
		this.venDatavenda = venDatavenda;
	}
	public double getVenValortotal() {
		return venValortotal;
	}
	public void setVenValortotal(double venValortotal) {
		this.venValortotal = venValortotal;
	}
	public String getVenObservacoes() {
		return venObservacoes;
	}
	public void setVenObservacoes(String venObservacoes) {
		this.venObservacoes = venObservacoes;
	}
	public ResultSet getResultado() {
		return res;
	}
    
    
}
