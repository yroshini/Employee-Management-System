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

        #home.container {
	        max-width: 700px;
	        margin: 15px auto;
	        padding: 40px;
	        background: linear-gradient(to right, #e0c3fc, #8ec5fc);
	        border-radius: 16px;
	        box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
	        text-align: center;
	        color: #333;
	        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
   		}

	    #home h1 {
	        font-size: 2em;
	        margin-bottom: 15px;
	        color: #4b0082;
	    }
	
	    #home p {
	        font-size: 1.1em;
	        margin-bottom: 20px;
	    }
    </style>
</head>

<body>
    <div class="welcome-bar" >
        <h2>WELCOME TO EMPLOYEE MANAGEMENT SYSTEM</h2>
    </div>

    <nav>
        <a href="index.jsp">Home</a>
        <a href="aboutus.jsp">About Us</a>
        <a href="contactus.jsp">Contact Us</a>
        <a href="login.jsp">Login</a>
         <a href="register.jsp">SignUp</a>
    </nav>

    <div id="home" class="container">
    <h1>About Us</h1>
    <p>
        At Employee Management System (EMS), we are dedicated to transforming the way organizations manage their workforce.
        Our platform was built with a focus on simplicity, security, and efficiency — empowering HR teams and managers to handle
        employee records, roles, and responsibilities with ease.
    </p>
    <p>
        Founded by a team of passionate developers and HR professionals, EMS bridges the gap between technology and
        employee administration. Whether you're a small business or a growing enterprise, our solution is tailored to
        adapt to your unique HR needs.
    </p>
    <p>
        We believe that a well-managed workforce is the foundation of every successful company, and our mission is to
        support organizations with the tools they need to thrive in today’s digital world.
    </p>
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
            		contact: 'url(https://images.pexels.com/photos/518244/pexels-photo-518244.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2)',
                    registration: 'url(https://images.pexels.com/photos/5668838/pexels-photo-5668838.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2)',
                    login: 'url(https://images.pexels.com/photos/7734568/pexels-photo-7734568.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2)',
                    admin: 'url(https://static.vecteezy.com/system/resources/thumbnails/015/685/152/small_2x/human-resource-management-strategic-planning-for-success-through-people-business-development-concept-by-choosing-professional-leaders-employee-competency-teamwork-man-pointing-virtual-icon-free-photo.jpg)',
                    about: 'url(https://images.pexels.com/photos/14170548/pexels-photo-14170548.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2)',
                    home: 'url(https://images.pexels.com/photos/7688454/pexels-photo-7688454.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2)',
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