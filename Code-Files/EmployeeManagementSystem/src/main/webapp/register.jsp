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
		    transition: background-image 0.5s ease;
		}
		
		/* WELCOME BAR STYLING */
		.welcome-bar {
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
            max-width: 500px;
            margin: 30px auto;
            background: rgba(255, 255, 255, 0.6);
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
             background-color: #DA70D6;
            color: white;
            border: none;
            border-radius: 25px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #DDA0DD;
        }

        .home-content {
            text-align: center;
            font-size: 24px;
            font-weight: bold;
            color: darkslategray;
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
        <a href="register.jsp">Sign Up</a>
    </nav>

    <div id="home" class="container">
		<form action="save">
		<% if(request.getAttribute("status")!=null){ %>
            <h1 style="text-align: center;"><%= request.getAttribute("status") %></h1>
            <%}%>
            <label for="id">Id</label>
            <input type="number" name="id" required />
            
            <label for="name">Name</label>
            <input type="text" name="name" required />

            <label for="email">Email</label>
            <input type="text" name="email" required />

            <label for="password">Password</label>
            <input type="password" name="password" required />

            <label for="age">Enter Age</label>
            <input type="text" name="age" required />


			<label>Gender</label>
            <div class="gender">
                <label><input type="radio" name="gender" value="male" required /> Male</label>
                <label><input type="radio" name="gender" value="female" required /> Female</label>
                <label><input type="radio" name="gender" value="others" required /> Others</label>
            </div>

            <label for="mobile">Mobile</label>
            <input type="text" name="mobile" pattern="[0-9]{10}" required />


            <label for="department">Department</label>
            <input type="text" name="department" required />

            <label for="address">Address</label>
            <textarea name="address" rows="3" required></textarea>

            <button type="submit">Register</button>
        </form>
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
            		registration: 'url(https://images.pexels.com/photos/518244/pexels-photo-518244.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2)',
                    home: 'url(https://images.pexels.com/photos/5668838/pexels-photo-5668838.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2)',
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