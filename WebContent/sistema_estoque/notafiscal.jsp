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
	        
	         /*if (document.cadastro.nf_codigoField.value == ''){  
	            document.cadastro.statusField.value = 'Preencha o campo código';  
	         }else if (document.cadastro.nf_valornfField.value == ''){  
	            document.cadastro.statusField.value = 'Preencha o campo valor';  
			// }else if (document.cadastro.nf_taxaimpostonfField.value == ''){  
	            //document.cadastro.statusField.value = 'Preencha o campo taxa'; 
	         }else if (document.cadastro.nf_valorimpostoField.value == ''){  
	            document.cadastro.statusField.value = 'Preencha o campo valor';  
	         }else {*/  
	            document.cadastro.action='cadastrar_notafiscal.jsp';  
	            document.cadastro.submit();  
	         //} 
	     
	      } else if (par == 'consultar'){  
	     
	         if (document.cadastro.nf_codigoField.value == ''){  
	            document.cadastro.statusField.value = 'Preencha o campo código';  
	         }else {  
	            document.cadastro.action='consultar_notafiscal.jsp';  
	            document.cadastro.submit();  
	         }  
	     
	      } else if (par == 'alterar'){  
	     
	      /*   if (document.cadastro.nf_codigoField.value == ''){  
	            document.cadastro.statusField.value = 'Preencha o campo codigo';  
	         }else if (document.cadastro.nf_valornfField.value == ''){  
	            document.cadastro.statusField.value = 'Preencha o campo valor';  
			 }else if (document.cadastro.nf_taxaimpostonfField.value == ''){  
	            document.cadastro.statusField.value = 'Preencha o campo taxa'; 
	         }else if (document.cadastro.nf_valorimpostoField.value == ''){  
	            document.cadastro.statusField.value = 'Preencha o campo valor';  
	         }else { */ 
	            document.cadastro.action='alterar_notafiscal.jsp';  
	            document.cadastro.submit();  
	         //}  
	      } else if (par == 'excluir'){  
	     
	         if (document.cadastro.nf_codigoField.value == ''){  
	            document.cadastro.statusField.value = 'Preencha o campo código';  
	         }else {  
	            document.cadastro.action='excluir_notafiscal.jsp';  
	            document.cadastro.submit();  
	         }  
	      } else if (par == 'listar'){  
	         document.cadastro.action='listar_notafiscal.jsp';  
	         document.cadastro.submit();  
	      }  
	   }  
	     
	   </script>  
	</head>
	<%  
		   String nf_codigo = request.getParameter("nf_codigoField");  
		   String nf_valornf = request.getParameter("nf_valornfField");  
		   String nf_taxaimpostonf = request.getParameter("nf_taxaimpostonfField");  
		   String nf_valorimpostonf = request.getParameter("nf_valorimpostonf"); 
		   String status = request.getParameter("status");  
	   %>  
	<body>
		<form name="cadastro" method="get">

		<table width="" border="">
			<tr>
				<td width="" height="" bgcolor="red"><p align="left"
						class="style">Cadastro nota fiscal</p></td>
			</tr>
			<tr>
				<td height="" bgcolor="red"><p>
						<strong>Codigo :</strong> <input name="nf_codigoField" type="text"
							id="nf_codigoField" size=""
							value='<%=(nf_codigo == null) ? "" : nf_codigo%>'>
					</p>
					<p>
						<strong>Valor :</strong> <input name="nf_valornfField" type="text"
							id="nf_valornfField" size=""
							value='<%=(nf_valornf == null) ? "" : nf_valornf%>'>
					</p>
					<p>
						<strong>taxa:</strong> <input name="nf_taxaimpostonfField"
							type="text" id="nf_taxaimpostonfField" size=""
							value='<%=(nf_taxaimpostonf == null) ? "" : nf_taxaimpostonf%>'>
					</p>

					<p>
						<strong>valor do imposto:</strong> <input
							name="nf_valorimpostonfField" type="text"
							id="nf_taxaimpostonfField" size=""
							value='<%=(nf_valorimpostonf == null) ? "" : nf_valorimpostonf%>'>
					</p></td>
			</tr>
			<tr>
				<td height="" bgcolor="red">
					<p>
						<input type="button" onClick="enviar('cadastrar')" name="bt"
							value="cadastrar">
					</p>
					<p>
						<input type="button" onClick="enviar('consultar')" name="bt"
							value="consultar">
					</p>
					<p>
						<input type="button" onClick="enviar('alterar')" name="bt"
							value="alterar">
					</p>
					<p>
						<input type="button" onClick="enviar('excluir')" name="bt"
							value="excluir">
					</p>
					<p>
						<input type="button" onClick="enviar('listar')" name="bt"
							value="listar">
					</p>
					<p>
						<strong>Status: <input name="statusField"
							disabledtype="text" id="statusField" size=""
							value="<%=(status==null)?"":status%>">
						</strong>
					</p>
				</td>
			</tr>
		</table>
	</form>  
	</body>
</html>