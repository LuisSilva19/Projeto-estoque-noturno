 <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <jsp:useBean id="con" class="conexao_funcionario.Conexao_funcionario"/>  
 <html>  
	 <head>  
	 <title>Excluir Funcionario</title>  
	 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
	 </head>  
   
	 <body>  
		 <form name="form1" method="post" action="funcionario.jsp">  
		   
		 <p><strong>Tabela Funcionario </strong></p>  
		 <table border=1 cellspacing=0 cellpadding=0 >  
		  <tr>
				<td width=50><strong> C�digo Funcionario </strong></td>
				<td width=50><strong> Nome </strong></td>
				<td width=50><strong> Endereco </strong></td>
				<td width=50><strong> numero </strong></td>
				<td width=50><strong> Complemento </strong></td>
				<td width=50><strong> bairro </strong></td>
				<td width=50><strong> cidade </strong></td>
				<td width=50><strong> uf </strong></td>
				<td width=50><strong> cnpjcpf </strong></td>
				<td width=50><strong> rgie </strong></td>
				<td width=50><strong> Sexo </strong></td>
				<td width=50><strong> Nascimento </strong></td>
				<td width=50><strong> Telefone </strong></td>
				<td width=50><strong> Fax </strong></td>
				<td width=50><strong> Celular </strong></td>
				<td width=50><strong> Email </strong></td>
				<td width=50><strong> Salario </strong></td>
			</tr>
		   
		 <%      
		    try {  
		   
		    	  con.setFunCodigo(Integer.parseInt(request.getParameter("fun_codigo"))); 
		   
		       if (con.excluirDados()){  
		          con.listarDados();  
		          ResultSet temp = con.getResultado();  
		         
		          while (temp.next()) {
						%>
						   <tr>  
					           <td width=50>  
					                <%out.print(temp.getString("fun_codigo"));%>  
					          </td>  
					          <td width=50>  
					                <%out.print(temp.getString("fun_nome"));%>  
					          </td>
					          <td width=50>  
					                <%out.print(temp.getString("fun_endereco"));%>  
					          </td>
					          <td width=50>  
					                <%out.print(temp.getString("fun_bairro"));%>  
					          </td>
					           <td width=50>  
					                <%out.print(temp.getString("fun_cidade"));%>  
					          </td> 
							   <td width=50>  
					                <%out.print(temp.getString("fun_uf"));%>  
					          </td>
					          <td width=50>  
					                <%out.print(temp.getString("fun_cnpjcpf"));%>  
					          </td>
					          <td width=50>  
					                <%out.print(temp.getString("fun_rgie"));%>  
					          </td>
					          <td width=50>  
					                <%out.print(temp.getString("fun_sexo"));%>  
					          </td>
					          <td width=50>  
					                <%out.print(temp.getString("fun_nascimento"));%>  
					          </td>
					          <td width=50>  
					                <%out.print(temp.getString("fun_telefone"));%>  
					          </td>
					          <td width=50>  
					                <%out.print(temp.getString("fun_fax"));%>  
					          </td>
					          <td width=50>  
					                <%out.print(temp.getString("fun_celular"));%>  
					          </td>
					           <td width=50>  
					                <%out.print(temp.getString("fun_email"));%>  
					          </td>
					          <td width=50>  
					                <%out.print(temp.getString("fun_salario"));%>  
					          </td>
					       </tr>  
						<%
		          }
		       }else{  
		          response.sendRedirect("http://localhost:8084/sistema_estoque/funcionario.jsp?status=Registro n�o encontrado");  
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
		     <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("fun_codigo")%> foi excluido com sucesso">  
		       </strong></p>  
		 </form>  
	 </body>  
 </html> 