package conexao_contapagar;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public abstract class AConexao_contapagar {
	
	public Connection con;
	public PreparedStatement stm;  
    public ResultSet res = null;
    
    private int cpCodigo;
    private double cpValorConta;
    private String cpDataVencimento;
    private String cpDataPagamento;
    private int nfCodigo;
    private String cpObservacoes;
    
    public int getCpCodigo() {
		return cpCodigo;
	}
	public void setCpCodigo(int cpCodigo) {
		this.cpCodigo = cpCodigo;
	}
	public double getCpValorConta() {
		return cpValorConta;
	}
	public void setCpValorConta(double cpValorConta) {
		this.cpValorConta = cpValorConta;
	}
	public String getCpDataVencimento() {
		return cpDataVencimento;
	}
	public void setCpDataVencimento(String cpDataVencimento) {
		this.cpDataVencimento = cpDataVencimento;
	}
	public String getCpDataPagamento() {
		return cpDataPagamento;
	}
	public void setCpDataPagamento(String cpDataPagamento) {
		this.cpDataPagamento = cpDataPagamento;
	}
	public int getNfCodigo() {
		return nfCodigo;
	}
	public void setNfCodigo(int nfCodigo) {
		this.nfCodigo = nfCodigo;
	}
	public String getCpObservacoes() {
		return cpObservacoes;
	}
	public void setCpObservacoes(String cpObservacoes) {
		this.cpObservacoes = cpObservacoes;
	}
	public ResultSet getResposta() {
		return res;
	}
    
}
