package conexao_contareceber;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;



public abstract class AConexao_contareceber {
	
	public Connection con;  
    public PreparedStatement stm;  
    public ResultSet res = null;
    
    private int crCodigo;
    private double crValorConta;
    private String crDataVencimento;
    private String crDataRecebimento;
    private int nfCodigo;
    private String crObservacoes;
    
	public int getCrCodigo() {
		return crCodigo;
	}
	public void setCrCodigo(int crCodigo) {
		this.crCodigo = crCodigo;
	}
	public double getCrValorConta() {
		return crValorConta;
	}
	public void setCrValorConta(double crValorConta) {
		this.crValorConta = crValorConta;
	}
	public String getCrDataVencimento() {
		return crDataVencimento;
	}
	public void setCrDataVencimento(String crDataVencimento) {
		this.crDataVencimento = crDataVencimento;
	}
	public String getCrDataRecebimento() {
		return crDataRecebimento;
	}
	public void setCrDataRecebimento(String crDataRecebimento) {
		this.crDataRecebimento = crDataRecebimento;
	}
	public int getNfCodigo() {
		return nfCodigo;
	}
	public void setNfCodigo(int nfCodigo) {
		this.nfCodigo = nfCodigo;
	}
	public String getCrObservacoes() {
		return crObservacoes;
	}
	public void setCrObservacoes(String crObservacoes) {
		this.crObservacoes = crObservacoes;
	}
	public ResultSet getResposta() {
		return res;
	}
    
    
}
