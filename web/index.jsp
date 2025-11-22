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
                padding: 40px 20px;
            }

            .container {
                background: white;
                border-radius: 12px;
                box-shadow: 0 2px 10px rgba(0, 0, 0, 0.08);
                max-width: 1000px;
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

            .form-grid {
                display: grid;
                grid-template-columns: 1fr 1fr;
                gap: 40px;
                margin-bottom: 20px;
            }

            @media (max-width: 768px) {
                .form-grid {
                    grid-template-columns: 1fr;
                }
            }

            .section-title {
                font-size: 18px;
                font-weight: 600;
                color: #111827;
                margin-bottom: 20px;
                padding-bottom: 10px;
                border-bottom: 2px solid #e5e7eb;
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

            /* Slider Styles */
            .slider-group {
                margin-bottom: 24px;
            }

            .slider-label {
                display: flex;
                justify-content: space-between;
                align-items: center;
                margin-bottom: 10px;
            }

            .slider-name {
                color: #374151;
                font-size: 14px;
                font-weight: 500;
            }

            .slider-value {
                color: #3b82f6;
                font-size: 14px;
                font-weight: 600;
                min-width: 45px;
                text-align: right;
            }

            input[type="range"] {
                width: 100%;
                height: 8px;
                border-radius: 4px;
                background: #e5e7eb;
                outline: none;
                -webkit-appearance: none;
            }

            input[type="range"]::-webkit-slider-thumb {
                -webkit-appearance: none;
                appearance: none;
                width: 20px;
                height: 20px;
                border-radius: 50%;
                background: #3b82f6;
                cursor: pointer;
                box-shadow: 0 2px 4px rgba(59, 130, 246, 0.3);
                transition: all 0.2s ease;
            }

            input[type="range"]::-webkit-slider-thumb:hover {
                background: #2563eb;
                transform: scale(1.1);
            }

            input[type="range"]::-moz-range-thumb {
                width: 20px;
                height: 20px;
                border-radius: 50%;
                background: #3b82f6;
                cursor: pointer;
                border: none;
                box-shadow: 0 2px 4px rgba(59, 130, 246, 0.3);
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
            <p class="subtitle">Share your information and skills with us</p>

            <form action="ProfileServlet" method="POST">
                <div class="form-grid">
                    <!-- Left Column - Personal Information -->
                    <div>
                        <div class="section-title">Personal Information</div>

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
                            <input type="text" id="hobbies" name="hobbies" placeholder="e.g., Reading, Gaming, Sports"
                                required>
                        </div>

                        <div class="form-group">
                            <label for="introduction">Self Introduction</label>
                            <textarea id="introduction" name="introduction" placeholder="Tell us about yourself..."
                                required></textarea>
                        </div>
                    </div>

                    <!-- Right Column - Skills & Interests -->
                    <div>
                        <div class="section-title">Skills & Interests</div>

                        <p style="color: #6b7280; font-size: 13px; margin-bottom: 20px;">
                            Drag the sliders to rate your proficiency level
                        </p>

                        <!-- Academic Skills -->
                        <div class="slider-group">
                            <div class="slider-label">
                                <span class="slider-name">Core Subjects</span>
                                <span class="slider-value" id="coreValue">50%</span>
                            </div>
                            <input type="range" name="coreSubjects" id="coreSubjects" min="0" max="100" value="50"
                                oninput="document.getElementById('coreValue').textContent = this.value + '%'">
                        </div>

                        <div class="slider-group">
                            <div class="slider-label">
                                <span class="slider-name">Electives</span>
                                <span class="slider-value" id="electivesValue">50%</span>
                            </div>
                            <input type="range" name="electives" id="electives" min="0" max="100" value="50"
                                oninput="document.getElementById('electivesValue').textContent = this.value + '%'">
                        </div>

                        <div class="slider-group">
                            <div class="slider-label">
                                <span class="slider-name">Projects</span>
                                <span class="slider-value" id="projectsValue">50%</span>
                            </div>
                            <input type="range" name="projects" id="projects" min="0" max="100" value="50"
                                oninput="document.getElementById('projectsValue').textContent = this.value + '%'">
                        </div>

                        <div style="height: 20px;"></div>

                        <!-- Technical Skills -->
                        <div class="slider-group">
                            <div class="slider-label">
                                <span class="slider-name">Web Development</span>
                                <span class="slider-value" id="webDevValue">50%</span>
                            </div>
                            <input type="range" name="webDevelopment" id="webDevelopment" min="0" max="100" value="50"
                                oninput="document.getElementById('webDevValue').textContent = this.value + '%'">
                        </div>

                        <div class="slider-group">
                            <div class="slider-label">
                                <span class="slider-name">Problem Solving</span>
                                <span class="slider-value" id="problemValue">50%</span>
                            </div>
                            <input type="range" name="problemSolving" id="problemSolving" min="0" max="100" value="50"
                                oninput="document.getElementById('problemValue').textContent = this.value + '%'">
                        </div>

                        <div class="slider-group">
                            <div class="slider-label">
                                <span class="slider-name">Teamwork</span>
                                <span class="slider-value" id="teamworkValue">50%</span>
                            </div>
                            <input type="range" name="teamwork" id="teamwork" min="0" max="100" value="50"
                                oninput="document.getElementById('teamworkValue').textContent = this.value + '%'">
                        </div>
                    </div>
                </div>

                <button type="submit" class="submit-btn">Submit Profile</button>
            </form>
        </div>
    </body>

    </html>