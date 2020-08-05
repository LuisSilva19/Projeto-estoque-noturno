package conexao_itenscompra;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public abstract class AConexao_itenscompra {
	
	public Connection con;  
    public PreparedStatement stm;  
    public ResultSet res = null;

	private int comCodigo;
	private int proCodigo;
	private int tppCodigo;
	private int nfCodigo;
	private int forCodigo;
	private int tpgCodigo;
	private String itcEmbalagem;
	private double itcQtde;
	private double itcValorun;
	private double itcDesc;
	private double itcValortotal;
	
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
	public String getItcEmbalagem() {
		return itcEmbalagem;
	}
	public void setItcEmbalagem(String itcEmbalagem) {
		this.itcEmbalagem = itcEmbalagem;
	}
	public double getItcQtde() {
		return itcQtde;
	}
	public void setItcQtde(double itcQtde) {
		this.itcQtde = itcQtde;
	}
	public double getItcValorun() {
		return itcValorun;
	}
	public void setItcValorun(double itcValorun) {
		this.itcValorun = itcValorun;
	}
	public double getItcDesc() {
		return itcDesc;
	}
	public void setItcDesc(double itcDesc) {
		this.itcDesc = itcDesc;
	}
	public double getItcValortotal() {
		return itcValortotal;
	}
	public void setItcValortotal(double itcValortotal) {
		this.itcValortotal = itcValortotal;
	}
	public ResultSet getResultado() {
		return res;
	}
	
	
}