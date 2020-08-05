package conexao_funcionario;

import java.sql.SQLException;

import crud.Crud;
import db.DB;
import db.DbException;

public class Conexao_funcionario extends AConexao_funcionario implements Crud {
	
	@Override
	public boolean excluirDados() {
		boolean testa = false;
		try {
			con = DB.getConnection();
			stm = con.prepareStatement(EXCLUI_FUNCIONARIO);
			
			stm.setInt(1, getFunCodigo());
			
			int rows = stm.executeUpdate();
			
			if(rows >0) {
				testa = true;
			}else {
				testa = false;
			}
			
			return testa;
			
		}catch(SQLException e) {
			throw new DbException(e.getMessage());
			
		}finally {
			//DB.closeConnection();
			
		}
	}

	@Override
	public boolean consultaDados() {
		boolean testa = false;
		try {
			con = DB.getConnection();
			stm = con.prepareStatement(CONSULTA_FUNCIONARIO);
			stm.setInt(1, getFunCodigo());

			res = stm.executeQuery();
			
			if(res.next()) {
				testa = true;
			}
				
			return testa;
			
		}catch(SQLException e) {
			throw new DbException(e.getMessage());
		}finally {
			//DB.closeConnection();
		}
	}

	@Override
	public void inserirDados() {
		try {
			con = DB.getConnection();
			stm = con.prepareStatement(INSERE_FUNCIONARIO);
			
			stm.setInt(1, getFunCodigo());
			stm.setString(2, getFunNome());
			stm.setString(3, getFunEndereco());
			stm.setString(4, getFunNumero());
			stm.setString(5, getFunComplemento());
			stm.setString(6, getFunBairro());
			stm.setString(7, getFunCidade());
			stm.setString(8, getFunUf());
			stm.setString(9, getFunCnpjcpf());
			stm.setString(10, getFunRgie());
			stm.setString(11, getFunSexo());
			stm.setString(12, getFunNascimento());
			stm.setString(13, getFunTelefone());
			stm.setString(14, getFunCelular());
			stm.setString(15, getFunEmail());
			stm.setDouble(16, getFunSalario());

			int rows = stm.executeUpdate();
			
		}catch(SQLException e ) {
			throw new DbException(e.getMessage());
		}finally {
			//DB.closeConnection();
		}

	}

	@Override
	public boolean alterarDados() {
boolean testa = false;
		
		try {
			 con = DB.getConnection();
			stm = con.prepareStatement(ALTERA_FUNCIONARIO);
			
			stm.setString(1, getFunNome());
			stm.setString(2, getFunEndereco());
			stm.setString(3, getFunNumero());
			stm.setString(4, getFunComplemento());
			stm.setString(5, getFunBairro());
			stm.setString(6, getFunCidade());
			stm.setString(7, getFunUf());
			stm.setString(8, getFunCnpjcpf());
			stm.setString(9, getFunRgie());
			stm.setString(10, getFunSexo());
			stm.setString(11, getFunNascimento());
			stm.setString(12, getFunTelefone());
			stm.setString(13, getFunCelular());
			stm.setString(14, getFunEmail());
			stm.setDouble(15, getFunSalario());
			stm.setInt(16, getFunCodigo());
			
			int rows = stm.executeUpdate();
			
			if(rows >0) {
				testa = true;
			}
			return testa;
			
		}catch(SQLException e ) {
			throw new DbException(e.getMessage());
		}finally {
			//DB.closeConnection();
		}
	}

	@Override
	public void listarDados() {
		try {
			con = DB.getConnection();
			stm = con.prepareStatement(LISTAR_FUNCIONARIO);
			
			res = stm.executeQuery();
			
			
		}catch(SQLException e ) {
			throw new DbException(e.getMessage());
		}finally {
			//DB.closeConnection();
		}		
	}

}
