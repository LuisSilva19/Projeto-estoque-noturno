 <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_vendas.Conexao_vendas"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <html>  
 <head>  
 <title>Cadastrar vendas</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form name="form1" method="post" action="vendas.jsp">  
   
 <p><strong>Tabela vendas</strong></p>  
 <table border=1 cellspacing=0 cellpadding=0 >

			<tr>
				<td width=50><strong> C�digo funcionario </strong></td>
				<td width=50><strong> C�digo nota fiscal </strong></td>
				<td width=50><strong> C�digo tipo pagamento </strong></td>
				<td width=50><strong> C�digo venda </strong></td>
				<td width=50><strong> data venda </strong></td>
				<td width=50><strong> observacoes </strong></td>
				<td width=50><strong> valor total </strong></td>
			</tr>


			<%
			
			try {

				con.listarDados();
				ResultSet temp = con.getResultado();

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
						out.print(temp.getString("nf_codigo"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("tpg_codigo"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("ven_codigo"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("ven_observacoes"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("ven_valortotal"));
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
     <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("ven_codigoField")%> foi cadastrado com sucesso">  
       </strong></p>  
 </form>  
 </body>  
 </html> 