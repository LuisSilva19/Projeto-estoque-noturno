 <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <jsp:useBean id="con" class="conexao_tipopagto.Conexao_tipopagto"/>  
 <html>  
 <head>  
 <title>Excluir Itens Compra</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form name="form1" method="post" action="itensvenda.jsp">  
   
 <p><strong>Tabela Itens Compra </strong></p>  
 <table border=1 cellspacing=0 cellpadding=0 >  
   
   		    <tr>
				<td width=50><strong> Código Tipo pagamento </strong></td>
				<td width=50><strong> Descricao </strong></td>
				<td width=50><strong> quantidade </strong></td>
				<td width=50><strong> ativo </strong></td>
			</tr>
   
 <%      
    try {  
   
       con.setTpgCodigo(Integer.parseInt(request.getParameter("tpg_codigoField")));
   
       if (con.excluirDados())  
       {  
          con.listarDados();  
          ResultSet temp = con.getResposta();  
         
          while (temp.next()){  
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
				<td width=50>
					<%
						out.print(temp.getString("tpg_qtde"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("tpg_ativo"));
					%>
				</td>

			</tr>
			<%
				}
			} else {
				response.sendRedirect("http://localhost:8084/sistema_estoque/tipopagto.jsp?status=Registro não encontrado");
			}
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
     <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("tpg_codigoField")%> foi excluido com sucesso">  
       </strong></p>  
 </form>  
 </body>  
 </html> 