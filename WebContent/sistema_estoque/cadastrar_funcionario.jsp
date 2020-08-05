
<%@ page contentType="text/html" language="java" import="java.sql.*"%>
<jsp:useBean id="con" class="conexao_funcionario.Conexao_funcionario" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Cadastrar Funcionario</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
	<form name="form1" method="post" action="funcionario.jsp">

		<p>
			<strong>Tabela Funcionario </strong>
		</p>
		<table border=1 cellspacing=0 cellpadding=0>

			<tr>
				<td width=50><strong> Código Funcionario </strong></td>
				<td width=50><strong> Nome </strong></td>
				<td width=50><strong> Endereco </strong></td>
				<td width=50><strong> numero </strong></td>
				<td width=50><strong> Complemento </strong></td>
				<td width=50><strong> bairro </strong></td>
				<td width=50><strong> cidade </strong></td>
				<td width=50><strong> uf </strong></td>
				<td width=50><strong> cnpjcpf </strong></td>
				<td width=50><strong> rgie </strong></td>
				<td width=50><strong> Sexo </strong></td>
				<td width=50><strong> Nascimento </strong></td>
				<td width=50><strong> Telefone </strong></td>
				<td width=50><strong> Fax </strong></td>
				<td width=50><strong> Celular </strong></td>
				<td width=50><strong> Email </strong></td>
				<td width=50><strong> Salario </strong></td>
			</tr>


			<%
				try {

					con.setFunCodigo(Integer.parseInt(request.getParameter("fun_codigo")));
					con.setFunNome(request.getParameter("fun_nome"));
					con.setFunEndereco(request.getParameter("fun_endereco"));
					con.setFunNumero(request.getParameter("fun_numero"));
					con.setFunBairro(request.getParameter("fun_bairro"));
					con.setFunCidade(request.getParameter("fun_cidade"));
					con.setFunUf(request.getParameter("fun_uf"));
					con.setFunCnpjcpf(request.getParameter("fun_cnpjcpf"));
					con.setFunRgie(request.getParameter("fun_rgie"));
					con.setFunSexo(request.getParameter("fun_sexo"));
					con.setFunNascimento(request.getParameter("fun_nascimento"));
					con.setFunTelefone(request.getParameter("fun_telefone"));
					con.setFunCelular(request.getParameter("fun_celular"));
					con.setFunEmail(request.getParameter("fun_email"));
					con.setFunSalario(Double.parseDouble(request.getParameter("fun_salario")));
	
					con.inserirDados();
	
					con.listarDados();
					ResultSet temp = con.getResultado();
					temp.next();
	
					if (request.getParameter("fun_codigoField").equals(temp.getString("fun_codigo")))
						response.sendRedirect("http://localhost:8084/sistema_estoque/funcionario.jsp?status=Registro já existente");
	
					do {
			%>
			<tr>
				<td width=50>
					<%
						out.print(temp.getString("fun_codigo"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("fun_nome"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("fun_endereco"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("fun_bairro"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("fun_cidade"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("fun_uf"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("fun_cnpjcpf"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("fun_rgie"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("fun_sexo"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("fun_nascimento"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("fun_telefone"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("fun_fax"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("fun_celular"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("fun_email"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("fun_salario"));
					%>
				</td>
			</tr>
			<%
				} while (temp.next());

			} catch (Exception e) {
				e.printStackTrace();
			}
			%>
		</table>
		<p></p>
		<p>
			<input type="submit" name="Submit" value="voltar">
		</p>
		<p>
			<strong>Status: <input name="statusField" disabled
				type="text" id="statusField" size="36"
				value="<%=request.getParameter("fun_codigo")%> foi cadastrado com sucesso">
			</strong>
		</p>
	</form>
</body>
</html>
