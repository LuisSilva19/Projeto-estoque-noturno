package conexao_funcionario;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public abstract class AConexao_funcionario {
	
	public Connection con;  
    public PreparedStatement stm;  
    public ResultSet res = null;
    
    private int funCodigo;
	private String funNome;
	private String funEndereco;
	private String funNumero;
	private String funComplemento;
	private String funBairro;
	private String funCidade;
	private String funUf;
	private String funCnpjcpf;
	private String funRgie;
	private String funSexo;
	private String funNascimento;
	private String funTelefone;
	private String funFax;
	private String funCelular;
	private String funEmail;
	private double funSalario;
	
	public int getFunCodigo() {
		return funCodigo;
	}
	public void setFunCodigo(int funCodigo) {
		this.funCodigo = funCodigo;
	}
	public String getFunNome() {
		return funNome;
	}
	public void setFunNome(String funNome) {
		this.funNome = funNome;
	}
	public String getFunEndereco() {
		return funEndereco;
	}
	public void setFunEndereco(String funEndereco) {
		this.funEndereco = funEndereco;
	}
	public String getFunNumero() {
		return funNumero;
	}
	public void setFunNumero(String funNumero) {
		this.funNumero = funNumero;
	}
	public String getFunComplemento() {
		return funComplemento;
	}
	public void setFunComplemento(String funComplemento) {
		this.funComplemento = funComplemento;
	}
	public String getFunBairro() {
		return funBairro;
	}
	public void setFunBairro(String funBairro) {
		this.funBairro = funBairro;
	}
	public String getFunCidade() {
		return funCidade;
	}
	public void setFunCidade(String funCidade) {
		this.funCidade = funCidade;
	}
	public String getFunUf() {
		return funUf;
	}
	public void setFunUf(String funUf) {
		this.funUf = funUf;
	}
	public String getFunCnpjcpf() {
		return funCnpjcpf;
	}
	public void setFunCnpjcpf(String funCnpjcpf) {
		this.funCnpjcpf = funCnpjcpf;
	}
	public String getFunRgie() {
		return funRgie;
	}
	public void setFunRgie(String funRgie) {
		this.funRgie = funRgie;
	}
	public String getFunSexo() {
		return funSexo;
	}
	public void setFunSexo(String funSexo) {
		this.funSexo = funSexo;
	}
	public String getFunNascimento() {
		return funNascimento;
	}
	public void setFunNascimento(String funNascimento) {
		this.funNascimento = funNascimento;
	}
	public String getFunTelefone() {
		return funTelefone;
	}
	public void setFunTelefone(String funTelefone) {
		this.funTelefone = funTelefone;
	}
	public String getFunFax() {
		return funFax;
	}
	public void setFunFax(String funFax) {
		this.funFax = funFax;
	}
	public String getFunCelular() {
		return funCelular;
	}
	public void setFunCelular(String funCelular) {
		this.funCelular = funCelular;
	}
	public String getFunEmail() {
		return funEmail;
	}
	public void setFunEmail(String funEmail) {
		this.funEmail = funEmail;
	}
	public double getFunSalario() {
		return funSalario;
	}
	public void setFunSalario(double funSalario) {
		this.funSalario = funSalario;
	}
	public ResultSet getResultado() {
		return res;
	}
	
	
	
}
