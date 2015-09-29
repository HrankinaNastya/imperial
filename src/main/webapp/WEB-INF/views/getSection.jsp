<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="adminheader.jsp" />
<jsp:include page="adminsidebar.jsp" />

<div class="grid_10">
	<div class="box round first">
		<h2>Редактировать раздел</h2>
		<div class="block">
			<form:form method="post" action="/admin/editSection"
				commandName="section">
				<table>
					<tr>
						<td></td>
						<td><form:input path="id" value="${category.id}"
								hidden="true" /></td>
					</tr>
					<tr>
						<td><form:label path="name">Name</form:label></td>
						<td><form:input path="name" id="name" required="required"
								class="input_width" /></td>
					</tr>
					<tr>
						<td colspan="2"><button type="submit" class="btn">Save
								Section</button></td>
					</tr>
				</table>
			</form:form>
		</div>
	</div>
</div>

<script type="text/javascript">

$(document).ready(function(){   
    $('#name').keyup( function() {
        var $this = $(this);
        if($this.val().length > 50)
            $this.val($this.val().substr(0, 50));           
    });
     });
     
</script>

<jsp:include page="adminfooter.jsp" />
