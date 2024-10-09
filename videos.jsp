<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Videos - Thrive Tutor</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        header {
            background-color: #ce82d4;
            color: white;
            padding: 1rem;
            text-align: center;
        }
        .logo {
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .logo img {
            height: 50px;
            margin-right: 10px;
        }
        nav ul {
            list-style: none;
            padding: 0;
            text-align: center;
        }
        nav ul li {
            display: inline;
            margin: 0 15px;
        }
        nav ul li a {
            color: white;
            text-decoration: none;
        }
        main {
            padding: 20px;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        .video-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            padding: 20px;
        }
        .video-item {
            margin: 10px;
            flex: 1 1 300px;
            max-width: 45%;
            background-color: white;
            padding: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .video-item video {
            width: 100%;
            height: auto;
        }
        .video-item p {
            text-align: center;
            font-size: 1.2em;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <header>
        <div class="logo">
            <img src="images/finallogo.png" alt="Thrive Tutor Logo">
            <span>Thrive Tutor</span>
        </div>
    </header>
    <main>
        <h2>Our Educational Videos</h2>
        <div class="video-container">
            <div class="video-item">
                <video controls>
                    <source src="videos/Learn Java in One Video - 15-minute Crash Course.mp4" type="video/mp4">
                </video>
                <p>Java Crash Course</p>
            </div>
            <div class="video-item">
                <video controls>
                    <source src="videos/Python Tutorial in 30 Minutes (Crash Course for Absolute Beginners).mp4" type="video/mp4">
                </video>
                <p>Python Crash course</p>
            </div>
            <div class="video-item">
                <video controls>
                    <source src="videos/Fundamentals of Finance & Economics for Businesses – Crash Course.mp4" type="video/mp4">
                </video>
                <p>Fundamentals of Economy</p>
            </div>
            <!-- Add more video items as needed -->
        </div>
    </main>
</body>
</html>
