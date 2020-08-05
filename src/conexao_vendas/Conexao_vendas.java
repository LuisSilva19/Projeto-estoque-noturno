package conexao_vendas;

import java.sql.SQLException;

import crud.Crud;
import db.DB;
import db.DbException;

	public class Conexao_vendas extends AConexao_vendas implements Crud {
		
		@Override
	
		public boolean excluirDados() {
		boolean testa = false;
		try {
			con = DB.getConnection();
			stm = con.prepareStatement(EXCLUI_VENDAS);
			
			stm.setInt(1, getVenCodigo());
			
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
			stm = con.prepareStatement(CONSULTA_VENDAS);
			stm.setInt(1, getVenCodigo());
	
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
			stm = con.prepareStatement(INSERE_VENDAS);
			int i = 1;
			
			stm.setInt(i++, getVenCodigo());
			stm.setInt(i++, getFunCodigo());
			stm.setInt(i++, getTpgCodigo());
			stm.setInt(i++, getNfCodigo());
			stm.setString(i++,getVenDatavenda());
			stm.setDouble(i++, getVenValortotal());
			stm.setString(i++,getVenObservacoes());
			
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
			int i = 1;
			
			stm.setInt(i++, getFunCodigo());
			stm.setInt(i++, getTpgCodigo());
			stm.setInt(i++, getNfCodigo());
			stm.setString(i++,getVenDatavenda());
			stm.setDouble(i++, getVenValortotal());
			stm.setString(i++,getVenObservacoes());
			stm.setInt(i++, getVenCodigo());
			
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
			stm = con.prepareStatement(LISTAR_VENDAS);
			
			res = stm.executeQuery();
			
			
		}catch(SQLException e ) {
			throw new DbException(e.getMessage());
		}finally {
			//DB.closeConnection();
		}
		
	  }
	
	
}
