  <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <jsp:useBean id="con" class="conexao_funcionario.Conexao_funcionario"/>  
 <html>  
	 <head>
	 <title>Consulta</title>  
	 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
	 </head>  
	   
	 <body>  
		 <form method="get">  
		 <%  
		       con.setFunCodigo(Integer.parseInt(request.getParameter("fun_codigo")));  
		       boolean testa = con.consultaDados(); 
		       
				 
		       if (testa){           
		          ResultSet temp = con.getResultado();  
		          response.sendRedirect("http://localhost:8084/sistema_estoque/funcionario.jsp?status=Consulta efetuada com sucesso"+
		        		  "&fun_codigo="+temp.getString("fun_codigo")+
		        		  "&fun_nome="+temp.getString("fun_nome")+
		        		  "&fun_endereco="+temp.getString("fun_endereco")+
		        		  "&fun_numero="+temp.getString("fun_numero")+
		        		  "&fun_bairro="+temp.getString("fun_bairro")+
		        		  "&fun_cidade="+temp.getString("fun_cidade")+
		        		  "&fun_uf="+temp.getString("fun_uf")+
		        		  "&fun_cnpjcpf="+temp.getString("fun_cnpjcpf")+
		        		  "&fun_rgie="+temp.getString("fun_rgie")+
		        		  "&fun_sexo="+temp.getString("fun_sexo")+
		        		  "&fun_nascimento="+temp.getString("fun_nascimento")+
		        		  "&fun_telefone="+temp.getString("fun_telefone")+
		        		  "&fun_fax="+temp.getString("fun_fax")+
		        		  "&fun_celular="+temp.getString("fun_celular")+
		        		  "&cr_email="+temp.getString("cr_email")+
		        		  "&fun_sexo="+temp.getString("fun_salario"));  
		       }else{  
		          response.sendRedirect("http://localhost:8084/sistema_estoque/funcionario.jsp?status=Registro não encontrado");  
		       }  
		               
		 %>  
		 </form>  
	 </body>  
 </html> 