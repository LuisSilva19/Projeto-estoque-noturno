
<%@ page contentType="text/html" language="java" import="java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="con" class="conexao_tipoproduto.Conexao_tipoproduto" />
<html>
<head>
<title>Alterar Produtos</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
	<form name="form1" method="post" action="tipoproduto.jsp">

		
		<jsp:setProperty name="con" property="tpg_codigo"
			value="<%=Integer.parseInt(request.getParameter("tpg_codigoField"))%>" />
			
		<jsp:setProperty name="con" property="tpg_descricao"
			value="<%=(request.getParameter("tpg_descricaoField"))%>" />
			
			
		<p>
			<strong>Tabela tipo produto </strong>
		</p>
		<table border=1 cellspacing=0 cellpadding=0>

			 <tr>
				<td width=50><strong> Código Tipo produto </strong></td>
				<td width=50><strong> Descricao </strong></td>
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
						out.print(temp.getString("tpg_codigo"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("tpg_descricao"));
					%>
				</td>

			</tr>
			<%
				}
			} else {
				response.sendRedirect("http://localhost:8084/sistema_estoque/tipoproduto.jsp?status=Registro não encontrado");
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
					value="<%=request.getParameter("tpg_codigoField")%> foi alterado com sucesso">
			</strong>
		</p>
	</form>
</body>
</html>
