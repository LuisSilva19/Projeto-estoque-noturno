package crud;

public interface Crud {
	
	public abstract boolean excluirDados();
	public boolean consultaDados();
	public void inserirDados();
	public boolean alterarDados();
	public void listarDados();
	
	
	public static final String EXCLUI_COMPRAS = "DELETE FROM TB_COMPRAS WHERE COM_CODIGO = ? ";
	public static final String EXCLUI_CONTA_PAGAR = "DELETE FROM TB_CONTAPAGAR WHERE CP_CODIGO = ?  ";
	public static final String EXCLUI_CONTA_RECEBER = "DELETE FROM TB_CONTARECEBER WHERE CR_CODIGO = ? ";
	public static final String EXCLUI_FORNECEDOR = "DELETE FROM TB_FORNECEDOR WHERE FOR_CODIGO = ? ";
	public static final String EXCLUI_FUNCIONARIO = "DELETE FROM TB_FUNCIONARIO WHERE FUN_CODIGO = ? ";
	public static final String EXCLUI_ITENSCOMPRA = "DELETE FROM TB_ITENSCOMPRA WHERE COM_CODIGO = ? ";
	public static final String EXCLUI_ITENSVENDA= "DELETE FROM TB_ITENSVENDA WHERE VEN_CODIGO = ? ";
	public static final String EXCLUI_NOTA_FISCAL = "DELETE FROM TB_NOTAFISCAL WHERE NF_CODIGO = ?";
	public static final String EXCLUI_PRODUTO = "DELETE FROM TB_PRODUTO WHERE COM_CODIGO = ? ";
	public static final String EXCLUI_TIPO_PAGTO = "DELETE FROM TB_TIPOPAGTO WHERE TPP_CODIGO = ? ";
	public static final String EXCLUI_TIPO_PRODUTO = "DELETE FROM TB_PRODUTO WHERE TPG_CODIGO = ? ";
	public static final String EXCLUI_VENDAS= "DELETE FROM TB_VENDAS WHERE VEN_CODIGO = ? ";
	
	
	public static final String CONSULTA_COMPRAS = "SELECT * FROM TB_COMPRAS WHERE COM_CODIGO = ?";
	public static final String CONSULTA_CONTA_PAGAR = "SELECT * FROM TB_CONTAPAGAR WHERE CP_CODIGO = ?";
	public static final String CONSULTA_CONTA_RECEBER = "SELECT * FROM TB_CONTARECEBER WHERE CR_CODIGO = ?";
	public static final String CONSULTA_FORNECEDOR = "SELECT * FROM TB_FORNECEDOR WHERE FOR_CODIGO = ?";
	public static final String CONSULTA_FUNCIONARIO = "SELECT * FROM TB_FUNCIONARIO WHERE FUN_CODIGO = ?";
	public static final String CONSULTA_ITENSCOMPRA = "SELECT * FROM TB_COMPRAS WHERE COM_CODIGO = ?";
	public static final String CONSULTA_ITENSVENDA= "SELECT * FROM TB_ITENSVENDA WHERE VEN_CODIGO = ?";
	public static final String CONSULTA_NOTA_FISCAL = "SELECT * FROM TB_NOTAFISCAL WHERE NF_CODIGO = ?";
	public static final String CONSULTA_PRODUTO = "SELECT * FROM TB_PRODUTO WHERE COM_CODIGO = ?";
	public static final String CONSULTA_TIPO_PAGTO = "SELECT * FROM TB_TIPOPAGTO WHERE  TPP_CODIGO = ?";
	public static final String CONSULTA_TIPO_PRODUTO = "SELECT * FROM TB_PRODUTO WHERE TPG_CODIGO = ?";
	public static final String CONSULTA_VENDAS= "SELECT * FROM TB_VENDAS WHERE VEN_CODIGO = ?";
	
	
	public static final String ALTERA_COMPRAS = "UPDATE TB_COMPRAS" + 
												" SET TPG_CODIGO = ?," + 
													" FOR_CODIGO = ?," + 
													" NF_CODIGO = ?," + 
													" COM_DATACOMPRA = ?," + 
													" COM_VALORTOTAL = ?," + 
													" COM_OBSERVACOES = ?" + 
												"WHERE COM_CODIGO = ?";
	
	public static final String ALTERA_CONTA_PAGAR = "UPDATE TB_CONTAPAGAR " + 
													" SET  " + 
													" CP_VALORCONTA= ?," + 
													" CP_DATAVENCIMENTO= ?," + 
													" CP_DATAPAGAMENTO= ?," + 
													" NF_CODIGO= ?," + 
													" CP_OBSERVACOES= ? " + 
													" WHERE CP_CODIGO = ? ";
	
	public static final String ALTERA_CONTA_RECEBER = "UPDATE TB_CONTARECEBER " + 
														" SET " + 
														" CR_VALORCONTA = ?," + 
														" CR_DATAVENCIMENTO = ?, " + 
														" CR_DATARECEBIMENTO = ?, " + 
														" NF_CODIGO = ?," + 
														" CR_OBSERVACOES = ? " + 
														" WHERE CR_CODIGO = ? ";
	
	public static final String ALTERA_FORNECEDOR = "UPDATE TB_FORNECEDOR " + 
													" SET " + 
													" FOR_NOME = ?," + 
													" FOR_ENDERECO = ?," + 
													" FOR_NUMERO = ?," + 
													" FOR_BAIRRO = ?," + 
													" FOR_CIDADE = ?," + 
													" FOR_CNPJCPF = ?," + 
													" FOR_RGIE = ?," + 
													" FOR_TELEFONE = ?," + 
													" FOR_FAX = ?," +
													" FOR_CELULAR = ?," + 
													" FOR_EMAIL = ?" + 
													" WHERE FOR_CODIGO = ?";
	
	public static final String ALTERA_FUNCIONARIO = "UPDATE TB_FUNCIONARIO " + 
													" SET  " + 
													" FUN_NOME = ?, " + 
													" FUN_ENDERECO = ?, " + 
													" FUN_NUMERO = ?, " + 
													" FUN_COMPLEMENTO = ?, " + 
													" FUN_BAIRRO = ?, " + 
													" FUN_CIDADE = ?, " + 
													" FUN_UF = ? "+
													" FUN_CNPJCPF = ?, " + 
													" FUN_RGIE = ?, " + 
													" FUN_SEXO = ?, " + 
													" FUN_NASCIMENTO = ?, " + 
													" FUN_TELEFONE = ?, " + 
													" FUN_CELULAR = ?, " + 
													" FUN_EMAIL = ?, " + 
													" FUN_SALARIO = ? " + 
													" WHERE FUN_CODIGO = ?";
	
	public static final String ALTERA_ITENSCOMPRA = "UPDATE TB_ITENSCOMPRA " + 
													" SET " + 
													" PRO_CODIGO = ?, " + 
													" TPP_CODIGO = ?, " + 
													" NF_CODIGO = ?," + 
													" FOR_CODIGO = ?, " + 
													" TPG_CODIGO = ?, " + 
													" ITC_EMBALAGEM = ?, " + 
													" ITC_QTDE = ?, " + 
													" ITC_VALORUN = ?, " + 
													" ITC_DESC = ?, " + 
													" ITC_VALORTOTAL = ? " + 
													" WHERE COM_CODIGO = ? ";
	
	public static final String ALTERA_ITENSVENDA= "UPDATE TB_VENDAS " + 
													" SET " + 
													" NF_CODIGO = ?," + 
													" TPG_CODIGO = ?," + 
													" VEN_CODIGO = ?," + 
													" VEN_DATAVENDA = ?," + 
													" VEN_OBSERVACOES = ?," + 
													" VEN_VALORTOTAL = ? " + 
													" WHERE FUN_CODIGO = ? ";
	
	public static final String ALTERA_NOTA_FISCAL = " UPDATE TB_NOTAFISCAL" + 
													" SET NF_VALORNF = ?, " + 
													" NF_TAXAIMPOSTONF = ?, " + 
													" NF_VALORIMPOSTO = ? " + 
													" WHERE NF_CODIGO = ?";
	
	public static final String ALTERA_PRODUTO = "UPDATE TB_PRODUTOS " + 
													" SET " + 
													" PRO_DESCRICAO = ?," + 
													" TPP_CODIGO = ?," + 
													" PRO_PRECOCUSTO = ?," + 
													" PRO_PRECOVENDA = ?," + 
													" PRO_ESTOQUE = ?," + 
													" PRO_EMBALAGEM = ?," + 
													" PRO_IPI = ? " + 
													" WHERE PRO_CODIGO = ? ";
	
	public static final String ALTERA_TIPO_PAGTO = "UPDATE TB_TIPOPAGTO " + 
													"SET " + 
													"TPG_DESCRICAO = ? ," + 
													"TPG_QTDE = ?," + 
													"TPG_ATIVO = ? " + 
													"WHERE TPG_CODIGO =? ";
	
	public static final String ALTERA_TIPO_PRODUTO = "UPDATE TB_TIPOPRODUTO " + 
													 "SET " + 
													 "TPP_DESCRICAO= ?" + 
													 "WHERE TPP_CODIGO = ?";
	
	public static final String ALTERA_VENDAS= "UPDATE TB_VENDAS" + 
												" SET " + 
												" NF_CODIGO = ?, " + 
												" TPG_CODIGO = ?, " + 
												" VEN_CODIGO = ?, " + 
												" VEN_DATAVENDA = ?," + 
												" VEN_OBSERVACOES = ? ," + 
												" VEN_VALORTOTAL = ? " + 
												" WHERE FUN_CODIGO = ? ";
	
	public static final String INSERE_COMPRAS = "INSERT INTO TB_COMPRAS "+
												"(COM_CODIGO,TPG_CODIGO,FOR_CODIGO,NF_CODIGO,COM_DATACOMPRA,COM_VALORTOTAL,COM_OBSERVACOES)" + 
												" VALUES(?,?,?,?,?,?,?)";
	
	public static final String INSERE_CONTA_PAGAR = "INSERT INTO TB_CONTAPAGAR " + 
													" (CP_CODIGO,CP_VALORCONTA,CP_DATAVENCIMENTO,CP_DATAPAGAMENTO,NF_CODIGO,CP_OBSERVACOES)" + 
													" VALUES(?,?,?,?,?,?)";
	
	public static final String INSERE_CONTA_RECEBER = "INSERT INTO TB_CONTARECEBER " + 
														" (CR_CODIGO,CR_VALORCONTA,CR_DATAVENCIMENTO,CR_DATARECEBIMENTO,NF_CODIGO,CR_OBSERVACOES)" + 
														" VALUES (?,?,?,?,?,?)";
	
	public static final String INSERE_FORNECEDOR = "INSERT INTO TB_FORNECEDOR" + 
													" (FOR_CODIGO,FOR_NOME,FOR_ENDERECO,FOR_NUMERO,FOR_BAIRRO," +
													" FOR_CIDADE,FOR_UF,FOR_CNPJCPF,FOR_RGIE," + 
													" FOR_TELEFONE,FOR_FAX, FOR_CELULAR,FOR_EMAIL)" + 
													" VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
	
	public static final String INSERE_FUNCIONARIO = "INSERT INTO TB_FUNCIONARIO " + 
													" (FUN_CODIGO,FUN_NOME,FUN_ENDERECO,FUN_NUMERO,FUN_COMPLEMENTO,FUN_BAIRRO," +
													" FUN_CIDADE,FUN_UF,FUN_CNPJCPF,FUN_RGIE,FUN_SEXO,FUN_NASCIMENTO," + 
													" FUN_TELEFONE,FUN_CELULAR,FUN_EMAIL,FUN_SALARIO)" + 
													" VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	 
	public static final String INSERE_ITENSCOMPRA = "INSERT INTO TB_ITENSCOMPRA " + 
													"(COM_CODIGO,PRO_CODIGO,TPP_CODIGO,NF_CODIGO,FOR_CODIGO,TPG_CODIGO,"+
													" ITC_EMBALAGEM,ITC_QTDE,ITC_VALORUN,ITC_DESC,ITC_VALORTOTAL)" + 
													" VALUES(?,?,?,?,?,?,?,?,?,?,?)";
	
	public static final String INSERE_ITENSVENDA= "INSERT INTO TB_ITENSVENDA " + 
													" (VEN_CODIGO,PRO_CODIGO,TPP_CODIGO,NF_CODIGO,TPG_CODIGO,FUN_CODIGO," +
													" ITV_EMBALAGEM,ITV_QTDE,ITV_VALORUN,ITV_DESC,ITV_VALORTOTAL)" + 
													" VALUES(?,?,?,?,?,?,?,?,?,?,?)";
	
	public static final String INSERE_NOTA_FISCAL = "INSERT INTO TB_NOTAFISCAL(NF_CODIGO,NF_VALORNF,NF_TAXAIMPOSTONF,NF_VALORIMPOSTO) VALUES (?, ?, ?, ?)";
	
	public static final String INSERE_PRODUTO = "INSERT INTO TB_VENDAS " + 
												" (FUN_CODIGO,NF_CODIGO,TPG_CODIGO,VEN_CODIGO,VEN_DATAVENDA,VEN_OBSERVACOES, VEN_VALORTOTAL)" + 
												" VALUES(?,?,?,?,?,?,?)";
	
	public static final String INSERE_TIPO_PAGTO = "INSERT INTO TB_TIPOPAGTO " + 
													" (TPG_CODIGO,TPG_DESCRICAO,TPG_QTDE,TPG_ATIVO)" + 
													" VALUES(?,?,?,?)";
	
	public static final String INSERE_TIPO_PRODUTO = "INSERT INTO TB_TIPOPRODUTO " + 
													" (TPP_CODIGO,TPP_DESCRICAO) " + 
													" VALUES(?,?)";
	
	public static final String INSERE_VENDAS= "INSERT INTO TB_VENDAS " + 
												" (FUN_CODIGO,NF_CODIGO,TPG_CODIGO, VEN_CODIGO,VEN_DATAVENDA,VEN_OBSERVACOES,VEN_VALORTOTAL)" + 
												" VALUES(?,?,?,?,?,?,?)";
	
	public static final String LISTAR_COMPRAS = "SELECT * FROM TB_COMPRAS";
	public static final String LISTAR_CONTA_PAGAR = "SELECT * FROM TB_CONTAPAGAR";
	public static final String LISTAR_CONTA_RECEBER = "SELECT * FROM TB_CONTARECEBER";
	public static final String LISTAR_FORNECEDOR = "SELECT * FROM TB_FORNECEDOR";
	public static final String LISTAR_FUNCIONARIO = "SELECT * FROM TB_FUNCIONARIO";
	public static final String LISTAR_ITENSCOMPRA = "SELECT * FROM TB_ITENSCOMPRA";
	public static final String LISTAR_ITENSVENDA= "SELECT * FROM TB_ITENSVENDA";
	public static final String LISTAR_NOTA_FISCAL = "SELECT * FROM TB_NOTAFISCAL";
	public static final String LISTAR_PRODUTO = "SELECT * FROM TB_PRODUTO";
	public static final String LISTAR_TIPO_PAGTO = "SELECT * FROM TB_TIPOPAGTO";
	public static final String LISTAR_TIPO_PRODUTO = "SELECT * FROM TB_TIPOPRODUTO";
	public static final String LISTAR_VENDAS= "SELECT * FROM TB_VENDAS";
	
	
}

