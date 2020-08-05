  <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <jsp:useBean id="con" class="conexao_produto.Conexao_produto"/>  
 <html>  
 <head>
 <title>Consulta</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form method="get">  
 <%  
       con.setProCodigo(Integer.parseInt(request.getParameter("pro_codigoField")));  
       boolean testa = con.consultaDados();  
                  
       if (testa){  
    	
          ResultSet temp = con.getResultado();  
          response.sendRedirect("http://localhost:8084/sistema_estoque/itenscompra.jsp?status=Consulta efetuada com sucesso " +
          " &pro_codigo="+temp.getString("pro_codigo")+
          " &pro_descricao="+temp.getString("pro_descricao")+
          " &tpp_codigo="+temp.getString("tpp_codigo")+
          " &pro_precocusto="+temp.getString("pro_precocusto")+
          " &pro_precovenda="+temp.getString("pro_precovenda")+
          " &pro_estoque="+temp.getString("pro_estoque")+
          " &pro_embalagem="+temp.getString("pro_embalagem")+
          " &pro_ipi="+temp.getString("pro_ipi"));  
       }else{  
          response.sendRedirect("http://localhost:8084/sistema_estoque2020/produtos.jsp?status=Registro não encontrado");  
       }  
            
 %>  
 </form>  
 </body>  
 </html> 