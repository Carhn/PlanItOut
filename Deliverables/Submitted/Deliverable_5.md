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
![Image of UML Class Diagram](https://github.com/Carhn/PlanItOut/blob/Dev/Deliverables/Deliverable_Images/Part3_D5.PNG)


## 4. Sequence Diagram
![Image of adding event sequence diagram](https://raw.githubusercontent.com/Carhn/PlanItOut/Dev/Deliverables/Deliverable_Images/sequence_diagram.png)

**Use case Description**
The user interacts with the User interface for adding new events. this prompts them to fill out the details including event name and duration, then the user can hit add event. Tapping outside of the UI cancels the interaction. Upon saving, the event data is added to the selected day's event list and that list is added to the data base. Once added to the data base, the event list is updated in the calendar and displayed so the user can view their events in order.

## 5. Design Patterns
### Part 1: Behavioral Pattern - Strategy 
![Part 1 Diagram](https://github.com/Carhn/PlanItOut/blob/Dev/Deliverables/Deliverable_Images/D5%205%20Part%201.drawio.png)

While this may not be the exact way that the system is implemented at the current moment, we would be able to change the system to be like this fairly easily, 
and this change would allow for us to add more kinds of reminders fairly easily, as we simply would need to make a new class pertaining to the new reminder type 
that we would want to add.
Reminders Class Link: [https://github.com/Carhn/PlanItOut/blob/Dev/planner_cs386/lib/pages/reminders.dart](https://github.com/Carhn/PlanItOut/blob/Dev/planner_cs386/lib/pages/reminders.dart)

### Part 2: Creational Pattern - Builder
![Part 2 Diagram](https://github.com/Carhn/PlanItOut/blob/Dev/Deliverables/Deliverable_Images/D5Part5_Adriel.png)

At this current state of development, this is a solid representation of the creational pattern since we do not have a heavy enough foundation on the app to
create a more advanced 'builder' type. This builder system allows a user to add as many To Do's as needed only adding details the user needs such as the name of the
To Do, if it has been completed, and the remaining list of To Do's.
To Do Class Link: [https://github.com/Carhn/PlanItOut/blob/Dev/planner_cs386/lib/pages/todoList.dart](https://github.com/Carhn/PlanItOut/blob/Dev/planner_cs386/lib/pages/todoList.dart)

## 6. Design Principles

With our design it follows the SOLID Principles as:

**Single Responsibility Prinicple**- From our class diagram in #3 we can see that each class Home, Reminder, Todo, each has their own unique responsibility. Home is the the create the calander user interface in which it creates. The Reminder sets a name and a date time the user can input for themselves. The Todo creates a list of events in which the user can see for a selected day. Giving each class their single responsibility.

**Open/Close Principle**- From the class diagram from #3 each class we can see extends to their own set of subclasses. For the Home class it extends to HomeState which is under class which can be modified if need be without modififying Class Home. Similarly, for classes Reminder and Todo these also have their own set of subclasses. With Reminder being Reminders and Reminder State, and Todo being TodoState. All classes following the same principle. 

**Liskov substitution principle**- For this principle we must be able to substitute parent classes with their child classes and not have a blow up in our application. For this case we look back at our class diagram in quuestion #3 Each Class the divides into sub child classes implement their own structure of their parent class. This is able to highlight the principle by the app still being able to run with classes being substituted. 

**Interface segregation principle**- This is taken care of from the different interfaces that we use for the features of the application. In the Architecture diagram #2 we can see the user interface consists of three interfaces. These are broken up into Calandar, Events, Todo. These give the user different options because each of these interfaces bring their own principles which satisifies Interface segregation principle.

**Dependency inversion principle**- For this principle we will use the class diagram #3 in which we see our classes Home, Reminder, and Todo. All of these classes follow the same abstraction which implements the presentation of the viewer and runs the application. This way the classes are not having to be dependent on eachother. 
