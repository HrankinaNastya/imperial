<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:include page="adminheader.jsp" />
<jsp:include page="adminsidebar.jsp" />

<div class="grid_10">
	<div class="box round first">
		<h2>Редактировать подписку</h2>
		<div class="block">
			<form:form method="post" action="/admin/editSubscribe"
				commandName="subscribe">
				<table>
					<tr>
						<td></td>
						<td><form:input path="id" value="${subscribe.id}"
								hidden="true" /></td>
					</tr>
					<tr>
						<td><form:label path="email">Email</form:label></td>
						<td><form:input path="email" required="required" type="email"
								id="email" class="input_width" /></td>
					</tr>
					<tr>
						<td></td>
						<td><form:input path="created" value="${subscribe.created}"
								hidden="true" /></td>
					</tr>
					<tr>
						<td colspan="2"><button type="submit" class="btn">Save
								Subscribe</button></td>
					</tr>

				</table>
			</form:form>
		</div>
	</div>
</div>

<script type="text/javascript">
$(document).ready(function(){   

    $('#email').keyup( function() {
        var $this = $(this);
        if($this.val().length > 50)
            $this.val($this.val().substr(0, 50));           
    });

     });  
</script>

<jsp:include page="adminfooter.jsp" />
