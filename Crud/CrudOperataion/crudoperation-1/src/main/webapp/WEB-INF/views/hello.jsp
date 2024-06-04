<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://cdn.tailwindcss.com"></script>

</head>
<body>
  <div>
    <div class="relative">
     <div class="h-[20vh] bg-blue-500 flex items-center justify-center">
          <div class="text-2xl font-bold text-white">
             CRUD OPERATION
          </div>
       </div>
           <div class="h-[80vh] bg-slate-200 flex justify-center items-center">
           <table border="1">
        <thead>
            <tr class="space-x-5">
                <th>UserName</th>
                <th>Email</th>
                <th>Mobile</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="user" items="${users}">
                <tr>
                    <td>${user.username}</td>
                    <td>${user.email}</td>
                    <td>${user.mobile}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

         </div>  
       
    </div>
  </div>
</body>
</html>