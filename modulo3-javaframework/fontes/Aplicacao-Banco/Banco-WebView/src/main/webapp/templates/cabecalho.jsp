
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib  prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="navbar navbar-default navbar-static-top" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#"><fmt:message key="titulo.cabecalho"/></a>
		</div>
		<div class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-right">
				<li><a>
						<form action="Logout" id="formIcons">
							<span>
								<fmt:message key="saudacao"/>
							</span> 
							<b> 
								<script	type="text/javascript">
									document.write(getCookie());
								</script>
							</b> 
							<input type="submit" name="action" class="btn btn-xs btn-danger" value="<fmt:message key="botao.sair"/>">
							<button type="submit" name="action"	class="btn btn-xs btn-default" value="info" data-toggle="modal"	data-target="#modalInfo">
								<img alt="iforma��es" name="info"src="resources/img/information2.png" />
							</button>
							
						</form>
						<!-- Adi��o do formulario de altera��o de idioma -->
						<form method="post" action="MudarIdioma">
						
							<button type="submit" title="<fmt:message key="botao.brasil"/>" name="linguagem"	class="btn btn-xs btn-default" value="pt_BR">
								<img  src="resources/img/brasil.png" />								
							</button>							
							<button type="submit" name="linguagem" title="<fmt:message key="botao.eua"/>" class="btn btn-xs btn-default" value="en_US">
								<img  src="resources/img/estados_unidos.png" />								
													
							</button>							
						
						</form>
				</a></li>
			</ul>
		</div>
	</div>
</div>


<div class="modal fade" id="modalInfo" tabindex="-1" role="dialog"	aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">x</button>
				<h4 class="modal-title" id="myModalLabel">Gerenciamento de log</h4>
			</div>
			<div class="modal-body">
				<div class="table-responsive">
					<table class="table table-bordered table-hover">
						<thead>
							<tr>
								<th>Action</th>
								<th>Data</th>

							</tr>
						</thead>
						<tbody>
							
							<c:forEach items="${dadosLog}" var="log" varStatus="index">
								<tr>								
									<td>
										${log.descricao}
									</td>
									<td>
										${log.dataFormatada}
									</td>
								</tr>
							</c:forEach>
						</tbody>						
					</table>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
			</div>
		</div>
	</div>
</div>
