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
		<h2>Редактировать подкатегорию</h2>
		<div class="block">
			<form:form method="post" action="/admin/editSubcategory"
				commandName="subcategory">
				<table>
					<tr>
						<td></td>
						<td><form:input path="id" value="${subcategory.id}"
								hidden="true" /></td>
					</tr>
					<tr>
						<td><form:label path="category">Category</form:label></td>
						<td><form:select path="category.id">
								<form:options items="${categoryList}" itemValue="id"
									itemLabel="name" />
							</form:select></td>
					</tr>
					<tr>
						<td><form:label path="name">Name</form:label></td>
						<td><form:input path="name" required="required" id="name"
								class="input_width" /></td>
					</tr>
					<tr>
						<td><form:label path="name_en">Name_en</form:label></td>
						<td><form:input path="name_en" required="required"
								id="name_en" class="input_width" /></td>
					</tr>
					<tr>
						<td><form:label path="name_es">Name_es</form:label></td>
						<td><form:input path="name_es" required="required"
								id="name_es" class="input_width" /></td>
					</tr>
					<tr>
						<td><form:label path="description">Description</form:label></td>
						<td><form:input path="description" class="input_width"
								id="description" /></td>
					</tr>
					<tr>
						<td><form:label path="description_en">Description_en</form:label></td>
						<td><form:input path="description_en" class="input_width"
								id="description_en" /></td>
					</tr>
					<tr>
						<td><form:label path="description_es">Description_es</form:label></td>
						<td><form:input path="description_es" class="input_width"
								id="description_es" /></td>
					</tr>
					<tr>
						<td><form:label path="content">Content</form:label></td>
						<td><form:textarea path="content" id="content"></form:textarea></td>
					</tr>
					<tr>
						<td><form:label path="content_en">Content_en</form:label></td>
						<td><form:textarea path="content_en" id="content_en"></form:textarea></td>
					</tr>
					<tr>
						<td><form:label path="content_es">Content_es</form:label></td>
						<td><form:textarea path="content_es" id="content_es"></form:textarea></td>
					</tr>
					<tr>
						<td colspan="2"><button type="submit" class="btn">Save
								Subcategory</button></td>
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
    $('#name_en').keyup( function() {
        var $this = $(this);
        if($this.val().length > 50)
            $this.val($this.val().substr(0, 50));           
    });
    $('#name_es').keyup( function() {
        var $this = $(this);
        if($this.val().length > 50)
            $this.val($this.val().substr(0, 50));           
    });
    $('#description').keyup( function() {
        var $this = $(this);
        if($this.val().length > 150)
            $this.val($this.val().substr(0, 150));           
    });
    $('#description_en').keyup( function() {
        var $this = $(this);
        if($this.val().length > 150)
            $this.val($this.val().substr(0, 150));           
    });
    $('#description_es').keyup( function() {
        var $this = $(this);
        if($this.val().length > 150)
            $this.val($this.val().substr(0, 150));           
    });
    $('#content').keyup( function() {
        var $this = $(this);
        if($this.val().length > 6000)
            $this.val($this.val().substr(0, 6000));           
    });
    $('#content_en').keyup( function() {
        var $this = $(this);
        if($this.val().length > 6000)
            $this.val($this.val().substr(0, 6000));           
    });
    $('#content_es').keyup( function() {
        var $this = $(this);
        if($this.val().length > 6000)
            $this.val($this.val().substr(0, 6000));           
    });
     });
     
</script>

<jsp:include page="adminfooter.jsp" />
