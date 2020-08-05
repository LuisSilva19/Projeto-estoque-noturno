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
	        
	         if (document.cadastro.com_codigoField.value == ''){  
	            document.cadastro.statusField.value = 'Preencha o campo codigo';
	            
	         }else if (document.cadastro.pro_codigoField.value == ''){  
	            document.cadastro.statusField.value = 'Preencha o campo codigo'; 
	            
			 }else if (document.cadastro.tpp_codigoField.value == ''){  
	            document.cadastro.statusField.value = 'Preencha o campo codigo'; 
	            
	         }else if (document.cadastro.nf_codigoField.value == ''){  
	            document.cadastro.statusField.value = 'Preencha o campo codigo';
	            
	         }else if (document.cadastro.for_codigoField.value == ''){  
	            document.cadastro.statusField.value = 'Preencha o campo codigo';
	            
			 }else if (document.cadastro.tpg_codigoField.value == ''){  
	            document.cadastro.statusField.value = 'Preencha o campo codigo'; 
	            
			 }else if (document.cadastro.itv_embalagemField.value == ''){  
	            document.cadastro.statusField.value = 'Preencha o campo embalagem'; 
	            
			 }else if (document.cadastro.itv_qtdeField.value == ''){  
	            document.cadastro.statusField.value = 'Preencha o campo quantidade'; 
	            
			 }else if (document.cadastro.itv_valorunField.value == ''){  
	            document.cadastro.statusField.value = 'Preencha o campo valor'; 
	            
			 }else if (document.cadastro.itv_descField.value == ''){  
	            document.cadastro.statusField.value = 'Preencha o campo descricao'; 
	            
			 }else {  
	            document.cadastro.action='cadastrar_itensvenda.jsp';  
	            document.cadastro.submit();  
	         }  
	     
	      } else if (par == 'consultar'){  
	     
	    	  if (document.cadastro.com_codigoField.value == ''){  
		            document.cadastro.statusField.value = 'Preencha o campo codigo';
		            
		       }else {  
	            document.cadastro.action='consultar_itensvenda.jsp';  
	            document.cadastro.submit();  
	         }  
	     
	      } else if (par == 'alterar'){  
	     
	    	  if (document.cadastro.com_codigoField.value == ''){  
		            document.cadastro.statusField.value = 'Preencha o campo codigo';
		            
		         }else if (document.cadastro.pro_codigoField.value == ''){  
		            document.cadastro.statusField.value = 'Preencha o campo codigo'; 
		            
				 }else if (document.cadastro.tpp_codigoField.value == ''){  
		            document.cadastro.statusField.value = 'Preencha o campo codigo'; 
		            
		         }else if (document.cadastro.nf_codigoField.value == ''){  
		            document.cadastro.statusField.value = 'Preencha o campo codigo';
		            
		         }else if (document.cadastro.for_codigoField.value == ''){  
		            document.cadastro.statusField.value = 'Preencha o campo codigo';
		            
				 }else if (document.cadastro.tpg_codigoField.value == ''){  
		            document.cadastro.statusField.value = 'Preencha o campo codigo'; 
		            
				 }else if (document.cadastro.itv_embalagemField.value == ''){  
		            document.cadastro.statusField.value = 'Preencha o campo embalagem'; 
		            
				 }else if (document.cadastro.itv_qtdeField.value == ''){  
		            document.cadastro.statusField.value = 'Preencha o campo quantidade'; 
		            
				 }else if (document.cadastro.itv_valorunField.value == ''){  
		            document.cadastro.statusField.value = 'Preencha o campo valor'; 
		            
				 }else if (document.cadastro.itv_descField.value == ''){  
		            document.cadastro.statusField.value = 'Preencha o campo descricao'; 
		            
				 }else {  
		            document.cadastro.action='alterar_itensvenda.jsp';  
		            document.cadastro.submit();  
	         }  
	      } else if (par == 'excluir'){  
	     
	    	  if (document.cadastro.com_codigoField.value == ''){  
		            document.cadastro.statusField.value = 'Preencha o campo codigo';
		            
		      }else {  
	            document.cadastro.action='excluir_itensvenda.jsp';  
	            document.cadastro.submit();  
	         }  
	      } else if (par == 'listar'){  
	         document.cadastro.action='listar_itensvenda.jsp';  
	         document.cadastro.submit();  
	      }  
	   }  
	     
	   </script>  
	</head>
	<%  
		String com_codigo= request.getParameter("com_codigo");
		String pro_codigo= request.getParameter("pro_codigo");
		String tpp_codigo= request.getParameter("tpp_codigo");
		String nf_codigo= request.getParameter("nf_codigo");
		String for_codigo= request.getParameter("for_codigo");
		String tpg_codigo= request.getParameter("tpg_codigo");
		String itv_embalagem= request.getParameter("itv_embalagem");
		String itv_qtde= request.getParameter("itv_qtde");
		String itv_valorun= request.getParameter("itv_valorun");
		String itv_desc= request.getParameter("itv_desc");
		String itv_valortotal= request.getParameter("itv_valortotal");
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
							<strong> codigo item compra:</strong> 
							<input name="com_codigoField" type="text"
								id="com_codigoField" size=""
								value="<%=(com_codigo==null)?"":com_codigo%>">
						</p>
						<p>
							<strong>codigo produto:</strong>
							 <input name="pro_codigoField"
								type="text" id="pro_codigoField" size=""
								value="<%=(pro_codigo==null)?"":pro_codigo%>">
						</p>
	
						<p>
							<strong>codigo tipo pagamento:</strong> 
							<input name="tpp_codigoField" type="text"
								id="tpp_codigoField" size=""
								value="<%=(tpp_codigo==null)?"":tpp_codigo%>">
						</p>
						<p>
							<strong>Codigo nota fiscal :</strong>
							 <input name="nf_codigoField" type="text"
								id="nf_codigoField" size=""
								value="<%=(nf_codigo==null)?"":nf_codigo%>">
						</p>
						<p>
							<strong> codigo fornecedor:</strong> 
							<input name="for_codigoField" type="text"
								id="for_codigoField" size=""
								value="<%=(for_codigo==null)?"":for_codigo%>">
						</p>
						<p>
							<strong>codigo tipo pagamento:</strong> 
							<input name="tpg_codigoField" type="text"
								id="tpg_codigoField" size=""
								value="<%=(tpg_codigo==null)?"":tpg_codigo%>">
						</p>
						<p>
							<strong>embalagem:</strong> 
							<input name="itv_embalagemField" type="text"
								id="itv_embalagemField" size=""
								value="<%=(itv_embalagem==null)?"":itv_embalagem%>">
						</p>
						<p>
							<strong>quantidade:</strong> 
							<input name="itv_qtdeField" type="text"
								id="itv_qtdeField" size=""
								value="<%=(itv_qtde==null)?"":itv_qtde%>">
						</p>
						<p>
							<strong>valor unidade:</strong> 
							<input name="itv_valorunField" type="text"
								id="itv_valorunField" size=""
								value="<%=(itv_valorun==null)?"":itv_valorun%>">
						</p>
						<p>
							<strong> descricao:</strong> 
							<input name="itv_descField" type="text"
								id="itv_descField" size=""
								value="<%=(itv_desc==null)?"":itv_desc%>">
						</p>
						<p>
							<strong>Valor total :</strong> 
							<input name="itv_valortotalField" type="text"
								id="itv_valortotalField" size=""
								value="<%=(itv_valortotal==null)?"":itv_valortotal%>">
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