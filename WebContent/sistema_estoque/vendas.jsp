<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<script>  
	     
	   function enviar(par){  
	        
	      if (par == 'cadastrar'){  
	        
	         if (document.cadastro.fun_codigoField.value == ''){  
	            document.cadastro.statusField.value = 'Preencha o campo codigo';  
	            
	         }else if (document.cadastro.nf_codigoField.value == ''){  
	            document.cadastro.statusField.value = 'Preencha o campo codico nf';
	            
			 }else if (document.cadastro.tpg_codigoField.value == ''){  
	            document.cadastro.statusField.value = 'Preencha o campo codigo tipo pagto'; 
	            
	         }else if (document.cadastro.ven_codigoField.value == ''){  
	            document.cadastro.statusField.value = 'Preencha o campo codigo venda';  
	            
	         }else if (document.cadastro.ven_datavendaField.value == ''){  
	            document.cadastro.statusField.value = 'Preencha o campo datavenda'; 
	            
	         }else if (document.cadastro.ven_observacoesField.value == ''){  
	            document.cadastro.statusField.value = 'Preencha o campo observacoes'; 
	            
	         }else if (document.cadastro.ven_valortotalField.value == ''){  
	            document.cadastro.statusField.value = 'Preencha o campo valor total'; 
	            
	         }else {  
	            document.cadastro.action='cadastrar_vendas.jsp';  
	            document.cadastro.submit();  
	         }  
	     
	      } else if (par == 'consultar'){  
	     
	    	  if (document.cadastro.fun_codigoField.value == ''){  
		            document.cadastro.statusField.value = 'Preencha o campo codigo';  
		            
		       }else {  
	            document.cadastro.action='consultar_vendas.jsp';  
	            document.cadastro.submit();  
	         }  
	     
	      } else if (par == 'alterar'){  
	     
	    	  if (document.cadastro.fun_codigoField.value == ''){  
		            document.cadastro.statusField.value = 'Preencha o campo codigo';  
		            
		         }else if (document.cadastro.nf_codigoField.value == ''){  
		            document.cadastro.statusField.value = 'Preencha o campo codico nf';
		            
				 }else if (document.cadastro.tpg_codigoField.value == ''){  
		            document.cadastro.statusField.value = 'Preencha o campo codigo tipo pagto'; 
		            
		         }else if (document.cadastro.ven_codigoField.value == ''){  
		            document.cadastro.statusField.value = 'Preencha o campo codigo venda';  
		            
		         }else if (document.cadastro.ven_datavendaField.value == ''){  
		            document.cadastro.statusField.value = 'Preencha o campo datavenda'; 
		            
		         }else if (document.cadastro.ven_observacoesField.value == ''){  
		            document.cadastro.statusField.value = 'Preencha o campo observacoes'; 
		            
		         }else if (document.cadastro.ven_valortotalField.value == ''){  
		            document.cadastro.statusField.value = 'Preencha o campo valor total'; 
		            
		         }else {  
		            document.cadastro.action='alterar_vendas.jsp';  
		            document.cadastro.submit();  
	         }  
	      } else if (par == 'excluir'){  
	     
	    	  if (document.cadastro.fun_codigoField.value == ''){  
		            document.cadastro.statusField.value = 'Preencha o campo codigo';  
		            
		      }else {  
	            document.cadastro.action='excluir_vendas.jsp';  
	            document.cadastro.submit();  
	         }  
	      } else if (par == 'listar'){  
	         document.cadastro.action='listar_vendas.jsp';  
	         document.cadastro.submit();  
	      }  
	   }  
	     
	   </script>  
	</head>
	<%  
		   String fun_codigo = request.getParameter("fun_codigo");  
		   String nf_codigo = request.getParameter("nf_codigo");  
		   String tpg_codigo = request.getParameter("tpg_codigo");  
		   String ven_codigo = request.getParameter("ven_codigo"); 
		   String ven_datavenda = request.getParameter("ven_datavenda");
		   String ven_observacoes = request.getParameter("ven_observacoes"); 
		   String ven_valortotal = request.getParameter("ven_valortotal"); 
		   String status = request.getParameter("status"); 
	   %>  
	<body>
		<form name="cadastro" method="get">
	
			<table width="" border="">
				<tr>
					<td width="" height="" bgcolor="red"><p align="left"
							class="style">Cadastro pessoa</p></td>
				</tr>
				<tr>
					<td height="" bgcolor="red">
						<p>
							<strong>Codigo funcionario:</strong> 
							<input name="fun_codigoField" type="text"
								id="fun_codigoField" size=""
								value="<%=(fun_codigo==null)?"":fun_codigo%>">
						</p>
						<p>
							<strong>codigo nota fiscal :</strong>
							 <input name="nf_codigoField" type="text"
								id="nf_codigoField" size=""
								value="<%=(nf_codigo==null)?"":nf_codigo%>">
						</p>
						<p>
							<strong>codigo tipo pagamento:</strong>
							 <input name="tpg_codigoField"
								type="text" id="tpg_codigoField" size=""
								value="<%=(tpg_codigo==null)?"":tpg_codigo%>">
						</p>
						<p>
							<strong>codigo vendedor:</strong> 
							<input name="ven_codigoField" type="text"
								id="ven_codigoField" size=""
								value="<%=(ven_codigo==null)?"":ven_codigo%>">
						</p>
						<p>
							<strong>venda data:</strong> 
							<input name="ven_datavendaField" type="text"
								id="ven_datavendaField" size=""
								value="<%=(ven_datavenda==null)?"":ven_datavenda%>">
						</p>
						<p>
							<strong>observacoes:</strong> 
							<input name="ven_observacoesField" type="text"
								id="ven_observacoesField" size=""
								value="<%=(ven_observacoes==null)?"":ven_observacoes%>">
						</p>
						<p>
							<strong>valor do total:</strong> 
							<input name="ven_valortotalField" type="text"
								id="ven_valortotalField" size=""
								value="<%=(ven_valortotal==null)?"":ven_valortotal%>">
						</p>
					</td>
				</tr>
				<tr>
					<td height="" bgcolor="red">
						<p>
							<input type="button" onClick="enviar('cadastrar')" name="bt"value="cadastrar"> 
						</p>
						<p>
							<input type="button"onClick="enviar('consultar')" name="bt" value="consultar">
						</p>
						<p>
							<input type="button" onClick="enviar('alterar')" name="bt" value="alterar">
						</p>
						<p>
							 <input type="button"onClick="enviar('excluir')" name="bt" value="excluir"> 
						</p>
						<p>
							<input type="button" onClick="enviar('listar')" name="bt" value="listar">
						</p>
						<p>
							<strong>Status: <input name="statusField" disabledtype="text" id="statusField" size=""
								value="<%=(status==null)?"":status%>">
							</strong>
						</p>
					</td>
				</tr>
			</table>
		</form>  
	</body>
</html>