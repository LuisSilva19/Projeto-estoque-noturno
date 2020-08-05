package conexao_notafiscal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public abstract class AConexao_notafiscal {
	 
	 public Connection con;  
     public PreparedStatement  stm;  
     public ResultSet res = null; 

     private int nfCodigo;  
     private float nfValornf; 
	 private float nfTaxaimpostonf; 
	 private float nfValorimposto;
	 
	public int getNfCodigo() {
		return nfCodigo;
	}
	public void setNfCodigo(int nfCodigo) {
		this.nfCodigo = nfCodigo;
	}
	public float getNfValornf() {
		return nfValornf;
	}
	public void setNfValornf(float nfValornf) {
		this.nfValornf = nfValornf;
	}
	public float getNfTaxaimpostonf() {
		return nfTaxaimpostonf;
	}
	public void setNfTaxaimpostonf(float nfTaxaimpostonf) {
		this.nfTaxaimpostonf = nfTaxaimpostonf;
	}
	public float getNfValorimposto() {
		return nfValorimposto;
	}
	public void setNfValorimposto(float nfValorimposto) {
		this.nfValorimposto = nfValorimposto;
	}
	public ResultSet getResultado() {
		return res;
	}
	 
    
}
