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
				<td width=50><strong> C�digo Conta a pagar </strong></td>
				<td width=50><strong> Valor da Conta </strong></td>
				<td width=50><strong> Data Pagamento </strong></td>
				<td width=50><strong> C�digo Nota fiscal </strong></td>
				<td width=50><strong> Observacoes </strong></td>
			</tr>


			<%
				try {

				/*
				     cr_codigo  
				    cr_valorconta   
				    cr_datapagamento   
				    cr_datavencimento 
				    nf_codigo 
				    cr_observacoes 
				  */
				con.setCrCodigo(Integer.parseInt(request.getParameter("cr_codigo")));
				con.setCrValorConta(Integer.parseInt(request.getParameter("cr_valorconta")));
				con.setCrDataVencimento(request.getParameter("cr_datapagamento"));
				con.setCrDataRecebimento(request.getParameter("cr_datavencimento"));
				con.setNfCodigo(Integer.parseInt(request.getParameter("nf_codigo")));
				con.setCrObservacoes(request.getParameter("cr_observacoes"));
				con.inserirDados();

				con.listarDados();
				ResultSet temp = con.getResposta();
				temp.next();

				if (request.getParameter("cr_codigoField").equals(temp.getString("cr_codigo")))
					response.sendRedirect("http://localhost:8084/sistema_estoque/contareceber.jsp?status=Registro j� existente");

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