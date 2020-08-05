package conexao_contareceber;

import java.sql.SQLException;

import crud.Crud;
import db.DB;
import db.DbException;

public class Conexao_contareceber extends AConexao_contareceber implements Crud {
	
	@Override
	public boolean excluirDados() {
		boolean testa = false;
		try {
			con = DB.getConnection();
			stm = con.prepareStatement(EXCLUI_CONTA_RECEBER);
			
			stm.setInt(1, getCrCodigo());
			
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
			stm = con.prepareStatement(CONSULTA_CONTA_RECEBER);
			stm.setInt(1, getCrCodigo());

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
			stm.setInt(1, getCrCodigo());
			stm.setDouble(2, getCrValorConta());
			stm.setString(3, getCrDataVencimento());
			stm.setString(4, getCrDataRecebimento());
			stm.setInt(5, getNfCodigo());
			stm.setString(6,getCrObservacoes());
			
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
			stm.setDouble(1, getCrValorConta());
			stm.setString(2, getCrDataVencimento());
			stm.setString(3, getCrDataRecebimento());
			stm.setInt(4, getNfCodigo());
			stm.setString(5,getCrObservacoes());
			stm.setInt(6, getCrCodigo());
			
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
			stm = con.prepareStatement(LISTAR_CONTA_RECEBER);
			
			res = stm.executeQuery();
			
			
		}catch(SQLException e ) {
			throw new DbException(e.getMessage());
		}finally {
			//DB.closeConnection();
		}
		
	}

}
