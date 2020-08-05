package conexao_notafiscal;

import java.sql.SQLException;

import crud.Crud;
import db.DB;
import db.DbException;

public class Conexao_notafiscal extends AConexao_notafiscal implements Crud {
	
	@Override
	public boolean excluirDados() {
		
		boolean testa = false;
		try {
			String query = "DELETE FROM TB_NOTAFISCAL WHERE NF_CODIGO = ?";
			con = DB.getConnection();
			stm = con.prepareStatement(query);
			
			stm.setInt(1, getNfCodigo());
			
			int rows = stm.executeUpdate();
			
			if(rows >0) {
				testa = true;
			}else {
				testa = false;
			}
			
			return testa;
		}catch(SQLException e) {
			e.getMessage();
			
		}finally {
			//DB.closeConnection();
		}
		return testa;

	}

	@Override
	public boolean consultaDados() {
		boolean testa = false;
		try {
			con = DB.getConnection();
			stm = con.prepareStatement(CONSULTA_NOTA_FISCAL);
			stm.setInt(1, getNfCodigo());

			res = stm.executeQuery();
			
			if(res.next()) {
				testa = true;
			}
				
			
		}catch(SQLException e) {
			throw new DbException(e.getMessage());
		}finally {
			//DB.closeConnection();
		}
		
		return testa;

	}

	@Override
	public void inserirDados() {
		try {
			con = DB.getConnection();
			stm = con.prepareStatement(INSERE_NOTA_FISCAL);
			stm.setInt(1, getNfCodigo());
			stm.setFloat(2, getNfValornf());
			stm.setFloat(3, getNfTaxaimpostonf());
			stm.setFloat(4, getNfValorimposto());
			
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
			stm = con.prepareStatement(ALTERA_NOTA_FISCAL);
			
			stm.setDouble(1, getNfValornf());
			stm.setDouble(2, getNfTaxaimpostonf());
			stm.setDouble(3, getNfValorimposto());
			stm.setInt(4, getNfCodigo());
			
			int rows = stm.executeUpdate();
			
			if(rows >0) {
				testa = true;
			}
			
		}catch(SQLException e ) {
			throw new DbException(e.getMessage());
		}finally {
			//DB.closeConnection();
		}
		return testa;
	}
	
	@Override
	public void listarDados() {
		
		try {
			con = DB.getConnection();
			stm = con.prepareStatement(LISTAR_NOTA_FISCAL);
			res = stm.executeQuery();
			
		}catch(SQLException e ) {
			throw new DbException(e.getMessage());
		}finally {
			//DB.closeConnection();
		
		}
		
	}
	
	
	public static void main(String[] args) {
		
		Conexao_notafiscal a = new Conexao_notafiscal();
		
		a.setNfCodigo(18);
		a.setNfTaxaimpostonf(58);
		a.setNfValorimposto(300);
		a.setNfValornf(37);
		
		a.inserirDados();
		
		//boolean b = a.alterarDados();
		//if(b) {
			//.out.println("Alterou");
		//}
		
//		Connection con = DB.getConnection();
//		DB.closeConnection();
	}

	
}
