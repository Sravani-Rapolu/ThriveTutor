<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Settings - Thrive Tutor</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        /* Reset default margins and paddings */
body, html {
    margin: 0;
    padding: 0;
}

/* Basic styling for header and footer */
header, footer {
    background-color: #333;
    color: #fff;
    padding: 10px 20px;
    text-align: center;
}

/* Main content area */
main {
    max-width: 800px;
    margin: 20px auto;
    padding: 20px;
    background-color: #f0f0f0;
    border: 1px solid #ccc;
    border-radius: 5px;
}

/* Form styles */
form {
    margin-bottom: 20px;
}

form h3 {
    margin-top: 10px;
}

label {
    display: inline-block;
    width: 150px;
    margin-bottom: 10px;
}

input[type="text"],
input[type="email"],
input[type="password"],
input[type="number"],
select {
    width: calc(100% - 10px);
    padding: 5px;
    margin: 5px 0 10px 0;
    border: 1px solid #ccc;
    border-radius: 3px;
    font-size: 14px;
}

input[type="checkbox"] {
    margin-right: 10px;
}

button {
    padding: 10px 20px;
    margin-top: 10px;
    background-color: #4CAF50;
    color: white;
    border: none;
    border-radius: 3px;
    cursor: pointer;
}

button:hover {
    background-color: #45a049;
}

button[type="button"] {
    background-color: #ccc;
    margin-left: 10px;
}

button[type="button"]:hover {
    background-color: #bbb;
}

/* Responsive adjustments */
@media (max-width: 600px) {
    label {
        width: 100%;
        display: block;
    }

    input,
    select,
    button {
        width: 100%;
    }
}

    </style>
</head>
<body>
    <header>
        <!-- Header content -->
    </header>

    <main>
        <section class="settings">
            <h2>Account Settings</h2>

            <form action="updateSettingsServlet" method="POST">
                <!-- Change Password Section -->
                <h3>Change Password</h3>
                <label for="currentPassword">Current Password:</label>
                <input type="password" id="currentPassword" name="currentPassword" required><br>
                <label for="newPassword">New Password:</label>
                <input type="password" id="newPassword" name="newPassword" required><br>
                <label for="confirmPassword">Confirm Password:</label>
                <input type="password" id="confirmPassword" name="confirmPassword" required><br>

                <!-- Update Email Section -->
                <h3>Update Email</h3>
                <label for="currentEmail">Current Email:</label>
                <input type="email" id="currentEmail" name="currentEmail" required><br>
                <label for="newEmail">New Email:</label>
                <input type="email" id="newEmail" name="newEmail" required><br>

                <!-- Notification Preferences Section -->
                <h3>Notification Preferences</h3>
                <input type="checkbox" id="emailNotifications" name="emailNotifications">
                <label for="emailNotifications">Email Notifications</label><br>

                <!-- Privacy Settings Section -->
                <h3>Privacy Settings</h3>
                <input type="checkbox" id="profileVisibility" name="profileVisibility">
                <label for="profileVisibility">Profile Visibility</label><br>

                <!-- Save and Cancel Buttons -->
                <button type="submit">Save Changes</button>
                <button type="button" onclick="window.history.back()">Cancel</button>
            </form>
        </section>
    </main>

    <footer>
        <!-- Footer content -->
    </footer>
</body>
</html>
