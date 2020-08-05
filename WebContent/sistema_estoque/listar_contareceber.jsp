 <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_contareceber.Conexao_contareceber"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <html>  
 <head>  
 <title>Cadastrar Conta Receber</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
	 <form name="form1" method="post" action="contareceber.jsp">  
	   
	 <p>
	 	<strong>Tabela Contas a receber </strong>
	 </p>  
	 <table border=1 cellspacing=0 cellpadding=0 >

			<tr>
				<td width=50><strong> Código Conta a pagar </strong></td>
				<td width=50><strong> Valor da Conta </strong></td>
				<td width=50><strong> Data Pagamento </strong></td>
				<td width=50><strong> Código Nota fiscal </strong></td>
				<td width=50><strong> Observacoes </strong></td>
			</tr>


			<%
				try {

				con.listarDados();
				ResultSet temp = con.getResposta();

				do {
			%>  
	       <tr>  
	           <td width=50>  
	                <%out.print(temp.getString("cr_codigo"));%>  
	          </td>  
	          <td width=50>  
	                <%out.print(temp.getString("cr_valorconta"));%>  
	          </td>
	          <td width=50>  
	                <%out.print(temp.getString("cr_datapagamento"));%>  
	          </td>
	          <td width=50>  
	                <%out.print(temp.getString("cr_datavencimento"));%>  
	          </td>
	           <td width=50>  
	                <%out.print(temp.getString("nf_codigo"));%>  
	          </td> 
			   <td width=50>  
	                <%out.print(temp.getString("cr_observacoes"));%>  
	          	  
	       </tr>  
	       <%
	       }while (temp.next());  
	      
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
	     	<input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("cr_codigo")%> foi cadastrado com sucesso">  
	    </strong></p>  
	 </form>  
 </body>  
 </html> 