package conexao_compras;

import java.sql.SQLException;

import crud.Crud;
import db.DB;
import db.DbException;

public class Conexao_compras extends AConexao_compras implements Crud {

	@Override
	public boolean excluirDados() {
		boolean testa = false;
		
		try {
			con = DB.getConnection();
			stm = con.prepareStatement(EXCLUIR_COMPRAS);
			stm.setInt(1, getComCodigo());
			
			int rows = stm.executeUpdate();
			
			if(rows> 0 ) {
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
	public boolean consultaDados() {
		
		boolean testa = false;
		try {
			con = DB.getConnection();
			stm = con.prepareStatement(CONSULTAR_COMPRAS);
			stm.setInt(1, getComCodigo());
			
			int rows = stm.executeUpdate();
			if(rows> 0) {
				testa = true;
			}
			
			return testa ;
			
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
			stm = con.prepareStatement(INSERE_COMPRAS);
			stm.setInt(1, getComCodigo());
			stm.setInt(2, getTpgCodigo());
			stm.setInt(3, getForCodigo());
			stm.setInt(4, getNfCodigo());
			stm.setString(5, getComDataCompra());
			stm.setDouble(6, getComValorTotal());
			stm.setString(7, getComObservacao());
			
			int rows = stm.executeUpdate();
			if(rows<1) {
				throw new DbException("Nenhuma linha afetada");
			}
		}catch(SQLException e) {
			throw new DbException(e.getMessage());
		}finally {
			//DB.closeConnection();
		}
		

	}

	@Override
	public boolean alterarDados() {
		
		boolean testa= false;
		try {
			con = DB.getConnection();
			stm = con.prepareStatement(ALTERA_COMPRAS);
			stm.setInt(1, getTpgCodigo());
			stm.setInt(2, getForCodigo());
			stm.setInt(3, getNfCodigo());
			stm.setString(4, getComDataCompra());
			stm.setDouble(5, getComValorTotal());
			stm.setString(6, getComObservacao());
			stm.setInt(7, getComCodigo());
			
			int rows = stm.executeUpdate();
			
			if(rows> 0) {
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
	public void listarDados() {
		
		try {
			con = DB.getConnection();
			stm = con.prepareStatement(LISTAR_COMPRAS);
			res = stm.executeQuery();
			
		}catch(SQLException e) {
			throw new DbException(e.getMessage());
		}finally {
			//DB.closeConnection();
		}
	}

}
