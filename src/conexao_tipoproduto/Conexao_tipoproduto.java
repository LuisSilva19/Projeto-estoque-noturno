package conexao_tipoproduto;

import java.sql.SQLException;

import crud.Crud;
import db.DB;
import db.DbException;

public class Conexao_tipoproduto extends AConexao_tipoproduto implements Crud {
		
		
		@Override
	
		public boolean excluirDados() {
		boolean testa = false;
		try {
			con = DB.getConnection();
			stm = con.prepareStatement(EXCLUI_TIPO_PRODUTO);
			
			stm.setInt(1, getTppCodigo());
			
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
			stm = con.prepareStatement(CONSULTA_TIPO_PRODUTO);
			stm.setInt(1, getTppCodigo());
	
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
			stm = con.prepareStatement(INSERE_TIPO_PRODUTO);
			stm.setInt(1, getTppCodigo());
			stm.setString(2, getTppDescricao());
			
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
			stm.setString(2, getTppDescricao());
			stm.setInt(6, getTppCodigo());
			
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
			stm = con.prepareStatement(LISTAR_TIPO_PRODUTO);
			
			res = stm.executeQuery();
			
			
		}catch(SQLException e ) {
			throw new DbException(e.getMessage());
		}finally {
			//DB.closeConnection();
		}
		
	  }
	
	
}
