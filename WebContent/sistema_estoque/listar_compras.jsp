    <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <jsp:useBean id="con" class="conexao_compras.Conexao_compras"/>  
    <html>  
    <head>  
    <title>Listar Nota Fiscal</title>  
    <meta http-equiv="Content-Type" content="text/html; charset=iso--">  
    </head>  
      
   <body>  
   <form name="form" method="post" action="notafiscal.jsp">  
     
   <p><strong>Tabela Nota fiscal </strong></p>  
   <table border= cellspacing= cellpadding= >  
     
     <tr>  
     <td width=50><strong>  
       Código do Nota 
    </strong></td>      
    <td width=50><strong>  
       Valor Nota  
    </strong></td>  
	<td width=50><strong>  
       Taxa Imposto 
    </strong></td>   
	<td width=50><strong>  
       Valor Imposto 
    </strong></td>       
    </tr>  
     
     
   <%      
      try {  
         con.listarDados();  
         ResultSet temp = con.getResultado();  
           
         while (temp.next()){  
         %>
			<tr>
				<td width=50>
					<%
						out.print(temp.getString("com_codigo"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("tpg_codigo"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("for_codigo"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("nf_codigo"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("com_datacompra"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("com_valortotal"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("com_observacoes"));
					%>
				</td>
			</tr>
			<%
				}

			} catch (Exception e) {
				e.printStackTrace();
			}
			%>  
   </table>  
     <p>  
       <input type="submit" name="Submit" value="voltar">  
   </p>  
   </form>  
   </body>  
   </html>  