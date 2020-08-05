 <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_compras.Conexao_compras"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <html>  
 <head>  
 <title>Cadastrar Compras</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
	 <form name="form1" method="post" action="compras.jsp">  
	   
	 <p>
	 	<strong>Tabela Compras </strong>
	 </p>  
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

				/* 
				 ComCodigo
				 TpgCodigo
				 ForCodigo
				 NfCodigo
				 ComDatacompra
				 ComValortotal
				 ComObservacoes
				*/
				con.setComCodigo(Integer.parseInt(request.getParameter("com_codigo")));
				con.setTpgCodigo(Integer.parseInt(request.getParameter("tpg_codigo")));
				con.setForCodigo(Integer.parseInt(request.getParameter("for_codigo")));
				con.setNfCodigo(Integer.parseInt(request.getParameter("nf_codigo")));
				con.setComDataCompra(request.getParameter("com_datacompra"));
				con.setComValorTotal(Double.parseDouble(request.getParameter("com_valortotal")));
				con.setComObservacao(request.getParameter("com_observacoes"));
				con.inserirDados();

				con.listarDados();
				ResultSet temp = con.getResultado();
				temp.next();

				if (request.getParameter("com_codigoField").equals(temp.getString("com_codigo")))
					response.sendRedirect("http://localhost:8084/sistema_estoque/compras.jsp?status=Registro já existente");

				do {
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
	       <%}while (temp.next());  
	      
	    }catch (Exception e) {  
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
	     	<input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("com_codigo")%> foi cadastrado com sucesso">  
	    </strong></p>  
	 </form>  
 </body>  
 </html> 