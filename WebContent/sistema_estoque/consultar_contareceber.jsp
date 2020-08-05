  <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <jsp:useBean id="con" class="conexao_contareceber.Conexao_contareceber"/>  
 <html>  
	 <head>
	 <title>Consulta</title>  
	 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
	 </head>  
	   
	 <body>  
		 <form method="get">  
		 <%  
		       con.setCrCodigo(Integer.parseInt(request.getParameter("cr_codigo")));  
		       boolean testa = con.consultaDados();  
		                  
		       if (testa){           
		          ResultSet temp = con.getResposta();  
		          response.sendRedirect("http://localhost:8084/sistema_estoque/contareceber.jsp?status=Consulta efetuada com sucesso"+
		        		  "&cr_codigo="+temp.getString("cr_codigo")+
		        		  "&cr_valorconta="+temp.getString("cr_valorconta")+
		        		  "&cr_datapagamento="+temp.getString("cr_datapagamento")+
		        		  "&cr_datavencimento="+temp.getString("cr_datavencimento")+
		        		  "&nf_codigo="+temp.getString("nf_codigo")+
		        		  "&cr_observacoes="+temp.getString("cr_observacoes"));  
		       }else{  
		          response.sendRedirect("http://localhost:8084/sistema_estoque/contareceber.jsp?status=Registro não encontrado");  
		       }  
		               
		 %>  
		 </form>  
	 </body>  
 </html> 