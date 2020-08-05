 <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_itensvendas.Conexao_itensvenda"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <html>  
 <head>  
 <title>Cadastrar Itens vendas</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form name="form1" method="post" action="itensvendas.jsp">  
   
 <p><strong>Tabela Nota Fiscal </strong></p>  
 <table border=1 cellspacing=0 cellpadding=0 >

			<tr>
				<td width=50><strong> Código vendas</strong></td>
				<td width=50><strong> Código produto </strong></td>
				<td width=50><strong> Código tipo produto </strong></td>
				<td width=50><strong> Código nota fiscal </strong></td>
				<td width=50><strong> Código fornecedor </strong></td>
				<td width=50><strong> Código tipo pgto </strong></td>
				<td width=50><strong> Embalagem </strong></td>
				<td width=50><strong> quantidade </strong></td>
				<td width=50><strong> valor unitario </strong></td>
				<td width=50><strong> descricao </strong></td>
				<td width=50><strong> Valor total </strong></td>
			</tr>


			<%
			/*
				String com_codigo= request.getParameter("com_codigo");
				String pro_codigo= request.getParameter("pro_codigo");
				String tpp_codigo= request.getParameter("tpp_codigo");
				String nf_codigo= request.getParameter("nf_codigo");
				String for_codigo= request.getParameter("for_codigo");
				String tpg_codigo= request.getParameter("tpg_codigo");
				String itc_embalagem= request.getParameter("itc_embalagem");
				String itc_qtde= request.getParameter("itc_qtde");
				String itc_valorun= request.getParameter("itc_valorun");
				String itc_desc= request.getParameter("itc_desc");
				String itc_valortotal= request.getParameter("itc_valortotal");
			*/
			
			/***** TRANÇAR NO JAVA ******/ 
				try {
				con.setComCodigo(Integer.parseInt(request.getParameter("com_codigo")));
				con.setProCodigo(Integer.parseInt(request.getParameter("pro_codigo")));
				con.setTppCodigo(Integer.parseInt(request.getParameter("tpp_codigo")));
				con.setNfCodigo(Integer.parseInt(request.getParameter("nf_codigo")));
				con.setForCodigo(Integer.parseInt(request.getParameter("for_codigo")));
				con.setTpgCodigo(Integer.parseInt(request.getParameter("tpg_codigo")));
				con.setItvEmbalagem(request.getParameter("itv_embalagem"));
				con.setItvQtde(Double.parseDouble(request.getParameter("itv_qtde")));
				con.setItvValorun(Double.parseDouble(request.getParameter("itv_valorun")));
				con.setItvDesc(Double.parseDouble(request.getParameter("itv_desc")));
				con.setItvValortotal(Double.parseDouble(request.getParameter("itv_valortotal")));
				con.inserirDados();

				con.listarDados();
				ResultSet temp = con.getResultado();
				temp.next();

				if (request.getParameter("com_codigoField").equals(temp.getString("com_codigo")))
					response.sendRedirect("http://localhost:8084/sistema_estoque/itensvenda.jsp?status=Registro já existente");

				do {
			%>
			<tr>
				<td width=50>
					<%
						out.print(temp.getString("com_codigo"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("pro_codigo"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("tpp_codigo"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("nf_codigo"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("for_codigo"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("tpg_codigo"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("itv_embalagem"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("itv_qtde"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("itv_valorun"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("itv_desc"));
					%>
				</td>
				<td width=50>
					<%
						out.print(temp.getString("itv_valortotal"));
					%>
				</td>
			</tr>
			<%
				} while (temp.next());

			} catch (Exception e) {
				e.printStackTrace();
			}
			%>  
 </table>  
   <p>  
   <p>  
     <input type="submit" name="Submit" value="voltar">  
 	</p>
		<p>
			<strong>Status: <input name="statusField" disabled
				type="text" id="statusField" size="36"
				value="<%=request.getParameter("com_codigoField")%> foi cadastrado com sucesso">
			</strong>
		</p>
	</form>  
 </body>  
 </html> 