# Deliverable 5

## 1. Description
For our system, the value that it offers to users is that it allows for effective time management. The way that our system accomplishes that is that we have 3 implemented tabs in the application that allow for different forms of time management. We have a tab for a calendar, a tab for a to-do list, and a tab for reminders, and all of them are easily accessible with a button press on the bottom of the screen. The link to the project on Github is [here.](https://github.com/Carhn/PlanItOut/tree/main)

## 2. Architecture
![Image of Package UML Diagram](https://raw.githubusercontent.com/Carhn/PlanItOut/Dev/Deliverables/Deliverable_Images/D5_Package_UML.png)

**Rationale**
The user's interact via the User Interface which displays the Calendar, Events, and To-Do List.  The User Interface package is dependent upon
the Local Database package containing Alarm information, Task information, etc... The External Database is dependent upon the Local Database,
retaining a copy of Local Database Package's information in case the user accesses the calendar from a new device.
 
## 3. Class Diagram

## 4. Sequence Diagram

## 5. Design Patterns
### Part 1: Behavioral Pattern - Strategy 
![Part 1 Diagram](https://github.com/Carhn/PlanItOut/blob/Dev/Deliverables/Deliverable_Images/D5%205%20Part%201.drawio.png)

While this may not be the exact way that the system is implemented at the current moment, we would be able to change the system to be like this fairly easily, 
and this change would allow for us to add more kinds of reminders fairly easily, as we simply would need to make a new class pertaining to the new reminder type 
that we would want to add. 

Reminders Class Link: [https://github.com/Carhn/PlanItOut/blob/Dev/planner_cs386/lib/pages/reminders.dart](https://github.com/Carhn/PlanItOut/blob/Dev/planner_cs386/lib/pages/reminders.dart)

## 6. Design Principles
