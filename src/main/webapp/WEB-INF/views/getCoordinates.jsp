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
		<h2>Редактировать категорию</h2>
		<div class="block">
			<form:form method="post" action="/admin/editCoordinates"
				commandName="coordinates">
				<table>
					<tr>
						<td></td>
						<td><form:input path="id" value="${coordinates.id}"
								hidden="true" /></td>
					</tr>
					<tr>
						<td><form:label path="city">Сity</form:label></td>
						<td><form:input path="city" required="required" id="city"
								class="input_width" /></td>
					</tr>
					<tr>
						<td><form:label path="city_en">Сity_en</form:label></td>
						<td><form:input path="city_en" required="required"
								id="city_en" class="input_width" /></td>
					</tr>
					<tr>
						<td><form:label path="city_es">Сity_es</form:label></td>
						<td><form:input path="city_es" required="required"
								id="city_es" class="input_width" /></td>
					</tr>
					<tr>
						<td><form:label path="latitude">Latitude</form:label></td>
						<td><form:input path="latitude" required="required"
								id="latitude" class="input_width" /></td>
					</tr>
					<tr>
						<td><form:label path="longitude">Longitude</form:label></td>
						<td><form:input path="longitude" required="required"
								id="longitude" class="input_width" /></td>
					</tr>
					<tr>
						<td><form:label path="address">Address</form:label></td>
						<td><form:input path="address" required="required"
								id="address" class="input_width" /></td>
					</tr>
					<tr>
						<td><form:label path="address_en">Address_en</form:label></td>
						<td><form:input path="address_en" required="required"
								id="address_en" class="input_width" /></td>
					</tr>
					<tr>
						<td><form:label path="address_es">Address_es</form:label></td>
						<td><form:input path="address_es" required="required"
								id="address_es" class="input_width" /></td>
					</tr>
					<tr>
						<td><form:label path="phone">Phone</form:label></td>
						<td><form:input path="phone" class="input_width" id="phone" /></td>
					</tr>
					<tr>
						<td><form:label path="skype">Skype</form:label></td>
						<td><form:input path="skype" class="input_width" id="skype" /></td>
					</tr>
					<tr>
						<td><form:label path="email">Email</form:label></td>
						<td><form:input path="email" class="input_width" id="email" /></td>
					</tr>
					<tr>
						<td colspan="2"><button type="submit" class="btn">Save
								Coordinates</button></td>
					</tr>
				</table>
			</form:form>
		</div>
	</div>
</div>


<script type="text/javascript">

$(document).ready(function(){   
    $('#city').keyup( function() {
        var $this = $(this);
        if($this.val().length > 50)
            $this.val($this.val().substr(0, 50));           
    });
    $('#city_en').keyup( function() {
        var $this = $(this);
        if($this.val().length > 50)
            $this.val($this.val().substr(0, 50));           
    });
    $('#city_es').keyup( function() {
        var $this = $(this);
        if($this.val().length > 50)
            $this.val($this.val().substr(0, 50));           
    });
    $('#latitude').keyup( function() {
        var $this = $(this);
        if($this.val().length > 50)
            $this.val($this.val().substr(0, 50));           
    });
    $('#longitude').keyup( function() {
        var $this = $(this);
        if($this.val().length > 50)
            $this.val($this.val().substr(0, 50));           
    });
    $('#address').keyup( function() {
        var $this = $(this);
        if($this.val().length > 50)
            $this.val($this.val().substr(0, 50));           
    });
    $('#address_en').keyup( function() {
        var $this = $(this);
        if($this.val().length > 50)
            $this.val($this.val().substr(0, 50));           
    });
    $('#address_es').keyup( function() {
        var $this = $(this);
        if($this.val().length > 50)
            $this.val($this.val().substr(0, 50));           
    });
    $('#phone').keyup( function() {
        var $this = $(this);
        if($this.val().length > 50)
            $this.val($this.val().substr(0, 50));           
    });
    $('#skype').keyup( function() {
        var $this = $(this);
        if($this.val().length > 50)
            $this.val($this.val().substr(0, 50));           
    });
    $('#email').keyup( function() {
        var $this = $(this);
        if($this.val().length > 50)
            $this.val($this.val().substr(0, 50));           
    });
    
     });
     
</script>

<jsp:include page="adminfooter.jsp" />
