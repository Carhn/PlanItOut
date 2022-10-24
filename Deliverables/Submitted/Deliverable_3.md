# Deliverable 3

## 1. System Description

For our system, our goal was to solve the problem of users of calendar apps being bogged down by having different parts of a calendar in one place by putting all of those different ways of planning time into one place. 
Our product position is that the combination of all of the components of our calendar app in one location will allow users to get value out of our product. 
Our value proposition is more effective time management for those who use our product.

For our system, one of the main things that we need to have is a **Calendar**, which contains *dates, alarms, and events*. 
For the **events**, all necessary data is stored about the event, such as *day, month, year, and time*. 
For the **alarms**, they are stored inside of events, and have a *priority* such as urgent, relevant, and not urgent. 
For a **date**, the *day, month, and year* are all that is recorded. ***An event can have any number of alarms, while an alarm can only have one event***. 
***A calendar can have any number of events, while an event can be associated with any number of calendars the user has***. 
A **calendar** also has a **title**, which contains *the name of the calendar*. 
***A calendar has 1 title, and a title has 1 name for a calendar***. 
***A calendar can have any number of dates, and a date can be on any number of calendars.***

Another one of the main requirements for our system is a **To-Do list**, which has a list of **tasks**, in which each task has an *urgency* such as urgent, relevant, or not urgent, and a *name*.
A **To-Do** list has a **title**, which contains the *name of the to-do list*. ***A to-do list can have 1 title, and 1 title has 1 To-Do list***. 
Each **task** also has a **location**, which contains an *address and a zip-code*. ***Each task can have 1 location, but each location can have multiple tasks.***

A third requirement for our system is to have **registered users**, which needs to store *name and contact information*. 
**Contact information** stores the *user’s email address and phone number*. ***Each calendar has only 1 user, while a user can have any number of calendars***.
***Each To-Do list has only 1 user, while a user can have any number of To-Do lists***. 
***A user only has 1 set of contact information, while each set of contact information has one user.***
Another part of registered users is a **sharing** system, which contains *calendar data*. 
***The calendar data in sharing goes to 1 calendar, and a calendar has only 1 piece of shared data.***
***A registered user can share any number of calendars, and a calendar can be shared between any number of users.***

## 2. Class Diagram

![Class Diagram](https://raw.githubusercontent.com/Carhn/PlanItOut/Dev/Deliverables/Deliverable_Images/D3_diagram.drawio.png "Class Diagram")
