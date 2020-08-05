package conexao_itensvendas;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public abstract class AConexao_itensvenda {
	
	public Connection con;  
    public PreparedStatement stm;  
    public ResultSet res = null;
    
    private int comCodigo;
	private int proCodigo;
	private int tppCodigo;
	private int nfCodigo;
	private int forCodigo;
	private int tpgCodigo;
	private String itvEmbalagem;
	private double itvQtde;
	private double itvValorun;
	private double itvDesc;
	private double itvValortotal;
	
	public int getComCodigo() {
		return comCodigo;
	}
	public void setComCodigo(int comCodigo) {
		this.comCodigo = comCodigo;
	}
	public int getProCodigo() {
		return proCodigo;
	}
	public void setProCodigo(int proCodigo) {
		this.proCodigo = proCodigo;
	}
	public int getTppCodigo() {
		return tppCodigo;
	}
	public void setTppCodigo(int tppCodigo) {
		this.tppCodigo = tppCodigo;
	}
	public int getNfCodigo() {
		return nfCodigo;
	}
	public void setNfCodigo(int nfCodigo) {
		this.nfCodigo = nfCodigo;
	}
	public int getForCodigo() {
		return forCodigo;
	}
	public void setForCodigo(int forCodigo) {
		this.forCodigo = forCodigo;
	}
	public int getTpgCodigo() {
		return tpgCodigo;
	}
	public void setTpgCodigo(int tpgCodigo) {
		this.tpgCodigo = tpgCodigo;
	}
	public String getItvEmbalagem() {
		return itvEmbalagem;
	}
	public void setItvEmbalagem(String itvEmbalagem) {
		this.itvEmbalagem = itvEmbalagem;
	}
	public double getItvQtde() {
		return itvQtde;
	}
	public void setItvQtde(double itvQtde) {
		this.itvQtde = itvQtde;
	}
	public double getItvValorun() {
		return itvValorun;
	}
	public void setItvValorun(double itvValorun) {
		this.itvValorun = itvValorun;
	}
	public double getItvDesc() {
		return itvDesc;
	}
	public void setItvDesc(double itvDesc) {
		this.itvDesc = itvDesc;
	}
	public double getItvValortotal() {
		return itvValortotal;
	}
	public void setItvValortotal(double itvValortotal) {
		this.itvValortotal = itvValortotal;
	}
	public ResultSet getResultado() {
		return res;
	}
	
	
}
