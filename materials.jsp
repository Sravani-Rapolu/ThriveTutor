<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Materials - Thrive Tutor</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        .download-button {
            display: inline-block;
            padding: 10px 20px;
            margin: 10px 0;
            font-size: 16px;
            color: white;
            background-color: #9283e5; /* Green background */
            border: none;
            border-radius: 5px;
            text-align: center;
            text-decoration: none;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .download-button:hover {
            background-color: #45a049; /* Darker green on hover */
        }
    </style>
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
        <section class="materials">
            <h2>Downloadable Materials</h2>
            <div class="material-buttons">
                <a href="pdfs/os.pdf" class="download-button" download>Operating Systems</a><br><br>
                <a href="pdfs/java.pdf" class="download-button" download>Java</a><br><br>
                <a href="pdfs/python.pdf" class="download-button" download>Python</a><br><br>
                <!-- Add more buttons as needed -->
            </div>
        </section>
    </main>
</body>
</html>
