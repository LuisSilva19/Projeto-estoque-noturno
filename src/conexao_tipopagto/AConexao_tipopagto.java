package conexao_tipopagto;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public abstract class AConexao_tipopagto {
	
	public Connection con;  
    public PreparedStatement stm;  
    public ResultSet res = null;
    
    private int tpgCodigo;
    private String tpgDescricao;
    private int tpgQtde;
    private String tpgAtivo;
    
	public int getTpgCodigo() {
		return tpgCodigo;
	}
	public void setTpgCodigo(int tpgCodigo) {
		this.tpgCodigo = tpgCodigo;
	}
	public String getTpgDescricao() {
		return tpgDescricao;
	}
	public void setTpgDescricao(String tpgDescricao) {
		this.tpgDescricao = tpgDescricao;
	}
	public int getTpgQtde() {
		return tpgQtde;
	}
	public void setTpgQtde(int tpgQtde) {
		this.tpgQtde = tpgQtde;
	}
	public String getTpgAtivo() {
		return tpgAtivo;
	}
	public void setTpgAtivo(String tpgAtivo) {
		this.tpgAtivo = tpgAtivo;
	}
	public ResultSet getResposta() {
		return res;
	}
    
}
