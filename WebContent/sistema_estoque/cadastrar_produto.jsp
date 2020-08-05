 <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_produto.Conexao_produto"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <html>  
 <head>  
 <title>Cadastrar produtos</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form name="form1" method="post" action="produtos.jsp">  
   
 <p><strong>Tabela produtos</strong></p>  
 <table border=1 cellspacing=0 cellpadding=0 >

			<tr>
				<td width=50><strong> Código produto </strong></td>
				<td width=50><strong> descricao produto </strong></td>
				<td width=50><strong> Código tipo produto </strong></td>
				<td width=50><strong> preco custo produto </strong></td>
				<td width=50><strong> preco venda produto </strong></td>
				<td width=50><strong> estoque </strong></td>
				<td width=50><strong> embalagem </strong></td>
				<td width=50><strong> ipi </strong></td>
			</tr>


			<%
			
				try {
				con.setProCodigo(Integer.parseInt(request.getParameter("pro_codigo")));
				con.setProDescricao(request.getParameter("pro_descricao"));
				con.setTppCodigo(Integer.parseInt(request.getParameter("tpp_codigo")));
				con.setProPrecocusto(Double.parseDouble(request.getParameter("pro_precocusto")));
				con.setProPrecovenda(Double.parseDouble(request.getParameter("pro_precovenda")));
				con.setProEstoque(Double.parseDouble(request.getParameter("pro_estoque")));
				con.setProEmbalagem(request.getParameter("pro_embalagem"));
				con.setProIpi(Double.parseDouble(request.getParameter("pro_ipi")));
				con.inserirDados();

				con.listarDados();
				ResultSet temp = con.getResultado();
				temp.next();

				if (request.getParameter("pro_codigoField").equals(temp.getString("pro_codigo")))
					response.sendRedirect("http://localhost:8084/sistema_estoque/produtos.jsp?status=Registro já existente");

				do {
			%>
			<tr>
				<td width=50>
					<%
						out.print(temp.getString("pro_codigo"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("pro_descricao"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("tpp_codigo"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("pro_precocusto"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("pro_precovenda"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("pro_estoque"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("pro_embalagem"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("pro_ipi"));
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
 <p><strong>Status:  
     <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("pro_codigoField")%> foi cadastrado com sucesso">  
       </strong></p>  
 </form>  
 </body>  
 </html> 