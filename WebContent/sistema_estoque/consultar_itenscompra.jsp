  <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <jsp:useBean id="con" class="conexao_itenscompra.Conexao_itenscompra"/>  
 <html>  
 <head>
 <title>Consulta</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form method="get">  
 <%  
       con.setComCodigo(Integer.parseInt(request.getParameter("com_codigoField")));  
       boolean testa = con.consultaDados();  
                  
       if (testa){        
    	
          ResultSet temp = con.getResultado();  
          response.sendRedirect("http://localhost:8084/sistema_estoque/itenscompra.jsp?status=Consulta efetuada com sucesso " +
          " &com_codigo="+temp.getString("com_codigo")+
          " &pro_codigo="+temp.getString("pro_codigo")+
          " &tpp_codigo="+temp.getString("tpp_codigo")+
          " &nf_codigo="+temp.getString("nf_codigo")+
          " &for_codigo="+temp.getString("for_codigo")+
          " &tpg_codigo="+temp.getString("tpg_codigo")+
          " &itc_embalagem="+temp.getString("itc_embalagem")+
          " &itc_qtde="+temp.getString("itc_qtde")+
          " &itc_valorun="+temp.getString("itc_valorun")+
          " &itc_desc="+temp.getString("itc_desc")+
          " &itc_valortotal="+temp.getString("itc_valortotal"));  
       }else{  
          response.sendRedirect("http://localhost:8084/sistema_estoque2020/itenscompra.jsp?status=Registro não encontrado");  
       }  
            
               
 %>  
 </form>  
 </body>  
 </html> 