package conexao_fornecedor;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public abstract class Aconexao_fornecedor {
	
	public Connection con;  
    public PreparedStatement stm;  
    public ResultSet res = null;

	private int forCodigo;
	private String forNome;
	private String forEndereco;
	private String forNumero;
	private String forBairro;
	private String forCidade;
	private String forUf;
	private String forCnpjcpf;
	private String forRgie;
	private String forTelefone;
	private String forFax;
	private String forCelular;
	private String forEmail;
	
	public int getForCodigo() {
		return forCodigo;
	}
	public void setForCodigo(int forCodigo) {
		this.forCodigo = forCodigo;
	}
	public String getForNome() {
		return forNome;
	}
	public void setForNome(String forNome) {
		this.forNome = forNome;
	}
	public String getForEndereco() {
		return forEndereco;
	}
	public void setForEndereco(String forEndereco) {
		this.forEndereco = forEndereco;
	}
	public String getForNumero() {
		return forNumero;
	}
	public void setForNumero(String forNumero) {
		this.forNumero = forNumero;
	}
	
	public String getForBairro() {
		return forBairro;
	}
	public void setForBairro(String forBairro) {
		this.forBairro = forBairro;
	}
	public String getForCidade() {
		return forCidade;
	}
	public void setForCidade(String forCidade) {
		this.forCidade = forCidade;
	}
	public String getForUf() {
		return forUf;
	}
	public void setForUf(String forUf) {
		this.forUf = forUf;
	}
	public String getForCnpjcpf() {
		return forCnpjcpf;
	}
	public void setForCnpjcpf(String forCnpjcpf) {
		this.forCnpjcpf = forCnpjcpf;
	}
	public String getForRgie() {
		return forRgie;
	}
	public void setForRgie(String forRgie) {
		this.forRgie = forRgie;
	}
	public String getForTelefone() {
		return forTelefone;
	}
	public void setForTelefone(String forTelefone) {
		this.forTelefone = forTelefone;
	}
	public String getForCelular() {
		return forCelular;
	}
	public void setForCelular(String forCelular) {
		this.forCelular = forCelular;
	}
	public String getForFax() {
		return forFax;
	}
	public void setForFax(String forFax) {
		this.forFax = forFax;
	}
	public String getForEmail() {
		return forEmail;
	}
	public void setForEmail(String forEmail) {
		this.forEmail = forEmail;
	}
	public ResultSet getResultado() {
		return res;
	}
	
	
	
	

}
