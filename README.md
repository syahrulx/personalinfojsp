# Personal Profile Web App

A simple web application for creating and displaying personal profiles with skills and interests.

## What it does

This app lets you fill out a form with your personal information, add your skills and interests with proficiency levels, and displays everything in a nice profile page.

## Features

- Personal info form (name, student ID, program, email, hobbies, introduction)
- Add multiple skills with proficiency sliders
- Add multiple interests with proficiency sliders
- Form validation (requires at least 1 skill and 1 interest)
- Clean profile display with progress bars
- Responsive design

## Tech Stack

- Java Servlets
- JSP (JavaServer Pages)
- HTML/CSS
- JavaScript
- NetBeans IDE

## How to run

1. Open the project in NetBeans
2. Make sure you have a Java EE server configured (like Apache Tomcat)
3. Right-click the project and select "Run"
4. Your browser should open to the form page

## Usage

1. Fill in your personal information
2. Add at least one skill:
   - Type the skill name
   - Adjust the slider for proficiency level
   - Click "Save Skill"
3. Add at least one interest:
   - Type the interest name
   - Adjust the slider for proficiency level
   - Click "Save Interest"
4. Click "Submit Profile" to see your profile page

## Project Structure

```
personalinfo/
├── src/java/com/personalinfo/servlet/
│   └── ProfileServlet.java          # Handles form submission
├── web/
│   ├── index.jsp                    # Form page
│   └── profile.jsp                  # Profile display page
└── README.md
```

## Notes

- Skills and interests are displayed side by side on the profile page
- You can remove skills/interests before submitting
- The form won't submit unless you have at least 1 skill and 1 interest
- All data is passed through the servlet to the display page

## Author

Built as a learning project for Java web development.
