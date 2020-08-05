package conexao_contapagar;

import java.sql.SQLException;

import crud.Crud;
import db.DB;
import db.DbException;

public class Conexao_contapagar extends AConexao_contapagar implements Crud {
	
	@Override
	public boolean excluirDados() {
		boolean testa = false;
		
		try {
			con = DB.getConnection();
			stm = con.prepareStatement(EXCLUI_CONTA_PAGAR);
			stm.setInt(1, getCpCodigo());
			
			int rows = stm.executeUpdate();
			
			if(rows>0) {
				testa= true;
			}
			
			return testa;
		}catch(SQLException e) {
			throw new DbException(e.getMessage());
		}finally {
			DB.closeConnection();
		}
	}

	@Override
	public boolean consultaDados() {
		boolean testa = false;
		try {
			con = DB.getConnection();
			stm = con.prepareStatement(CONSULTA_CONTA_PAGAR);
			stm.setInt(1, getCpCodigo());
			
			int rows = stm.executeUpdate();
			if(rows>0) {
				testa= true;
			}
			return testa;
		}catch(SQLException e) {
			throw new DbException(e.getMessage());
		}finally {
			DB.closeConnection();
		}
	}

	@Override
	public void inserirDados() {
		try {
			con = DB.getConnection();
			stm = con.prepareStatement(INSERE_CONTA_PAGAR);
			stm.setInt(1, getCpCodigo());
			stm.setDouble(2, getCpValorConta());
			stm.setString(3, getCpDataVencimento());
			stm.setString(4, getCpDataPagamento());
			stm.setInt(5, getNfCodigo());
			stm.setString(6,getCpObservacoes());
			
			int rows = stm.executeUpdate();
		}catch(SQLException e) {
			throw new DbException(e.getMessage());
		}finally {
			DB.closeConnection();
		}
	}

	@Override
	public boolean alterarDados() {
		boolean testa = false;
		
		try {
			con = DB.getConnection();
			stm = con.prepareStatement(ALTERA_CONTA_PAGAR);
			stm.setDouble(1, getCpValorConta());
			stm.setString(2, getCpDataVencimento());
			stm.setString(3, getCpDataPagamento());
			stm.setInt(4, getNfCodigo());
			stm.setString(5,getCpObservacoes());
			stm.setInt(6, getCpCodigo());
			
			int rows = stm.executeUpdate();
			
			if(rows >0) {
				testa = true;
			}
			
			return testa ;
		}catch(SQLException e) {
			throw new DbException(e.getMessage());
			
		}finally {
			DB.closeConnection();
		}
	}

	@Override
	public void listarDados() {
		try {
			con = DB.getConnection();
			stm = con.prepareStatement(LISTAR_CONTA_PAGAR);
			
			stm.execute();
		}catch(SQLException e) {
			throw new DbException(e.getMessage());
		}finally {
			DB.closeConnection();
		}
	}

}
