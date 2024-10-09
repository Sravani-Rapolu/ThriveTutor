<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Courses - Thrive Tutor</title>
    <link rel="stylesheet" href="styles.css">
    <style>
         #popup {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: white;
            padding: 20px;
            border: 2px solid #007bff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            z-index: 1000;
        }
        #popup h2 {
            margin-top: 0;
        }
        #popup button {
            margin: 10px;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        #yesBtn {
            background-color: #007bff;
            color: white;
        }
        #noBtn {
            background-color: #dc3545;
            color: white;
        }
        /* Overlay for the popup */
        #overlay {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            z-index: 999;
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <div class="logo">
            <img src="images/finallogo.png" alt="Thrive Tutor Logo">
            <span>Thrive Tutor</span>
        </div>
        <div class="search-bar">
            <input type="text" placeholder="Search courses...">
        </div>
    </header>

    <!-- Courses Section -->
    <section class="courses">
        <h2>All Courses</h2>
        <div class="courses-grid">
            <div class="course-card">
                <a href="course_details.jsp?course=java">
                    <img src="images/javalogo.png" alt="Course 1">
                    <h3>JAVA</h3>
                    <p>Let's code...</p>
                </a>
            </div>
            <div class="course-card">
                <a href="course_details.jsp?course=course2">
                    <img src="images/python.jpg" alt="Course 2">
                    <h3>PYTHON</h3>
                    <p>Python is a popular programming language....</p>
                </a>
            </div>
            <div class="course-card">
                <a href="course_details.jsp?course=course3">
                    <img src="images/os.jpg" alt="Course 3">
                    <h3>Operating System</h3>
                    <p>Operating System lies in the category of system software....</p>
                </a>
            </div>
            <div class="course-card">
                <a href="course_details.jsp?course=course4">
                    <img src="images/ml.jpeg" alt="Course 4">
                    <h3>Machine Learning</h3>
                    <p>Learning is a fundamental concept when we...</p>
                </a>
            </div>
            <div class="course-card">
                <a href="course_details.jsp?course=course5">
                    <img src="images/economy.avif" alt="Course 5">
                    <h3>Economy</h3>
                    <p>Most current economies are capitalist...</p>
                </a>
            </div>
            <!-- Add more course cards as needed -->
        </div>
    </section>
    <!-- Popup structure -->
    <div id="overlay"></div>
    <div id="popup">
        <h2>Play for a while?</h2>
        <p>You've been browsing for a while. Would you like to take a break and play a game?</p>
        <button id="yesBtn">Yes</button>
        <button id="noBtn">No</button>
    </div>
    
    <script>
        document.addEventListener('DOMContentLoaded', (event) => {
            // Function to show the popup
            function showPopup() {
                console.log("Popup should be displayed now.");
                document.getElementById('overlay').style.display = 'block';
                document.getElementById('popup').style.display = 'block';
            }

            // Event listeners for buttons
            document.getElementById('yesBtn').addEventListener('click', function() {
                window.location.href = 'game.html';
            });

            document.getElementById('noBtn').addEventListener('click', function() {
                document.getElementById('overlay').style.display = 'none';
                document.getElementById('popup').style.display = 'none';
            });

            // Show popup every 30 minutes (30 * 60 * 1000 ms)
            setInterval(showPopup, 30*60*1000);  // Change to 30 minutes interval
        });
    </script>
    <!-- Footer -->
</body>
</html>
