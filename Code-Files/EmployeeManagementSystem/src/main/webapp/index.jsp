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
		
		/* FORM ELEMENTS */
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
		
		/* GENDER FLEX ROW */
		.gender {
		    display: flex;
		    justify-content: space-around;
		    margin-top: 5px;
		}
		
		.gender label {
		    font-weight: normal;
		}
		
		/* BUTTON STYLES */
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
		
		#home.container {
	        max-width: 700px;
	        margin: 35px auto;
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
	
	    #home ul {
	        list-style-type: none;
	        padding: 0;
	        margin: 20px 0;
	    }
	
	    #home ul li {
	        padding: 6px 0;
	    }
	
	    #home .btn {
	        display: inline-block;
	        padding: 12px 24px;
	        background-color: #6a0dad;
	        color: #fff;
	        text-decoration: none;
	        border-radius: 8px;
	        transition: background 0.3s ease;
	        font-weight: bold;
	    }
	
	    #home .btn:hover {
	        background-color: #8e2de2;
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
    <h1>The Employee Management System!</h1>
    <p>Manage employee records efficiently with our intuitive and secure platform.</p>
    <ul>
        <li>Add, update, or delete employee details</li>
        <li>View and search employee records</li>
        <li>Streamlined and user-friendly interface</li>
    </ul>
    <a href="login.jsp" class="btn btn-primary">Get Started</a>
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
                about: 'url(https://images.pexels.com/photos/518244/pexels-photo-518244.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2)',
                registration: 'url(https://images.pexels.com/photos/5668838/pexels-photo-5668838.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2)',
                login: 'url(https://images.pexels.com/photos/7734568/pexels-photo-7734568.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2)',
                admin: 'url(https://static.vecteezy.com/system/resources/thumbnails/015/685/152/small_2x/human-resource-management-strategic-planning-for-success-through-people-business-development-concept-by-choosing-professional-leaders-employee-competency-teamwork-man-pointing-virtual-icon-free-photo.jpg)',
                home: 'url(https://images.pexels.com/photos/14170548/pexels-photo-14170548.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2)',
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