
<%@ page contentType="text/html" language="java" import="java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="con" class="conexao_fornecedor.Conexao_fornecedor" />
<html>
<head>
<title>Alterar Fornecedor</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
	<form name="form1" method="post" action="fornecedor.jsp">
 
		<jsp:setProperty name="con" property="for_codigo"
			value="<%=Integer.parseInt(request.getParameter("for_codigoField"))%>" />
			
		<jsp:setProperty name="con" property="for_endereco"
			value="<%=(request.getParameter("for_enderecoField"))%>" />
			
		<jsp:setProperty name="con" property="for_numero"
			value="<%=(request.getParameter("for_numeroField"))%>" />
			
		<jsp:setProperty name="con" property="for_bairro"
			value="<%=(request.getParameter("for_bairroField"))%>" />
			
		<jsp:setProperty name="con" property="for_cidade"
			value="<%=(request.getParameter("for_cidadeField"))%>" />
		
		<jsp:setProperty name="con" property="for_uf"
			value="<%=(request.getParameter("for_ufField"))%>" />
			
		<jsp:setProperty name="con" property="for_cnpjcpf"
			value="<%=(request.getParameter("for_cnpjcpfField"))%>" />
			
		<jsp:setProperty name="con" property="for_rgie"
			value="<%=(request.getParameter("for_rgieField"))%>" />
			
		<jsp:setProperty name="con" property="for_telefone"
			value="<%=(request.getParameter("for_telefoneField"))%>" />
			
		<jsp:setProperty name="con" property="for_fax"
			value="<%=(request.getParameter("for_faxField"))%>" />
			
		<jsp:setProperty name="con" property="for_celular"
			value="<%=(request.getParameter("for_celularField"))%>" />
			
		<jsp:setProperty name="con" property="for_email"
			value="<%=(request.getParameter("for_emailField"))%>" />
			
		<p>
			<strong>Tabela Fornecedor </strong>
		</p>
		<table border=1 cellspacing=0 cellpadding=0>

			<tr>
				<td width=50><strong> C�digo Fornecedor </strong></td>
				<td width=50><strong> Nome </strong></td>
				<td width=50><strong> Endereco </strong></td>
				<td width=50><strong> numero </strong></td>
				<td width=50><strong> bairro </strong></td>
				<td width=50><strong> cidade </strong></td>
				<td width=50><strong> uf </strong></td>
				<td width=50><strong> cnpjcpf </strong></td>
				<td width=50><strong> rgie </strong></td>
				<td width=50><strong> Telefone </strong></td>
				<td width=50><strong> Fax </strong></td>
				<td width=50><strong> Celular </strong></td>
				<td width=50><strong> Email </strong></td>
			</tr>

			<%
				try {

				boolean testa = con.alterarDados();

				if (con.alterarDados()) {
					con.listarDados();
					ResultSet temp = con.getResultado();

					while (temp.next()) {
			%>
			<tr>
				<td width=50>
					<%
						out.print(temp.getString("for_codigo"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("for_nome"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("for_endereco"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("for_bairro"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("for_cidade"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("for_uf"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("for_cnpjcpf"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("for_rgie"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("for_telefone"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("for_fax"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("for_celular"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("for_email"));
					%>
				</td>
			</tr>
			<%
				}
			} else {
				response.sendRedirect("http://localhost:8084/sistema_estoque/fornecedor.jsp?status=Registro n�o encontrado");
			}
			} catch (Exception e) {
				e.printStackTrace();
			}
			%>
		</table>
		<p>
			<input type="submit" name="Submit" value="voltar">
		</p>
		<p>
			<strong>Status:
				 <input name="statusField" disabled
					type="text" id="statusField" size="36"
					value="<%=request.getParameter("for_codigoField")%> foi alterado com sucesso">
			</strong>
		</p>
	</form>
</body>
</html>
