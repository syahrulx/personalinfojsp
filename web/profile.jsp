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
                background: #f3f4f6;
                min-height: 100vh;
                padding: 40px 20px;
            }

            .container {
                max-width: 1000px;
                margin: 0 auto;
            }

            .grid {
                display: grid;
                grid-template-columns: 1fr 2fr;
                gap: 20px;
                margin-bottom: 20px;
            }

            @media (max-width: 768px) {
                .grid {
                    grid-template-columns: 1fr;
                }
            }

            .card {
                background: white;
                border-radius: 12px;
                box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
                padding: 30px;
                border: 1px solid #e5e7eb;
            }

            .profile-card {
                text-align: center;
            }

            .avatar {
                width: 120px;
                height: 120px;
                background: linear-gradient(135deg, #3b82f6 0%, #8b5cf6 100%);
                border-radius: 50%;
                margin: 0 auto 20px;
                display: flex;
                align-items: center;
                justify-content: center;
                font-size: 48px;
                font-weight: 700;
                color: white;
                box-shadow: 0 4px 12px rgba(59, 130, 246, 0.3);
            }

            .profile-name {
                font-size: 24px;
                font-weight: 700;
                color: #111827;
                margin-bottom: 5px;
            }

            .profile-title {
                font-size: 14px;
                color: #6b7280;
                margin-bottom: 8px;
            }

            .profile-location {
                font-size: 13px;
                color: #9ca3af;
                margin-bottom: 20px;
            }

            .action-buttons {
                display: flex;
                gap: 10px;
                justify-content: center;
                margin-bottom: 25px;
            }

            .btn {
                padding: 10px 24px;
                border-radius: 6px;
                font-size: 14px;
                font-weight: 600;
                cursor: pointer;
                transition: all 0.2s;
                text-decoration: none;
                display: inline-block;
            }

            .btn-primary {
                background: #3b82f6;
                color: white;
                border: none;
            }

            .btn-primary:hover {
                background: #2563eb;
            }

            .btn-secondary {
                background: white;
                color: #374151;
                border: 1px solid #d1d5db;
            }

            .btn-secondary:hover {
                background: #f9fafb;
            }

            .social-links {
                border-top: 1px solid #e5e7eb;
                padding-top: 20px;
            }

            .social-item {
                display: flex;
                align-items: center;
                justify-content: space-between;
                padding: 12px 0;
                border-bottom: 1px solid #f3f4f6;
            }

            .social-item:last-child {
                border-bottom: none;
            }

            .social-label {
                display: flex;
                align-items: center;
                gap: 10px;
                color: #374151;
                font-size: 14px;
                font-weight: 500;
            }

            .social-icon {
                width: 20px;
                height: 20px;
                color: #6b7280;
            }

            .social-value {
                color: #6b7280;
                font-size: 14px;
            }

            .info-card {
                display: flex;
                flex-direction: column;
                gap: 20px;
            }

            .info-row {
                display: flex;
                padding-bottom: 16px;
                border-bottom: 1px solid #f3f4f6;
            }

            .info-row:last-child {
                border-bottom: none;
                padding-bottom: 0;
            }

            .info-label {
                font-size: 14px;
                font-weight: 600;
                color: #374151;
                min-width: 120px;
            }

            .info-value {
                font-size: 14px;
                color: #6b7280;
                flex: 1;
            }

            .edit-btn {
                background: #06b6d4;
                color: white;
                border: none;
                padding: 8px 16px;
                border-radius: 6px;
                font-size: 13px;
                font-weight: 600;
                cursor: pointer;
                margin-bottom: 20px;
            }

            .edit-btn:hover {
                background: #0891b2;
            }

            .projects-section {
                margin-top: 20px;
            }

            .section-title {
                font-size: 14px;
                font-weight: 600;
                color: #6b7280;
                margin-bottom: 15px;
                text-transform: uppercase;
                letter-spacing: 0.5px;
            }

            .projects-grid {
                display: grid;
                grid-template-columns: repeat(2, 1fr);
                gap: 20px;
            }

            @media (max-width: 768px) {
                .projects-grid {
                    grid-template-columns: 1fr;
                }
            }

            .project-card {
                background: white;
                border-radius: 12px;
                box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
                padding: 20px;
                border: 1px solid #e5e7eb;
            }

            .project-title {
                font-size: 13px;
                font-weight: 600;
                color: #6b7280;
                margin-bottom: 12px;
                text-transform: uppercase;
                letter-spacing: 0.5px;
            }

            .progress-item {
                margin-bottom: 12px;
            }

            .progress-item:last-child {
                margin-bottom: 0;
            }

            .progress-label {
                font-size: 13px;
                color: #374151;
                margin-bottom: 6px;
            }

            .progress-bar {
                height: 8px;
                background: #e5e7eb;
                border-radius: 4px;
                overflow: hidden;
            }

            .progress-fill {
                height: 100%;
                background: #3b82f6;
                border-radius: 4px;
                transition: width 1s ease-out;
            }

            .back-link {
                display: inline-block;
                color: #3b82f6;
                text-decoration: none;
                font-size: 14px;
                font-weight: 600;
                margin-top: 20px;
            }

            .back-link:hover {
                color: #2563eb;
            }

            .intro-section {
                background: #f9fafb;
                padding: 16px;
                border-radius: 8px;
                margin-top: 20px;
            }

            .intro-text {
                font-size: 14px;
                color: #4b5563;
                line-height: 1.6;
            }
        </style>
    </head>

    <body>
        <div class="container">
            <div class="grid">
                <!-- Left Column - Profile Card -->
                <div class="card profile-card">
                    <div class="avatar">
                        <%= request.getAttribute("name").toString().substring(0, 1).toUpperCase() %>
                    </div>
                    <div class="profile-name">
                        <%= request.getAttribute("name") %>
                    </div>
                    <div class="profile-title">
                        <%= request.getAttribute("program") %>
                    </div>
                    <div class="profile-location">Student ID: <%= request.getAttribute("studentId") %>
                    </div>

                    <div class="action-buttons">
                        <button class="btn btn-primary">Follow</button>
                        <button class="btn btn-secondary">Message</button>
                    </div>

                    <div class="social-links">
                        <div class="social-item">
                            <div class="social-label">
                                <span class="social-icon">📧</span>
                                Email
                            </div>
                            <div class="social-value">
                                <%= request.getAttribute("email") %>
                            </div>
                        </div>
                        <div class="social-item">
                            <div class="social-label">
                                <span class="social-icon">🎯</span>
                                Hobbies
                            </div>
                            <div class="social-value">
                                <%= request.getAttribute("hobbies") %>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Right Column - Info Card -->
                <div class="card info-card">
                    <button class="edit-btn">Edit</button>

                    <div class="info-row">
                        <div class="info-label">Full Name</div>
                        <div class="info-value">
                            <%= request.getAttribute("name") %>
                        </div>
                    </div>

                    <div class="info-row">
                        <div class="info-label">Email</div>
                        <div class="info-value">
                            <%= request.getAttribute("email") %>
                        </div>
                    </div>

                    <div class="info-row">
                        <div class="info-label">Student ID</div>
                        <div class="info-value">
                            <%= request.getAttribute("studentId") %>
                        </div>
                    </div>

                    <div class="info-row">
                        <div class="info-label">Program</div>
                        <div class="info-value">
                            <%= request.getAttribute("program") %>
                        </div>
                    </div>

                    <div class="intro-section">
                        <div class="section-title">About Me</div>
                        <div class="intro-text">
                            <%= request.getAttribute("introduction") %>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Projects Section -->
            <div class="projects-section">
                <div class="section-title">Skills & Interests</div>
                <div class="projects-grid">
                    <div class="project-card">
                        <div class="project-title">Academic Progress</div>
                        <div class="progress-item">
                            <div class="progress-label">Core Subjects</div>
                            <div class="progress-bar">
                                <div class="progress-fill" style="width: <%= request.getAttribute(" coreSubjects") %>%">
                                </div>
                            </div>
                        </div>
                        <div class="progress-item">
                            <div class="progress-label">Electives</div>
                            <div class="progress-bar">
                                <div class="progress-fill" style="width: <%= request.getAttribute(" electives") %>%">
                                </div>
                            </div>
                        </div>
                        <div class="progress-item">
                            <div class="progress-label">Projects</div>
                            <div class="progress-bar">
                                <div class="progress-fill" style="width: <%= request.getAttribute(" projects") %>%">
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="project-card">
                        <div class="project-title">Skill Development</div>
                        <div class="progress-item">
                            <div class="progress-label">Web Development</div>
                            <div class="progress-bar">
                                <div class="progress-fill" style="width: <%= request.getAttribute(" webDevelopment") %>
                                    %"></div>
                            </div>
                        </div>
                        <div class="progress-item">
                            <div class="progress-label">Problem Solving</div>
                            <div class="progress-bar">
                                <div class="progress-fill" style="width: <%= request.getAttribute(" problemSolving") %>
                                    %"></div>
                            </div>
                        </div>
                        <div class="progress-item">
                            <div class="progress-label">Teamwork</div>
                            <div class="progress-bar">
                                <div class="progress-fill" style="width: <%= request.getAttribute(" teamwork") %>%">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <a href="index.jsp" class="back-link">← Back to Form</a>
        </div>
    </body>

    </html>