  <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <jsp:useBean id="con" class="conexao_tipoproduto.Conexao_tipoproduto"/>  
 <html>  
 <head>
 <title>Consulta</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form method="get">  
 <%  
       con.setTppCodigo(Integer.parseInt(request.getParameter("tpp_codigoField")));  
       boolean testa = con.consultaDados();  
                  
       if (testa){  
    	   
    	
          ResultSet temp = con.getResultado();  
          response.sendRedirect("http://localhost:8084/sistema_estoque/itenscompra.jsp?status=Consulta efetuada com sucesso " +
          " &tpp_codigo="+temp.getString("tpp_codigo")+
          " &tpp_descricao="+temp.getString("tpp_descricao"));
       }else{  
          response.sendRedirect("http://localhost:8084/sistema_estoque2020/tipoproduto.jsp?status=Registro não encontrado");  
       }  
            
 %>  
 </form>  
 </body>  
 </html> 