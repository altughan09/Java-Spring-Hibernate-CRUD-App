<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<t:base>
	<div class="grid">
	    <div class="row">
	        <div class="cell-lg-6 offset-lg-3">
		        <div class="header-container">
		        <h1>Add Customer</h1>
		        </div>  
				<form:form action="saveCustomer" modelAttribute="customer" method="POST">
				
				<form:hidden path="id"/>
				
				    <div class="form-group">
				        <label>Company Name</label>
				        <form:input type="text" placeholder="Company name" path="companyName"/>
				    </div>
				    <div class="form-group">
				        <label>Company Code</label>
				        <form:input type="text" placeholder="Company code" path="companyCode"/>
				    </div>
				    <div class="form-group">
				        <label>Contact Person</label>
				        <form:input type="text" placeholder="Contact person" path="contactPerson"/>
				    </div>
				    <div class="form-group">
				        <label>Email</label>
				        <form:input type="email" placeholder="Email" path="email"/>
				    </div>
				    <div class="form-group">
				        <input type="submit" class="button success" value="Save Customer"/>
				        <input type="button" class="button" value="Go Back"  onclick="window.location.href='list'; return false;"/>
				    </div>
				</form:form>
	        </div>
	    </div>
	</div>
</t:base>