package conexao_itenscompra;

import java.sql.SQLException;

import crud.Crud;
import db.DB;
import db.DbException;

	public class Conexao_itenscompra extends AConexao_itenscompra implements Crud {
		
		@Override
	
		public boolean excluirDados() {
		boolean testa = false;
		try {
			con = DB.getConnection();
			stm = con.prepareStatement(EXCLUI_ITENSCOMPRA);
			
			stm.setInt(1, getComCodigo());
			
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
			stm = con.prepareStatement(CONSULTA_ITENSCOMPRA);
			stm.setInt(1, getComCodigo());
	
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
			stm = con.prepareStatement(INSERE_CONTA_RECEBER);
			stm.setInt(1, getProCodigo());
			stm.setInt(2, getProCodigo());
			stm.setInt(3, getTppCodigo());
			stm.setInt(4, getNfCodigo());
			stm.setInt(5, getForCodigo());
			stm.setInt(6, getTpgCodigo());
			stm.setString(7, getItcEmbalagem());
			stm.setDouble(8, getItcQtde());
			stm.setDouble(9, getItcValorun());
			stm.setDouble(10, getItcDesc());
			stm.setDouble(11, getItcValortotal());
			
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
			stm = con.prepareStatement(ALTERA_ITENSCOMPRA);
			
			stm.setInt(1, getProCodigo());
			stm.setInt(2, getTppCodigo());
			stm.setInt(3, getNfCodigo());
			stm.setInt(4, getForCodigo());
			stm.setInt(5, getTpgCodigo());
			stm.setString(6, getItcEmbalagem());
			stm.setDouble(7, getItcQtde());
			stm.setDouble(8, getItcValorun());
			stm.setDouble(9, getItcDesc());
			stm.setDouble(10, getItcValortotal());
			stm.setInt(11, getProCodigo());
			
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
			stm = con.prepareStatement(LISTAR_ITENSCOMPRA);
			
			res = stm.executeQuery();
			
			
		}catch(SQLException e ) {
			throw new DbException(e.getMessage());
		}finally {
			//DB.closeConnection();
		}
		
	  }
}
