<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Profile - <%= request.getAttribute("name") %>
        </title>
        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            body {
                font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, sans-serif;
                background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
                min-height: 100vh;
                padding: 40px 20px;
            }

            .container {
                max-width: 700px;
                margin: 0 auto;
                animation: fadeIn 0.6s ease-out;
            }

            @keyframes fadeIn {
                from {
                    opacity: 0;
                    transform: translateY(20px);
                }

                to {
                    opacity: 1;
                    transform: translateY(0);
                }
            }

            .profile-card {
                background: white;
                border-radius: 20px;
                box-shadow: 0 20px 60px rgba(0, 0, 0, 0.3);
                overflow: hidden;
            }

            .profile-header {
                background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
                padding: 40px;
                text-align: center;
                color: white;
            }

            .profile-avatar {
                width: 100px;
                height: 100px;
                background: white;
                border-radius: 50%;
                margin: 0 auto 20px;
                display: flex;
                align-items: center;
                justify-content: center;
                font-size: 40px;
                font-weight: 700;
                color: #667eea;
                box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
            }

            .profile-name {
                font-size: 32px;
                font-weight: 700;
                margin-bottom: 5px;
            }

            .profile-id {
                font-size: 16px;
                opacity: 0.9;
            }

            .profile-body {
                padding: 40px;
            }

            .info-section {
                margin-bottom: 30px;
                animation: slideUp 0.5s ease-out;
                animation-fill-mode: both;
            }

            .info-section:nth-child(1) {
                animation-delay: 0.1s;
            }

            .info-section:nth-child(2) {
                animation-delay: 0.2s;
            }

            .info-section:nth-child(3) {
                animation-delay: 0.3s;
            }

            .info-section:nth-child(4) {
                animation-delay: 0.4s;
            }

            @keyframes slideUp {
                from {
                    opacity: 0;
                    transform: translateY(10px);
                }

                to {
                    opacity: 1;
                    transform: translateY(0);
                }
            }

            .info-label {
                font-size: 12px;
                font-weight: 600;
                color: #667eea;
                text-transform: uppercase;
                letter-spacing: 1px;
                margin-bottom: 8px;
            }

            .info-value {
                font-size: 16px;
                color: #2d3748;
                line-height: 1.6;
                padding: 15px;
                background: #f7fafc;
                border-radius: 10px;
                border-left: 4px solid #667eea;
            }

            .back-btn {
                display: inline-block;
                padding: 12px 30px;
                background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
                color: white;
                text-decoration: none;
                border-radius: 10px;
                font-weight: 600;
                transition: all 0.3s ease;
                margin-top: 20px;
            }

            .back-btn:hover {
                transform: translateY(-2px);
                box-shadow: 0 10px 25px rgba(102, 126, 234, 0.4);
            }

            .success-badge {
                display: inline-block;
                background: #48bb78;
                color: white;
                padding: 8px 16px;
                border-radius: 20px;
                font-size: 14px;
                font-weight: 600;
                margin-bottom: 20px;
            }
        </style>
    </head>

    <body>
        <div class="container">
            <div class="profile-card">
                <div class="profile-header">
                    <div class="profile-avatar">
                        <%= request.getAttribute("name").toString().substring(0, 1).toUpperCase() %>
                    </div>
                    <div class="profile-name">
                        <%= request.getAttribute("name") %>
                    </div>
                    <div class="profile-id">
                        <%= request.getAttribute("studentId") %>
                    </div>
                </div>

                <div class="profile-body">
                    <div class="success-badge">✓ Profile Created Successfully</div>

                    <div class="info-section">
                        <div class="info-label">Program</div>
                        <div class="info-value">
                            <%= request.getAttribute("program") %>
                        </div>
                    </div>

                    <div class="info-section">
                        <div class="info-label">Email Address</div>
                        <div class="info-value">
                            <%= request.getAttribute("email") %>
                        </div>
                    </div>

                    <div class="info-section">
                        <div class="info-label">Hobbies</div>
                        <div class="info-value">
                            <%= request.getAttribute("hobbies") %>
                        </div>
                    </div>

                    <div class="info-section">
                        <div class="info-label">About Me</div>
                        <div class="info-value">
                            <%= request.getAttribute("introduction") %>
                        </div>
                    </div>

                    <a href="index.jsp" class="back-btn">← Create Another Profile</a>
                </div>
            </div>
        </div>
    </body>

    </html>