GradeMaster is a basic app that allows teachers to create, store, and update student grades. Teachers can create multiple students and parents and (optionally) allow students and parents to log in to view grades.

Explore GradeMaster on <a href="http://grademaster.herokuapp.com/">Heroku</a>

New Features!

* Teachers can now upload .pdf files that correspond to a grade they are entering. An upload file button can be found on the create an assignment grade page. The .pdf can be viewed on the assignment grade index page.
* Parents are able to log in and select to receive weekly grade reports for their students. These emails will be sent on a weekly basis, on Fridays, and will include all grades added for that student in the past week.
* Students can now receive points based on achievements they have earned. Ten achievements are currently available, each with their own point total associated. As a teacher - you may complete achievements for a student by going to "Manage achievements" and clicking on the corresponding student. There is also a link to "Manage achievements" on the edit page for students.
* We created a principal model. This fourth type of user should be able to view all information (teachers, parents, students, grades), but not change anything. They should also see a dashboard of consolidated information when logging in.
* Migration written to change Grade field string to a number.  Teacher can now see GPA for each student.  Student can now see GPA and class rank after logging in.  Parent can now see GPA and class rank after logging in.
* Styling of the app uses the Bourbon CSS framework. Tables, forms, and headers/footers use components of Bourbon's Refills library for a more user-friendly layout and design.
