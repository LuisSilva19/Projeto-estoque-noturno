package conexao_fornecedor;

import java.sql.SQLException;

import crud.Crud;
import db.DB;
import db.DbException;

public class Conexao_fornecedor extends Aconexao_fornecedor implements Crud {

	@Override
	public boolean excluirDados() {
		boolean testa = false;
		try {
			con = DB.getConnection();
			stm = con.prepareStatement(EXCLUI_FORNECEDOR);

			stm.setInt(1, getForCodigo());

			int rows = stm.executeUpdate();

			if (rows > 0) {
				testa = true;
			} else {
				testa = false;
			}

			return testa;

		} catch (SQLException e) {
			throw new DbException(e.getMessage());

		} finally {
			//DB.closeConnection();

		}
	}

	@Override
	public boolean consultaDados() {
		boolean testa = false;
		try {
			con = DB.getConnection();
			stm = con.prepareStatement(CONSULTA_FORNECEDOR);
			stm.setInt(1, getForCodigo());

			res = stm.executeQuery();

			if (res.next()) {
				testa = true;
			}

			return testa;

		} catch (SQLException e) {
			throw new DbException(e.getMessage());
		} finally {
			//DB.closeConnection();
		}
	}

	@Override
	public void inserirDados() {
		try {
			con = DB.getConnection();
			stm = con.prepareStatement(INSERE_FORNECEDOR);

			stm.setInt(1, getForCodigo());
			stm.setString(2, getForNome());
			stm.setString(3, getForEndereco());
			stm.setString(4, getForNumero());
			stm.setString(5, getForBairro());
			stm.setString(6, getForCidade());
			stm.setString(7, getForUf());
			stm.setString(8, getForCnpjcpf());
			stm.setString(9, getForRgie());
			stm.setString(10, getForTelefone());
			stm.setString(11, getForFax() );
			stm.setString(12, getForCelular());
			stm.setString(13, getForEmail());

			int rows = stm.executeUpdate();

		} catch (SQLException e) {
			throw new DbException(e.getMessage());
		} finally {
			//DB.closeConnection();
		}

	}

	@Override
	public boolean alterarDados() {
		boolean testa = false;

		try {
			con = DB.getConnection();
			stm = con.prepareStatement(ALTERA_FORNECEDOR);

			stm.setString(1, getForNome());
			stm.setString(2, getForEndereco());
			stm.setString(3, getForNumero());
			stm.setString(5, getForBairro());
			stm.setString(6, getForCidade());
			stm.setString(7, getForUf());
			stm.setString(8, getForCnpjcpf());
			stm.setString(9, getForRgie());
			stm.setString(10, getForTelefone());
			stm.setString(11, getForFax());
			stm.setString(12, getForCelular());
			stm.setString(13, getForEmail());
			stm.setInt(14, getForCodigo());

			int rows = stm.executeUpdate();

			if (rows > 0) {
				testa = true;
			}
			return testa;

		} catch (SQLException e) {
			throw new DbException(e.getMessage());
		} finally {
			//DB.closeConnection();
		}
	}

	@Override
	public void listarDados() {
		try {
			con = DB.getConnection();
			stm = con.prepareStatement(LISTAR_FORNECEDOR);

			res = stm.executeQuery();

		} catch (SQLException e) {
			throw new DbException(e.getMessage());
		} finally {
			//DB.closeConnection();
		}
	}

}
