# Deliverable 6

## 1. Introduction
For our system, the value that it offers to users is that it allows for effective time management. The way that our system accomplishes that is that we have 3 implemented tabs in the application that allow for different forms of time management. We have a tab for a calendar, a tab for a to-do list, and a tab for reminders, and all of them are easily accessible with a button press on the bottom of the screen. The link to the project on Github is [here.](https://github.com/Carhn/PlanItOut/tree/main)

## 2. Implemented Requirements
Requirement: As a user, I want to have a calendar so that I know when events are. <br/>
Issue: [21](https://github.com/Carhn/PlanItOut/issues/21) <br/>
Pull request: [Pull Request 38](https://github.com/Carhn/PlanItOut/pull/38) <br/>
Implemented by: Terrell Hayward, Payton Cox<br/>
Approved by: Logan Samstag<br/>
Print screen: <br/> ![Print Screen](https://github.com/Carhn/PlanItOut/blob/Dev/Deliverables/Deliverable_Images/D6_Calendar.png) 


Requirement: As a user, I want a to-do list so that I know what I need to do in a short period of time. <br/>
Issue: [22](https://github.com/Carhn/PlanItOut/issues/22)<br/>
Pull request: [Pull Request 40](https://github.com/Carhn/PlanItOut/pull/40/) <br/>
Implemented by: Erick Salazar, Adriel Perez<br/>
Approved by: Logan Samstag <br/>
<br/> ![Print Screen](https://github.com/Carhn/PlanItOut/blob/Dev/Deliverables/Deliverable_Images/D6_ToDo_PrintScreen.png) 
## 3. Tests

***Reminders:***
1. The dart test package version 1.21.0 was utilized.
2. [Automated Testing Folder](https://github.com/Carhn/PlanItOut/tree/Dev/planner_cs386/test)
3. This test case is to check that items being added to our SQL database were actually being added.
4. ![Image of Reminder Database test](https://raw.githubusercontent.com/Carhn/PlanItOut/Dev/Deliverables/Deliverable_Images/remindersD4Test.png "Reminder Database test")

***Calendar***
1. The dart test package version 1.21.0 was utilized.
2. [Automated Testing Folder](https://github.com/Carhn/PlanItOut/tree/Dev/planner_cs386/test)
3. This test case is to check that new events added have the proper titles
4. ![Image of event test](https://github.com/Carhn/PlanItOut/blob/Dev/Deliverables/Deliverable_Images/CalendarTest.png)

***ToDo List***
1. The dart test package version 1.21.0 was utilized.
2. [Automated Testing Folder](https://github.com/Carhn/PlanItOut/tree/Dev/planner_cs386/test)
3. These tests are to check that a new task was added and that the add button can be found.
4. ![Image of event test](https://github.com/Carhn/PlanItOut/blob/Dev/Deliverables/Deliverable_Images/d6_test.PNG)

## 4. Demo

**Demo Video**

https://user-images.githubusercontent.com/113069537/205549181-2b7b914c-4ed3-4f2c-b4e4-a985e075e3b0.mp4



## 5. Code Quality
In order to guarentee a minimum level of code quality, and a uniform style, we had three best practices for writing project code:

   1) The use of self-describing variables.  The purpose of this is to make it clear to any one reading or reviewing code what data
   a particular variable was being used to store.

   2) The inclusion of comments.  Comments are - we feel - necessary to include along side self-describing variables.  The variable
   names make it clear what the variable stores, but not necessarily how it is being used or how it fits into the function or the
   program as a whole.  To provide that context we employed the use of comments.

   3) Each of our project teams had standard tests that were utilized prior to submission of the new code, making sure that all new
   code worked correctly.

Beyond our best practices for code development, we also required all merge requests to be reviewed and approved by a developer that did
not work on the section of the code being altered.  This was to gaurentee the code was legible and met our previously mentioned require-
ments.

## 6. Lessons Learned
For the second release of the software, the team further developed their respective sections (to-do list, calendar, reminders) by taking
into account the user stories we got at the beginning of the project. For each independent section of the project the entire team has
learned that implementing interactions between a software and a database is much more difficult that it seems at first sight. We managed
to figure out how to have the software data saved in a local database, but we all still having trouble figuring out how to save the data 
on the server database we have running on DigitalOcean. We have managed to make each individual section of the project more responsive and
user-friendly. Any further implementations will involve the further automation of the tests for each section. 
