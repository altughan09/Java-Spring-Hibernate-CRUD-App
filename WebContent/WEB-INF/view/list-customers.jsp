<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<t:base>
	<div class="grid">
	    <div class="row">
	        <div class="cell-lg-10 offset-lg-1">
		        <div class="header-container">
		        <h1>Customer Relationship Management (CRM)</h1>
		        </div>  
		        <input type="button" value="Add Customer" onclick="window.location.href='showFormForAdd'; return false;" class="button primary add-button "/>
		        <table id="crm-table" class="table striped table-border cell-border">
		         <thead>
					  <tr>
					    <th>Company Name</th>
					    <th>Company Code</th>
					    <th>Contact Person</th>
					    <th>Email</th>
					    <th>Action</th>
					  </tr>
					  </thead>
					  <tbody>
					  <c:forEach var="customer" items="${customers}"> 
					  
					  	<c:url var="updateLink" value="/crm/showFormForUpdate">
					  		<c:param name="customerId" value="${customer.id}"/>
					  	</c:url>
					  	
					  	<c:url var="deleteLink" value="/crm/delete">
					  		<c:param name="customerId" value="${customer.id}"/>
					  	</c:url>
					  	
					  	  <tr>
						    <td>${ customer.companyName }</td>
						    <td>${ customer.companyCode }</td>
						    <td>${ customer.contactPerson }</td>
						    <td>${ customer.email }</td>
						    <td><a href="${ updateLink }">Update</a> | <a href="${ deleteLink }"  onclick="return confirm('Delete entry?')">Delete</a></td>
						  </tr>
					  </c:forEach>
					  </tbody>
					</table>
	        </div>
	    </div>
	</div>
</t:base>