package conexao_produto;

import java.sql.SQLException;

import crud.Crud;
import db.DB;
import db.DbException;

public class Conexao_produto extends AConexao_produto implements Crud {
		
		
		@Override
	
		public boolean excluirDados() {
		boolean testa = false;
		try {
			con = DB.getConnection();
			stm = con.prepareStatement(EXCLUI_PRODUTO);
			
			stm.setInt(1, getProCodigo());
			
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
			stm = con.prepareStatement(CONSULTA_PRODUTO);
			stm.setInt(1,getProCodigo());
	
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
			stm = con.prepareStatement(INSERE_PRODUTO);
			
			stm.setInt(1,getProCodigo());
			stm.setString(2, getProDescricao());
			stm.setInt(3, getTppCodigo());
			stm.setDouble(4, getProPrecocusto());
			stm.setDouble(5, getProPrecovenda());
			stm.setDouble(6,getProEstoque());
			stm.setString(7, getProEmbalagem());
			stm.setDouble(8,getProIpi());
			
			int rows = stm.executeUpdate();
			
		}catch(SQLException e) {
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
			stm = con.prepareStatement(ALTERA_CONTA_PAGAR);
			stm.setString(1, getProDescricao());
			stm.setInt(2, getTppCodigo());
			stm.setDouble(3, getProPrecocusto());
			stm.setDouble(4, getProPrecovenda());
			stm.setDouble(5,getProEstoque());
			stm.setString(6, getProEmbalagem());
			stm.setDouble(7,getProIpi());
			stm.setInt(8,getProCodigo());
			
			int rows = stm.executeUpdate();
			
			if(rows >0) {
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
	public void listarDados() {
		boolean testa = false;
		
		try {
			con = DB.getConnection();
			stm = con.prepareStatement(LISTAR_PRODUTO);
			
			res = stm.executeQuery();
			
			
		}catch(SQLException e ) {
			throw new DbException(e.getMessage());
		}finally {
			//DB.closeConnection();
		}
		
	  }
	
	
}
