<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Employee Management System</title>
    <style>
         * {
		    margin: 0;
		    padding: 0;
		    box-sizing: border-box;
		    font-family: Arial, sans-serif;
		}
		
		body {
		    background-size: cover;
		    background-position: center;
		    background-repeat: no-repeat;
		    min-height: 100vh;
		    padding-top: 225px; /* Accommodate welcome-bar + nav height */
		    transition: background-image 0.5s ease;
		}
		
		/* WELCOME BAR STYLING */
		.welcome-bar {
		    position: fixed;
		    top: 0;
		    width: 100%;
		    text-align: center;
		    font-size: 26px;
		    font-weight: bold;
		    color: steelblue;
		    padding: 20px 0;
		    background: rgba(255, 255, 255, 0.75);
		    border-bottom: none;
			box-shadow: 0 4px 15px rgba(186, 85, 211, 0.6);
		    z-index: 1000;
		}
		
		.welcome-bar:hover {
		    color: skyblue;
		    cursor: default;
		}
		
		/* NAVIGATION */
		nav {
		    position: fixed;
		    top: 85px;
		    width: 100%;
		    display: flex;
		    justify-content: center;
		    gap: 30px;
		    padding: 12px 0;
		    background-color: rgba(255, 255, 255, 0.8);
		    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
		    z-index: 999;
		}
		
		nav a {
		    color: purple;
		    text-decoration: none;
		    font-weight: bold;
		    font-size: 18px;
		    transition: color 0.3s ease;
		}
		
		nav a:hover {
		    text-decoration: none;
		    color: orange;
		}

        .container,
        .section-content,
        .home-content {
            max-width: 950px;
            margin: 30px auto;
            background: rgba(255, 255, 255, 0.8);
            padding: 30px;
            border-radius: 25px;
            border: 2px solid #444;
            display: none;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        }
        .home-content:hover{
            text-decoration: none;
            color: black;
        }


        form {
            display: flex;
            flex-direction: column;
        }

        label {
            margin-top: 12px;
            font-weight: bold;
        }

        input,
        select,
        textarea {
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #aaa;
            border-radius: 5px;
        }

        .gender {
            display: flex;
            justify-content: space-around;
            margin-top: 5px;
        }

        .gender label {
            font-weight: normal;
        }

        button {
            margin-top: 20px;
            padding: 12px;
            background-color: lightblue;
            color: white;
            border: none;
            border-radius: 25px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #005f9e;
        }

        .home-content {
            text-align: center;
            font-size: 24px;
            font-weight: bold;
            color: darkslategray;
        }
        a{
        text-decoration:none;
        }
    </style>
</head>

<body>
    <div class="welcome-bar" >
        <h2>WELCOME TO EMPLOYEE MANAGEMENT SYSTEM</h2>
    </div>

    <nav>
        <a href="admin.jsp">Home</a>
        <a href="findAll">View All Employees</a>
        <a href="search.jsp">Search Employee</a>
        <a href="logout">Logout</a>
    </nav>

    <div id="home" class="container">
		<h2>Welcome to <%= session.getAttribute("email") %></h2>
    
    
	    <table border="1">
		    <tr>
		    	<th>ID</th>
		    	<th>NAME</th>
		    	<th>EMAIL</th>
		    	<th>PASSWORD</th>
		    	<th>AGE</th>	    	
		    	<th>MOBILE</th>
		    	<th>GENDER</th>
		    	<th>DEPARTMENT</th>
		    	<th>ADDRESS</th>
		    	<th>UPDATE</th>
		    	<th>DELETE</th>	    	
		    </tr>
		    <c:forEach var="emp" items="${emplist }">
		    	<tr>
		    		<td>${emp.id}</td>
		    		<td>${emp.name}</td>
		    		<td>${emp.email}</td>
		    		<td>${emp.password}</td>	    		
		    		<td>${emp.age}</td>
		    		<td>${emp.mobile}</td>
		    		<td>${emp.gender}</td>
		    		<td>${emp.department}</td>
		    		<td>${emp.address}</td>	
		    		<td> <a href='edit.jsp?id=${emp.id}&name=${emp.name}&email=${emp.email}&password=${emp.password}&age=${emp.age}&mobile=${emp.mobile}&gender=${emp.gender}&department=${emp.department}&address=${emp.address}'>Edit</a></td>   		 
		    		<td> <a href='delete?id=${emp.id}'>Delete</a></td>   
		    		
		    	</tr>
		    </c:forEach>
	    </table>
    </div>
    <div id="registration" class="container">
        
    </div>
    <div id="login" class="container">
        
    </div>

    <div id="admin" class="section-content">
    
    </div>

    <div id="about" class="section-content">
    
    </div>

    <div id="contact" class="section-content">
     
     </div>

    <script>
        function showSection(sectionId) {
            const sections = ['home', 'registration', 'login', 'admin', 'about', 'contact'];
            const backgrounds = {
            		home: 'url(https://images.pexels.com/photos/5716031/pexels-photo-5716031.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2)',
                    registration: 'url(https://images.pexels.com/photos/5668838/pexels-photo-5668838.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2)',
                    login: 'url(https://images.pexels.com/photos/7734568/pexels-photo-7734568.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2)',
                    admin: 'url(https://static.vecteezy.com/system/resources/thumbnails/015/685/152/small_2x/human-resource-management-strategic-planning-for-success-through-people-business-development-concept-by-choosing-professional-leaders-employee-competency-teamwork-man-pointing-virtual-icon-free-photo.jpg)',
                    about: 'url(https://images.pexels.com/photos/14170548/pexels-photo-14170548.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2)',
                    contact: 'url(https://images.pexels.com/photos/8145370/pexels-photo-8145370.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2)',
            };

            sections.forEach(id => {
                document.getElementById(id).style.display = (id === sectionId) ? 'block' : 'none';
            });

            document.body.style.backgroundImage = backgrounds[sectionId] || '';
        }

        showSection('home');
    </script>

</body>

</html>