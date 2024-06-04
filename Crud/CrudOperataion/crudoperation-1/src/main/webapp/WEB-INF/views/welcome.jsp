<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
       <div class="bg-slate-200 h-[80vh] flex items-center justify-center">
         <div class="bg-white border border-blue-400 rounded-md w-[70vh]">
           <form action="/listuser" method="post" class="flex justify-center items-center space-y-[5vh] flex-col">
              <div class="my-5 text-3xl font-semibold w-[70vh] flex justify-center">
                Create User
              </div>
              <div class="flex flex-col">
               
                <label>Username</label>
                <input type="text" class="outline outline-green-400 text-2xl rounded-md w-[40vh]" name="username" value="${user.username}" />
              </div>
              <div class="flex flex-col">
              <label>Email</label>
                <input type="text" class="outline outline-green-400 text-2xl rounded-md w-[40vh]" name="email" value="${user.email}" />
              </div>
              <div class="flex flex-col">
              <label>Mobile</label>
                <input type="text" class="outline outline-green-400 text-2xl rounded-md w-[40vh]" name="mobile" value="${user.mobile}" />
              </div>
              <div>
              <button type="submit" class="h-[7vh] w-[10vh] bg-blue-600 text-white mb-[3vh]">CREATE</button>
           </div>
           </form>
           
         </div>
       </div>
    </div>
  </div>
</body>
</html>