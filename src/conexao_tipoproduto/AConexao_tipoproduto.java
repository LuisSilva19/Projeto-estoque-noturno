package conexao_tipoproduto;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public abstract class AConexao_tipoproduto {
	
	public Connection con;  
    public PreparedStatement stm;  
    public ResultSet res = null;
    
	private int tppCodigo;
	private String tppDescricao;
	
	public int getTppCodigo() {
		return tppCodigo;
	}
	public void setTppCodigo(int tppCodigo) {
		this.tppCodigo = tppCodigo;
	}
	public String getTppDescricao() {
		return tppDescricao;
	}
	public void setTppDescricao(String tppDescricao) {
		this.tppDescricao = tppDescricao;
	}
	public ResultSet getResultado() {
		return res;
	}
	
	
	
}
