<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Personal Profile</title>
        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            body {
                font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, sans-serif;
                background: #ffffff;
                min-height: 100vh;
                display: flex;
                align-items: center;
                justify-content: center;
                padding: 20px;
            }

            .container {
                background: white;
                border-radius: 12px;
                box-shadow: 0 2px 10px rgba(0, 0, 0, 0.08);
                max-width: 500px;
                width: 100%;
                padding: 40px;
                border: 1px solid #e5e7eb;
            }

            h1 {
                color: #111827;
                font-size: 28px;
                margin-bottom: 8px;
                font-weight: 600;
            }

            .subtitle {
                color: #6b7280;
                margin-bottom: 32px;
                font-size: 14px;
            }

            .form-group {
                margin-bottom: 20px;
            }

            label {
                display: block;
                color: #374151;
                font-size: 14px;
                font-weight: 500;
                margin-bottom: 6px;
            }

            input[type="text"],
            input[type="email"],
            textarea {
                width: 100%;
                padding: 10px 14px;
                border: 1px solid #d1d5db;
                border-radius: 6px;
                font-size: 14px;
                transition: all 0.2s ease;
                font-family: inherit;
                background: #ffffff;
            }

            input[type="text"]:focus,
            input[type="email"]:focus,
            textarea:focus {
                outline: none;
                border-color: #3b82f6;
                box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
            }

            textarea {
                resize: vertical;
                min-height: 100px;
            }

            .submit-btn {
                width: 100%;
                padding: 12px;
                background: #3b82f6;
                color: white;
                border: none;
                border-radius: 6px;
                font-size: 15px;
                font-weight: 600;
                cursor: pointer;
                transition: all 0.2s ease;
                margin-top: 8px;
            }

            .submit-btn:hover {
                background: #2563eb;
            }

            .submit-btn:active {
                transform: scale(0.98);
            }
        </style>
    </head>

    <body>
        <div class="container">
            <h1>Personal Profile</h1>
            <p class="subtitle">Share your information with us</p>

            <form action="ProfileServlet" method="POST">
                <div class="form-group">
                    <label for="name">Full Name</label>
                    <input type="text" id="name" name="name" required>
                </div>

                <div class="form-group">
                    <label for="studentId">Student ID</label>
                    <input type="text" id="studentId" name="studentId" required>
                </div>

                <div class="form-group">
                    <label for="program">Program</label>
                    <input type="text" id="program" name="program" required>
                </div>

                <div class="form-group">
                    <label for="email">Email Address</label>
                    <input type="email" id="email" name="email" required>
                </div>

                <div class="form-group">
                    <label for="hobbies">Hobbies</label>
                    <input type="text" id="hobbies" name="hobbies" placeholder="e.g., Reading, Gaming, Sports" required>
                </div>

                <div class="form-group">
                    <label for="introduction">Self Introduction</label>
                    <textarea id="introduction" name="introduction" placeholder="Tell us about yourself..."
                        required></textarea>
                </div>

                <button type="submit" class="submit-btn">Submit Profile</button>
            </form>
        </div>
    </body>

    </html>