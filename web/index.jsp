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

            /* Skill Builder */
            .skill-builder {
                background: #f9fafb;
                padding: 20px;
                border-radius: 8px;
                border: 1px solid #e5e7eb;
                margin-bottom: 20px;
            }

            .skill-input-group {
                margin-bottom: 16px;
            }

            .slider-container {
                margin-bottom: 16px;
            }

            .slider-label {
                display: flex;
                justify-content: space-between;
                margin-bottom: 8px;
            }

            .slider-text {
                font-size: 14px;
                color: #374151;
                font-weight: 500;
            }

            .slider-value {
                color: #3b82f6;
                font-size: 14px;
                font-weight: 600;
            }

            input[type="range"] {
                width: 100%;
                height: 8px;
                border-radius: 4px;
                background: #e5e7eb;
                outline: none;
                -webkit-appearance: none;
                appearance: none;
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

            .save-skill-btn {
                width: 100%;
                padding: 10px;
                background: #10b981;
                color: white;
                border: none;
                border-radius: 6px;
                font-size: 14px;
                font-weight: 600;
                cursor: pointer;
                transition: all 0.2s ease;
            }

            .save-skill-btn:hover {
                background: #059669;
            }

            /* Skills List */
            .skills-list {
                margin-top: 20px;
            }

            .skills-list-title {
                font-size: 14px;
                font-weight: 600;
                color: #374151;
                margin-bottom: 12px;
            }

            .skill-item {
                background: white;
                padding: 12px;
                border-radius: 6px;
                margin-bottom: 8px;
                border: 1px solid #e5e7eb;
                display: flex;
                justify-content: space-between;
                align-items: center;
            }

            .skill-info {
                flex: 1;
            }

            .skill-name {
                font-size: 14px;
                font-weight: 600;
                color: #111827;
                margin-bottom: 4px;
            }

            .skill-progress {
                height: 6px;
                background: #e5e7eb;
                border-radius: 3px;
                overflow: hidden;
                width: 100%;
                max-width: 200px;
            }

            .skill-progress-fill {
                height: 100%;
                background: #3b82f6;
                border-radius: 3px;
            }

            .skill-level-text {
                font-size: 12px;
                color: #6b7280;
                margin-left: 8px;
            }

            .remove-skill-btn {
                background: #ef4444;
                color: white;
                border: none;
                padding: 6px 12px;
                border-radius: 4px;
                font-size: 12px;
                font-weight: 600;
                cursor: pointer;
                margin-left: 12px;
            }

            .remove-skill-btn:hover {
                background: #dc2626;
            }

            .empty-skills {
                text-align: center;
                padding: 20px;
                color: #9ca3af;
                font-size: 13px;
                background: white;
                border-radius: 6px;
                border: 2px dashed #e5e7eb;
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

            <form action="ProfileServlet" method="POST" id="profileForm">
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

                        <!-- Skill Builder -->
                        <div class="skill-builder">
                            <div class="skill-input-group">
                                <label for="skillNameInput">Skill Name</label>
                                <input type="text" id="skillNameInput" placeholder="e.g., Web Development">
                            </div>

                            <div class="slider-container">
                                <div class="slider-label">
                                    <span class="slider-text">Proficiency Level</span>
                                    <span class="slider-value" id="currentSliderValue">50%</span>
                                </div>
                                <input type="range" id="skillLevelSlider" min="0" max="100" value="50">
                            </div>

                            <button type="button" class="save-skill-btn" onclick="saveSkill()">💾 Save Skill</button>
                        </div>

                        <!-- Skills List -->
                        <div class="skills-list">
                            <div class="skills-list-title">Your Skills (<span id="skillCount">0</span>)</div>
                            <div id="skillsList">
                                <div class="empty-skills">No skills added yet</div>
                            </div>
                        </div>
                    </div>
                </div>

                <button type="submit" class="submit-btn">Submit Profile</button>

                <!-- Hidden inputs for skills -->
                <div id="hiddenSkillsContainer"></div>
            </form>
        </div>

        <script>
            const skills = [];
            const slider = document.getElementById('skillLevelSlider');
            const sliderValueDisplay = document.getElementById('currentSliderValue');

            // Update slider value display
            slider.addEventListener('input', function () {
                sliderValueDisplay.textContent = this.value + '%';
            });

            function saveSkill() {
                const nameInput = document.getElementById('skillNameInput');
                const levelSlider = document.getElementById('skillLevelSlider');

                const skillName = nameInput.value.trim();
                const skillLevel = levelSlider.value;

                if (!skillName) {
                    alert('Please enter a skill name');
                    return;
                }

                // Add to skills array
                skills.push({
                    name: skillName,
                    level: skillLevel
                });

                // Clear inputs
                nameInput.value = '';
                levelSlider.value = 50;
                sliderValueDisplay.textContent = '50%';

                // Update display
                updateSkillsList();
                updateHiddenInputs();
            }

            function removeSkill(index) {
                skills.splice(index, 1);
                updateSkillsList();
                updateHiddenInputs();
            }

            function updateSkillsList() {
                const skillsList = document.getElementById('skillsList');
                const skillCount = document.getElementById('skillCount');

                skillCount.textContent = skills.length;

                if (skills.length === 0) {
                    skillsList.innerHTML = '<div class="empty-skills">No skills added yet</div>';
                    return;
                }

                let html = '';
                skills.forEach((skill, index) => {
                    html += `
                        <div class="skill-item">
                            <div class="skill-info">
                                <div class="skill-name">${skill.name}</div>
                                <div style="display: flex; align-items: center;">
                                    <div class="skill-progress">
                                        <div class="skill-progress-fill" style="width: ${skill.level}%"></div>
                                    </div>
                                    <span class="skill-level-text">${skill.level}%</span>
                                </div>
                            </div>
                            <button type="button" class="remove-skill-btn" onclick="removeSkill(${index})">Remove</button>
                        </div>
                    `;
                });

                skillsList.innerHTML = html;
            }

            function updateHiddenInputs() {
                const container = document.getElementById('hiddenSkillsContainer');
                container.innerHTML = '';

                skills.forEach((skill, index) => {
                    const nameInput = document.createElement('input');
                    nameInput.type = 'hidden';
                    nameInput.name = 'skillName[]';
                    nameInput.value = skill.name;

                    const levelInput = document.createElement('input');
                    levelInput.type = 'hidden';
                    levelInput.name = 'skillLevel[]';
                    levelInput.value = skill.level;

                    container.appendChild(nameInput);
                    container.appendChild(levelInput);
                });
            }
        </script>
    </body>

    </html>