 <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_itenscompra.Conexao_itenscompra"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <html>  
 <head>  
 <title>Cadastrar Itens Compra</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form name="form1" method="post" action="itenscompra.jsp">  
   
 <p><strong>Tabela Itens Compra </strong></p>  
 <table border=1 cellspacing=0 cellpadding=0 >

			<tr>
				<td width=50><strong> Código compra </strong></td>
				<td width=50><strong> Código produto </strong></td>
				<td width=50><strong> Código tipo produto </strong></td>
				<td width=50><strong> Código nota fiscal </strong></td>
				<td width=50><strong> Código fornecedor </strong></td>
				<td width=50><strong> Código tipo pgto </strong></td>
				<td width=50><strong> Embalagem </strong></td>
				<td width=50><strong> quantidade </strong></td>
				<td width=50><strong> valor unitario </strong></td>
				<td width=50><strong> descricao </strong></td>
				<td width=50><strong> Valor total </strong></td>
			</tr>


			<%
			
				try {
				
					con.listarDados();
					ResultSet temp = con.getResultado();

				do {
			%>
			<tr>
				<td width=50>
					<%out.print(temp.getString("com_codigo"));%>
				</td>
				<td width=50>
					<%out.print(temp.getString("pro_codigo"));%>
				</td>
				<td width=50>
					<%out.print(temp.getString("tpp_codigo"));%>
				</td>
				<td width=50>
					<%out.print(temp.getString("nf_codigo"));%>
				</td>
				<td width=50>
					<%out.print(temp.getString("for_codigo"));%>
				</td>
				<td width=50>
					<%out.print(temp.getString("tpg_codigo"));%>
				</td>
				<td width=50>
					<%out.print(temp.getString("itc_embalagem"));%>
				</td>
				<td width=50>
					<%out.print(temp.getString("itc_qtde"));%>
				</td>
				<td width=50>
					<%out.print(temp.getString("itc_valorun"));%>
				</td>
				<td width=50>
					<%out.print(temp.getString("itc_desc"));%>
				</td>
				<td width=50>
					<%out.print(temp.getString("itc_valortotal"));%>
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
 <p><strong>Status:  
     <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("com_codigoField")%> foi cadastrado com sucesso">  
       </strong></p>  
 </form>  
 </body>  
 </html> 