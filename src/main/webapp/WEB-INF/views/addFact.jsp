<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="adminheader.jsp" />
<jsp:include page="adminsidebar.jsp" />

<div class="grid_10">
	<div class="box round first">
		<h2>Добавить "А знаете ли вы?"</h2>
		<div class="block">
			<form:form method="post" action="addFactObj" commandName="fact">
				<table>
					<tr>
						<td><form:label path="section">Section</form:label></td>
						<td><form:select path="section.id">
								<form:options items="${sectionList}" itemValue="id"
									itemLabel="name" />
							</form:select></td>
					</tr>
					<tr>
						<td><form:label path="description">Description</form:label></td>
						<td><form:input path="description" required="required" id="description"
								class="input_width" /></td>
					</tr>
					<tr>
						<td><form:label path="description_en">Description_en</form:label></td>
						<td><form:input path="description_en" class="input_width" 
						id="description_en"/></td>
					</tr>
					<tr>
						<td><form:label path="content">Content</form:label></td>
						<td><form:textarea path="content" required="required" id="content"></form:textarea></td>
					</tr>
					<tr>
						<td><form:label path="content_en">Content_en</form:label></td>
						<td><form:textarea path="content_en" id="content_en"></form:textarea></td>
					</tr>
					<tr>
						<td colspan="2"><button type="submit" class="btn">Add
								Fact</button></td>
					</tr>
				</table>
			</form:form>
		</div>
	</div>
</div>

<script type="text/javascript">

$(document).ready(function(){   
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
     });
     
</script>

<jsp:include page="adminfooter.jsp" />
