  <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <jsp:useBean id="con" class="conexao_contapagar.Conexao_contapagar"/>  
 <html>  
	 <head>
	 <title>Consulta</title>  
	 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
	 </head>  
	   
	 <body>  
		 <form method="get">  
		 <%  
		       con.setCpCodigo(Integer.parseInt(request.getParameter("cp_codigo")));  
		       boolean testa = con.consultaDados();  
		                  
		       if (testa){           
		          ResultSet temp = con.getResposta();  
		          response.sendRedirect("http://localhost:8084/sistema_estoque/notafiscal.jsp?status=Consulta efetuada com sucesso"+
		        		  "&cp_codigo="+temp.getString("cp_codigo")+
		        		  "&cp_valorconta="+temp.getString("cp_valorconta")+
		        		  "&cp_datapagamento="+temp.getString("cp_datapagamento")+
		        		  "&cp_datavencimento="+temp.getString("cp_datavencimento")+
		        		  "&nf_codigo="+temp.getString("nf_codigo")+
		        		  "&cp_observacoes="+temp.getString("cp_observacoes"));  
		       }else{  
		          response.sendRedirect("http://localhost:8084/sistema_estoque/contapagar.jsp?status=Registro não encontrado");  
		       }  
		               
		 %>  
		 </form>  
	 </body>  
 </html> 