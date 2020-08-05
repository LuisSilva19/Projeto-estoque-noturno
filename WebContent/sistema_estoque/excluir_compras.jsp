 <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <jsp:useBean id="con" class="conexao_compras.Conexao_compras"/>  
 <html>  
	 <head>  
	 <title>Excluir Compras</title>  
	 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
	 </head>  
   
	 <body>  
		 <form name="form1" method="post" action="compras.jsp">  
		   
		 <p><strong>Tabela Nota Fiscal </strong></p>  
		 <table border=1 cellspacing=0 cellpadding=0 >

			<tr>
				<td width=50><strong> Código da compra </strong></td>
				<td width=50><strong> Código Tipo Pagamento </strong></td>
				<td width=50><strong> Código Funcionário </strong></td>
				<td width=50><strong> Código Nota fiscal </strong></td>
				<td width=50><strong> Data Compra </strong></td>
				<td width=50><strong> Valor Compra </strong></td>
				<td width=50><strong> Valor Observacoes </strong></td>
			</tr>

			<%
				try {

				con.setComCodigo(Integer.parseInt(request.getParameter("com_codigo")));

				if (con.excluirDados()) {
					con.listarDados();
					ResultSet temp = con.getResultado();

					while (temp.next()) {
			%>
							 <tr>  
					           <td width=50>  
					                <%out.print(temp.getString("com_codigo"));%>  
					          </td>  
					          <td width=50>  
					                <%out.print(temp.getString("tpg_codigo"));%>  
					          </td>
					          <td width=50>  
					                <%out.print(temp.getString("for_codigo"));%>  
					          </td>
					          <td width=50>  
					                <%out.print(temp.getString("nf_codigo"));%>  
					          </td>
					           <td width=50>  
					                <%out.print(temp.getString("com_datacompra"));%>  
					          </td> 
							   <td width=50>  
					                <%out.print(temp.getString("com_valortotal"));%>  
					          </td>  
								<td width=50>  
					                <%out.print(temp.getString("com_observacoes"));%>  
					          </td>  		  
					       </tr>  
						<%
		          }
		       }else{  
		          response.sendRedirect("http://localhost:8084/sistema_estoque2020/compras.jsp?status=Registro não encontrado");  
		       }     
		    }catch (Exception e) {  
		       e.printStackTrace();  
		    }  
		   
		            
		 %>  
		 </table>  
		   <p> </p>  
		   <p>  
		     <input type="submit" name="Submit" value="voltar">  
		     </p>  
		   <p><strong>Status:  
		     <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("com_codigo")%> foi excluido com sucesso">  
		       </strong></p>  
		 </form>  
	 </body>  
 </html> 