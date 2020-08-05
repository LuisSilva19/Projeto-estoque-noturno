  <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <jsp:useBean id="con" class="conexao_tipopagto.Conexao_tipopagto"/>  
 <html>  
 <head>
 <title>Consulta</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form method="get">  
 <%  
       con.setTpgCodigo(Integer.parseInt(request.getParameter("tpg_codigoField")));  
       boolean testa = con.consultaDados();  
                  
       if (testa){  
    	   
    	
          ResultSet temp = con.getResposta();  
          response.sendRedirect("http://localhost:8084/sistema_estoque/itenscompra.jsp?status=Consulta efetuada com sucesso " +
          " &tpg_codigo="+temp.getString("tpg_codigo")+
          " &tpg_descricao="+temp.getString("tpg_descricao")+
          " &tpg_qtde="+temp.getString("tpg_qtde")+
          " &tpg_ativo="+temp.getString("tpg_ativo"));  
       }else{  
          response.sendRedirect("http://localhost:8084/sistema_estoque2020/tipopagto.jsp?status=Registro não encontrado");  
       }  
            
 %>  
 </form>  
 </body>  
 </html> 