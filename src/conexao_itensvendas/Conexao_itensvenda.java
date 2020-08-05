package conexao_itensvendas;

import java.sql.SQLException;

import crud.Crud;
import db.DB;
import db.DbException;

	public class Conexao_itensvenda extends AConexao_itensvenda implements Crud {
		
		@Override
	
		public boolean excluirDados() {
		boolean testa = false;
		try {
			con = DB.getConnection();
			stm = con.prepareStatement(EXCLUI_ITENSVENDA);
			
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
			stm = con.prepareStatement(CONSULTA_ITENSVENDA);
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
			stm.setString(7, getItvEmbalagem());
			stm.setDouble(8, getItvQtde());
			stm.setDouble(9, getItvValorun());
			stm.setDouble(10, getItvDesc());
			stm.setDouble(11, getItvValortotal());
			
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
			stm = con.prepareStatement(ALTERA_ITENSVENDA);
			
			stm.setInt(1, getProCodigo());
			stm.setInt(2, getTppCodigo());
			stm.setInt(3, getNfCodigo());
			stm.setInt(4, getForCodigo());
			stm.setInt(5, getTpgCodigo());
			stm.setString(6, getItvEmbalagem());
			stm.setDouble(7, getItvQtde());
			stm.setDouble(8, getItvValorun());
			stm.setDouble(9, getItvDesc());
			stm.setDouble(10, getItvValortotal());
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
			stm = con.prepareStatement(LISTAR_ITENSVENDA);
			
			res = stm.executeQuery();
			
			
		}catch(SQLException e ) {
			throw new DbException(e.getMessage());
		}finally {
			//DB.closeConnection();
		}
		
	  }
}
