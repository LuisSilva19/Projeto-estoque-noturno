 <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_fornecedor.Conexao_fornecedor"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <html>  
 <head>  
 <title>Cadastrar Fornecedor</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
	 <form name="form1" method="post" action="fornecedor.jsp">  
	   
	 <p>
	 	<strong>Tabela Fornecedor </strong>
	 </p>  
	 <table border=1 cellspacing=0 cellpadding=0 >

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

				con.setForCodigo(Integer.parseInt(request.getParameter("for_codigo")));
				con.setForNome(request.getParameter("for_nome"));
				con.setForEndereco(request.getParameter("for_endereco"));
				con.setForNumero(request.getParameter("for_numero"));
				con.setForBairro(request.getParameter("for_bairro"));
				con.setForCidade(request.getParameter("for_cidade"));
				con.setForUf(request.getParameter("for_uf"));
				con.setForCnpjcpf(request.getParameter("for_cnpjcpf"));
				con.setForRgie(request.getParameter("for_rgie"));
				con.setForTelefone(request.getParameter("for_telefone"));
				con.setForFax(request.getParameter("for_fax"));
				con.setForCelular(request.getParameter("for_celular"));
				con.setForEmail(request.getParameter("for_email"));

				con.inserirDados();

				con.listarDados();
				ResultSet temp = con.getResultado();
				temp.next();

				if (request.getParameter("for_codigoField").equals(temp.getString("for_codigo")))
					response.sendRedirect("http://localhost:8084/sistema_estoque/fornecedor.jsp?status=Registro j� existente");

				do {
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
				} while (temp.next());

			} catch (Exception e) {
				e.printStackTrace();
			}
			%>  
	 </table>  
	   <p> </p>  
	   <p>  
	     <input type="submit" name="Submit" value="voltar">  
	 </p>    
	 <p>
	 	<strong>Status:  
	     	<input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("for_codigo")%> foi cadastrado com sucesso">  
	    </strong></p>  
	 </form>  
 </body>  
 </html> 