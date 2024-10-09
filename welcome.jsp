<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<%
    HttpSession currentSession = request.getSession(false);
    if (currentSession == null || currentSession.getAttribute("userEmail") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
    String userEmail = (String) currentSession.getAttribute("userEmail");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome - Thrive Tutor</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            height: 100vh;
        }
        .chat-button {
            position: fixed;
            bottom: 20px;
            right: 20px;
            background-color: #007bff;
            border: none;
            border-radius: 50%;
            width: 60px;
            height: 60px;
            cursor: pointer;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .chat-button img {
            width: 100%;
            height: auto;
            border-radius: 50%;
        }
        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #8a84e4;
            color: #fff;
            padding: 10px 20px;
        }
        .menu-icon {
            font-size: 24px;
            cursor: pointer;
        }
        .profile-icon {
            width: 30px;
            height: 30px;
            border-radius: 50%;
            background: url('images/profile_icon.jpg') no-repeat center center/cover;
            cursor: pointer;
            position: relative;
        }
        .profile-dropdown {
            display: none;
            position: absolute;
            top: 40px;
            right: 0;
            background-color: white;
            color: black;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }
        .profile-dropdown a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }
        .profile-dropdown a:hover {
            background-color: #ddd;
        }
        .sidebar {
            height: 100%;
            width: 0;
            position: fixed;
            z-index: 1;
            top: 0;
            left: 0;
            background-color: #b7f1fd;
            overflow-x: hidden;
            transition: 0.5s;
            padding-top: 60px;
        }
        .sidebar a {
            padding: 8px 8px 8px 32px;
            text-decoration: none;
            font-size: 25px;
            color: #818181;
            display: block;
            transition: 0.3s;
        }
        .sidebar a:hover {
            color: #f1f1f1;
        }
        .closebtn {
            position: absolute;
            top: 0;
            right: 25px;
            font-size: 36px;
            margin-left: 50px;
        }
        .content {
            padding: 20px;
            margin-top: 20px;
        }
        .centered-content {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Full viewport height */
            text-align: center;
        }
        .centered-content img {
            max-width: 60%;
            height: auto;
        }
        #chat-icon {
    position: fixed;
    bottom: 20px; /* Adjust as needed */
    right: 20px; /* Adjust as needed */
    background-color: #007bff;
    color: #fff;
    width: 50px;
    height: 50px;
    border-radius: 50%;
    display: flex;
    justify-content: center;
    align-items: center;
    cursor: pointer;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

#chat-icon i {
    font-size: 24px;
}

    </style>
</head>
<body>
    <header>
        <div class="menu-icon" onclick="openNav()">&#9776;</div>
        <div>Thrive Tutor</div>
        <div class="profile-icon" onclick="toggleProfileDropdown()">
            <div class="profile-dropdown" id="profileDropdown">
                <a href="profile.jsp">Profile</a>
                <a href="settings.jsp">Settings</a>
                <a href="logout.jsp">Logout</a>
            </div>
        </div>
    </header>
    
    <div id="mySidebar" class="sidebar">
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
        <a href="courses.jsp">Courses</a>
        <a href="quizes.jsp">Quizzes</a>
        <a href="videos.jsp">Videos</a>
        <a href="materials.jsp">Materials</a>
    </div>
    
    <div class="centered-content">
        <h2>Welcome to Thrive Tutor!!!</h2><br><br>
        <img src="images/tenor.gif" alt="Welcome GIF">
    </div>
    
    <button class="chat-button" onclick="window.open('http://localhost:5000/chat', '_blank')">
        <img src="images/chat.png" alt="Chat">
    </button>

    <script>
        document.getElementById('chat-icon').addEventListener('click', function() {
            // Execute Python script (app.py)
            fetch('app.py')
                .then(response => response.text())
                .then(data => console.log(data))
                .catch(error => console.error('Error:', error));
        });

        function openNav() {
            document.getElementById("mySidebar").style.width = "250px";
        }

        function closeNav() {
            document.getElementById("mySidebar").style.width = "0";
        }

        function toggleProfileDropdown() {
            var dropdown = document.getElementById('profileDropdown');
            dropdown.style.display = dropdown.style.display === 'block' ? 'none' : 'block';
        }

        // Close the dropdown if the user clicks outside of it
        window.onclick = function(event) {
            if (!event.target.matches('.profile-icon') && !event.target.matches('.profile-icon *')) {
                var dropdowns = document.getElementsByClassName("profile-dropdown");
                for (var i = 0; i < dropdowns.length; i++) {
                    var openDropdown = dropdowns[i];
                    if (openDropdown.style.display === 'block') {
                        openDropdown.style.display = 'none';
                    }
                }
            }
        }
    </script>
</body>
</html>
