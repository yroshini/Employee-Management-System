<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        #admin {
		    position: absolute;
		    top: 50%;
		    left: 50%;
		    transform: translate(-50%, -50%);
		    background-color: rgba(255, 255, 255, 0.85); /* semi-transparent white */
		    padding: 20px 30px;
		    border-radius: 15px;
		    box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
		    max-width: 400px;
		    text-align: left;
		    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
		    line-height: 1.6;
		    border: 1px solid #ccc;
		}
		
		#admin h2 {
		    margin-top: 0;
		    font-size: 22px;
		    color: #000;
		}
		
		#admin p {
		    font-size: 16px;
		    color: #333;
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
    </div>
    <div id="registration" class="container">
        
    </div>
    <div id="login" class="container">
        
    </div>

    <div id="admin" class="section-content">
        <h2>Admin Panel</h2>
        <p>Welcome, Administrator! Here you can manage employee records, approvals, and system settings.</p>
    </div>
    

    <div id="about" class="section-content">
        <h2>About Us</h2>
        <p>We are a leading HR and employee management solution provider. Our mission is to simplify workforce
            management using modern technologies.</p>
    </div>

    <div id="contact" class="section-content">
        <h2>Contact Us</h2>
        <p>Email: anand@codegnan.com<br>Phone: +91 8977544170<br>Address: Mogalrajpuram Bus Stand,Codegnan Destination <br>Vijayawada, India</p>
    </div>

    <script>
        function showSection(sectionId) {
            const sections = ['home', 'registration', 'login', 'admin', 'about', 'contact'];
            const backgrounds = {
            		home: 'url(https://images.pexels.com/photos/518244/pexels-photo-518244.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2)',
                    registration: 'url(https://images.pexels.com/photos/5668838/pexels-photo-5668838.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2)',
                    login: 'url(https://images.pexels.com/photos/7734568/pexels-photo-7734568.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2)',
                    admin: 'url(https://images.pexels.com/photos/8111860/pexels-photo-8111860.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2)',
                    about: 'url(https://images.pexels.com/photos/14170548/pexels-photo-14170548.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2)',
                    contact: 'url(https://images.pexels.com/photos/8145370/pexels-photo-8145370.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2)',
            };

            sections.forEach(id => {
                document.getElementById(id).style.display = (id === sectionId) ? 'block' : 'none';
            });

            document.body.style.backgroundImage = backgrounds[sectionId] || '';
        }

        showSection('admin');
    </script>

</body>

</html>