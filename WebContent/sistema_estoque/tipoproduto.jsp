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
	        
	         if (document.cadastro.tpp_codigoField.value == ''){  
	            document.cadastro.statusField.value = 'Preencha o campo codigo';
	            
	         }else if (document.cadastro.tpp_descricaoField.value == ''){  
	            document.cadastro.statusField.value = 'Preencha o campo descricao';  
	            
	         }else {  
	            document.cadastro.action='cadastrar_tipoproduto.jsp';  
	            document.cadastro.submit();  
	         }  
	     
	      } else if (par == 'consultar'){  
	     
	    	  if (document.cadastro.tpp_codigoField.value == ''){  
		            document.cadastro.statusField.value = 'Preencha o campo codigo';
		            
		         }else {  
	            document.cadastro.action='consultar_tipoproduto.jsp';  
	            document.cadastro.submit();  
	         }  
	     
	      } else if (par == 'alterar'){  
	     
	    	  if (document.cadastro.tpp_codigoField.value == ''){  
		            document.cadastro.statusField.value = 'Preencha o campo codigo';
		            
		         }else if (document.cadastro.tpp_descricaoField.value == ''){  
		            document.cadastro.statusField.value = 'Preencha o campo descricao';  
		            
		         }else {  
		            document.cadastro.action='alterar_tipoproduto.jsp';  
		            document.cadastro.submit();  
	         }  
	      } else if (par == 'excluir'){  
	     
	    	  if (document.cadastro.tpp_codigoField.value == ''){  
		            document.cadastro.statusField.value = 'Preencha o campo codigo';
		            
		       }else {  
	            document.cadastro.action='excluir_tipoproduto.jsp';  
	            document.cadastro.submit();  
	         }  
	      } else if (par == 'listar'){  
	         document.cadastro.action='listar_tipoproduto.jsp';  
	         document.cadastro.submit();  
	      }  
	   }  
	     
	   </script>  
	</head>
	<%  	
			String tpp_codigo = request.getParameter("tpp_codigo");
			String tpp_descricao = request.getParameter("tpp_descricao");	
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
							<strong>Codigo :</strong> 
							<input name="tpp_codigoField" type="text"
								id="tpp_codigoField" size=""
								value="<%=(tpp_codigo==null)?"":tpp_codigo%>">
						</p>
						<p>
							<strong>descricao :</strong>
							 <input name="tpp_descricaoField" type="text"
								id="tpp_descricaoField" size=""
								value="<%=(tpp_descricao==null)?"":tpp_descricao%>">
						</p>
						
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