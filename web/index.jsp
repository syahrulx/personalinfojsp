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

            .subsection-title {
                font-size: 16px;
                font-weight: 600;
                color: #374151;
                margin-bottom: 12px;
                margin-top: 20px;
            }

            .subsection-title:first-child {
                margin-top: 0;
            }

            .required-badge {
                background: #ef4444;
                color: white;
                font-size: 11px;
                padding: 2px 6px;
                border-radius: 3px;
                margin-left: 6px;
                font-weight: 600;
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

            /* Skill/Interest Builder */
            .builder {
                background: #f9fafb;
                padding: 16px;
                border-radius: 8px;
                border: 1px solid #e5e7eb;
                margin-bottom: 16px;
            }

            .input-group {
                margin-bottom: 12px;
            }

            .input-group input {
                font-size: 13px;
                padding: 8px 12px;
            }

            .slider-container {
                margin-bottom: 12px;
            }

            .slider-label {
                display: flex;
                justify-content: space-between;
                margin-bottom: 6px;
            }

            .slider-text {
                font-size: 13px;
                color: #374151;
                font-weight: 500;
            }

            .slider-value {
                color: #3b82f6;
                font-size: 13px;
                font-weight: 600;
            }

            input[type="range"] {
                width: 100%;
                height: 6px;
                border-radius: 3px;
                background: #e5e7eb;
                outline: none;
                -webkit-appearance: none;
                appearance: none;
            }

            input[type="range"]::-webkit-slider-thumb {
                -webkit-appearance: none;
                appearance: none;
                width: 18px;
                height: 18px;
                border-radius: 50%;
                background: #3b82f6;
                cursor: pointer;
                box-shadow: 0 2px 4px rgba(59, 130, 246, 0.3);
            }

            input[type="range"]::-moz-range-thumb {
                width: 18px;
                height: 18px;
                border-radius: 50%;
                background: #3b82f6;
                cursor: pointer;
                border: none;
                box-shadow: 0 2px 4px rgba(59, 130, 246, 0.3);
            }

            .save-btn {
                width: 100%;
                padding: 8px;
                background: #10b981;
                color: white;
                border: none;
                border-radius: 6px;
                font-size: 13px;
                font-weight: 600;
                cursor: pointer;
                transition: all 0.2s ease;
            }

            .save-btn:hover {
                background: #059669;
            }

            /* List */
            .list {
                margin-top: 12px;
            }

            .list-title {
                font-size: 13px;
                font-weight: 600;
                color: #374151;
                margin-bottom: 8px;
            }

            .item {
                background: white;
                padding: 10px;
                border-radius: 6px;
                margin-bottom: 6px;
                border: 1px solid #e5e7eb;
                display: flex;
                justify-content: space-between;
                align-items: center;
            }

            .item-info {
                flex: 1;
            }

            .item-name {
                font-size: 13px;
                font-weight: 600;
                color: #111827;
                margin-bottom: 4px;
            }

            .item-progress {
                height: 5px;
                background: #e5e7eb;
                border-radius: 3px;
                overflow: hidden;
                width: 100%;
                max-width: 150px;
            }

            .item-progress-fill {
                height: 100%;
                background: #3b82f6;
                border-radius: 3px;
            }

            .item-level-text {
                font-size: 11px;
                color: #6b7280;
                margin-left: 6px;
            }

            .remove-btn {
                background: #ef4444;
                color: white;
                border: none;
                padding: 5px 10px;
                border-radius: 4px;
                font-size: 11px;
                font-weight: 600;
                cursor: pointer;
                margin-left: 8px;
            }

            .remove-btn:hover {
                background: #dc2626;
            }

            .empty-list {
                text-align: center;
                padding: 16px;
                color: #9ca3af;
                font-size: 12px;
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

            .submit-btn:disabled {
                background: #9ca3af;
                cursor: not-allowed;
            }

            .validation-message {
                background: #fef2f2;
                border: 1px solid #fecaca;
                color: #dc2626;
                padding: 12px;
                border-radius: 6px;
                font-size: 13px;
                margin-bottom: 12px;
                display: none;
            }

            .validation-message.show {
                display: block;
            }
        </style>
    </head>

    <body>
        <div class="container">
            <h1>Personal Profile</h1>
            <p class="subtitle">Share your information, skills, and interests with us</p>

            <form action="ProfileServlet" method="POST" id="profileForm" onsubmit="return validateForm()">
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

                        <!-- Skills Section -->
                        <div class="subsection-title">
                            💼 Skills
                            <span class="required-badge">MIN 1</span>
                        </div>

                        <div class="builder">
                            <div class="input-group">
                                <input type="text" id="skillNameInput" placeholder="e.g., Web Development">
                            </div>

                            <div class="slider-container">
                                <div class="slider-label">
                                    <span class="slider-text">Level</span>
                                    <span class="slider-value" id="skillSliderValue">50%</span>
                                </div>
                                <input type="range" id="skillLevelSlider" min="0" max="100" value="50">
                            </div>

                            <button type="button" class="save-btn" onclick="saveSkill()">💾 Save Skill</button>
                        </div>

                        <div class="list">
                            <div class="list-title">Your Skills (<span id="skillCount">0</span>)</div>
                            <div id="skillsList">
                                <div class="empty-list">No skills added yet</div>
                            </div>
                        </div>

                        <!-- Interests Section -->
                        <div class="subsection-title">
                            ⭐ Interests
                            <span class="required-badge">MIN 1</span>
                        </div>

                        <div class="builder">
                            <div class="input-group">
                                <input type="text" id="interestNameInput" placeholder="e.g., Photography">
                            </div>

                            <div class="slider-container">
                                <div class="slider-label">
                                    <span class="slider-text">Level</span>
                                    <span class="slider-value" id="interestSliderValue">50%</span>
                                </div>
                                <input type="range" id="interestLevelSlider" min="0" max="100" value="50">
                            </div>

                            <button type="button" class="save-btn" onclick="saveInterest()">💾 Save Interest</button>
                        </div>

                        <div class="list">
                            <div class="list-title">Your Interests (<span id="interestCount">0</span>)</div>
                            <div id="interestsList">
                                <div class="empty-list">No interests added yet</div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="validation-message" id="validationMessage">
                    ⚠️ Please add at least 1 skill and 1 interest before submitting!
                </div>

                <button type="submit" class="submit-btn">Submit Profile</button>

                <!-- Hidden inputs -->
                <div id="hiddenInputsContainer"></div>
            </form>
        </div>

        <script>
            const skills = [];
            const interests = [];

            // Skill slider
            const skillSlider = document.getElementById('skillLevelSlider');
            const skillSliderValue = document.getElementById('skillSliderValue');
            skillSlider.addEventListener('input', function () {
                skillSliderValue.textContent = this.value + '%';
            });

            // Interest slider
            const interestSlider = document.getElementById('interestLevelSlider');
            const interestSliderValue = document.getElementById('interestSliderValue');
            interestSlider.addEventListener('input', function () {
                interestSliderValue.textContent = this.value + '%';
            });

            function saveSkill() {
                const nameInput = document.getElementById('skillNameInput');
                const levelSlider = document.getElementById('skillLevelSlider');

                const name = nameInput.value.trim();
                const level = levelSlider.value;

                if (!name) {
                    alert('Please enter a skill name');
                    return;
                }

                skills.push({ name: name, level: level });

                nameInput.value = '';
                levelSlider.value = 50;
                skillSliderValue.textContent = '50%';

                updateSkillsList();
                updateHiddenInputs();
            }

            function saveInterest() {
                const nameInput = document.getElementById('interestNameInput');
                const levelSlider = document.getElementById('interestLevelSlider');

                const name = nameInput.value.trim();
                const level = levelSlider.value;

                if (!name) {
                    alert('Please enter an interest name');
                    return;
                }

                interests.push({ name: name, level: level });

                nameInput.value = '';
                levelSlider.value = 50;
                interestSliderValue.textContent = '50%';

                updateInterestsList();
                updateHiddenInputs();
            }

            function removeSkill(index) {
                skills.splice(index, 1);
                updateSkillsList();
                updateHiddenInputs();
            }

            function removeInterest(index) {
                interests.splice(index, 1);
                updateInterestsList();
                updateHiddenInputs();
            }

            function updateSkillsList() {
                const list = document.getElementById('skillsList');
                const count = document.getElementById('skillCount');
                count.textContent = skills.length;

                if (skills.length === 0) {
                    list.innerHTML = '<div class="empty-list">No skills added yet</div>';
                    return;
                }

                let html = '';
                skills.forEach((item, index) => {
                    html += '<div class="item">' +
                        '<div class="item-info">' +
                        '<div class="item-name">' + item.name + '</div>' +
                        '<div style="display: flex; align-items: center;">' +
                        '<div class="item-progress">' +
                        '<div class="item-progress-fill" style="width: ' + item.level + '%"></div>' +
                        '</div>' +
                        '<span class="item-level-text">' + item.level + '%</span>' +
                        '</div>' +
                        '</div>' +
                        '<button type="button" class="remove-btn" onclick="removeSkill(' + index + ')">Remove</button>' +
                        '</div>';
                });
                list.innerHTML = html;
            }

            function updateInterestsList() {
                const list = document.getElementById('interestsList');
                const count = document.getElementById('interestCount');
                count.textContent = interests.length;

                if (interests.length === 0) {
                    list.innerHTML = '<div class="empty-list">No interests added yet</div>';
                    return;
                }

                let html = '';
                interests.forEach((item, index) => {
                    html += '<div class="item">' +
                        '<div class="item-info">' +
                        '<div class="item-name">' + item.name + '</div>' +
                        '<div style="display: flex; align-items: center;">' +
                        '<div class="item-progress">' +
                        '<div class="item-progress-fill" style="width: ' + item.level + '%"></div>' +
                        '</div>' +
                        '<span class="item-level-text">' + item.level + '%</span>' +
                        '</div>' +
                        '</div>' +
                        '<button type="button" class="remove-btn" onclick="removeInterest(' + index + ')">Remove</button>' +
                        '</div>';
                });
                list.innerHTML = html;
            }

            function updateHiddenInputs() {
                const container = document.getElementById('hiddenInputsContainer');
                container.innerHTML = '';

                // Add skills
                skills.forEach((item) => {
                    const nameInput = document.createElement('input');
                    nameInput.type = 'hidden';
                    nameInput.name = 'skillName[]';
                    nameInput.value = item.name;

                    const levelInput = document.createElement('input');
                    levelInput.type = 'hidden';
                    levelInput.name = 'skillLevel[]';
                    levelInput.value = item.level;

                    container.appendChild(nameInput);
                    container.appendChild(levelInput);
                });

                // Add interests
                interests.forEach((item) => {
                    const nameInput = document.createElement('input');
                    nameInput.type = 'hidden';
                    nameInput.name = 'interestName[]';
                    nameInput.value = item.name;

                    const levelInput = document.createElement('input');
                    levelInput.type = 'hidden';
                    levelInput.name = 'interestLevel[]';
                    levelInput.value = item.level;

                    container.appendChild(nameInput);
                    container.appendChild(levelInput);
                });
            }

            function validateForm() {
                const validationMsg = document.getElementById('validationMessage');

                if (skills.length === 0 || interests.length === 0) {
                    validationMsg.classList.add('show');
                    validationMsg.scrollIntoView({ behavior: 'smooth', block: 'center' });
                    return false;
                }

                validationMsg.classList.remove('show');
                return true;
            }
        </script>
    </body>

    </html>