D.2 - REQUIREMENTS


POSITIONING
===========

   1.1 PROBLEM STATEMENT
   ---------------------
The problem of poor time management affects users of inefficient calendar apps, the impact of which is that the users of the apps stop using the app as a result of inconvenience, which leads to worse time management. 



   1.2 PRODUCT POSITION STATEMENT
   ==============================
For users of inefficient calendar apps, who want to have a more efficient calendar app, PlanItOut is a calendar that allows for a condensed area where all planning activities can be done, unlike other calendars, such as Google calendar, our product will allow all planning activities do be done on the same screen and allow for easier access to certain options, such as alerts for calendar events. 



   1.3 VALUE PROPOSITION AND CUSTOMER SEGMENT
   ==========================================
Value Proposition: PlanItOut is a calendar application that allows users of inefficient calendar apps to efficiently plan out all of their activities in one application, prioritizing the ease of use of the application for the user.  

Customer Segment: Users of inefficient calendar apps who want a more efficient calendar application. 

STAKEHOLDERS
============

**Developers** – The developers are the members of group 8. There responsibilities are to research
 what users what from a planner app and to implement those features. 

**Users** -  Users will be individuals who are looking for an app where they can have a calendar,
 planner, and reminders all in one app. 

**Competitors** – Competitors are the other planner apps that exist currently. Mainly apple and 
google apps that are pre-installed onto many phones. There must be a value in our app that can draw
 others from the competitors



FUNCTIONAL REQUIREMENTS
=======================
   1. User Interface: app should be fairly easy to navigate
   
   2. Reminders: app should allow user to add alarms/reminders at specified time and date
   
   3. Settings: should be simple to understand and change
   
   4. Color-coding: reminders should be able to be organized by colors

   5. Importance: allow user to select the importance of each reminder

   6. Repeatability: if user desires, reminders should be able to be set to repeatable



NON-FUNCTIONAL REQUIREMENTS
===========================

   1. Interoperability: Application will function on Android only.

   2. Usability: Keep the number of taps needed to navigate to any menu below 3.  Review any process that takes more taps determine a way to streamline the process

   3. Reliability: Limit outages by renting from a cloud infrastructor provider that maintains an uptime of 99% or higher.

   4. Performance: Keep server load time in application to 3 seconds or less.



MVP
===
   1. The feature we plan on implementing early on the development of the app is the simple UI that will display a calendar and the ability to customize tasks in the calendar, such as adding checklists.
   
   2. As we build our app we will keep in mind user-friendliness, therefore, we are trying to keep any sort of interaction between the user and the app, as simple as possible.

   3. After revising all the data collected from the interviews, the most requested feature were to have an alert/reminder system that could use predetermined time intervals to activate. Another feature that many interviewees said they'd find useful is some sort of positive reinforcement that would encourage the user after completing marked tasks on the calendar. In order to deal with these two implementations we are planning on having an alarm system that will be linked to the alert/reminder system, the alarm can be activated between two time intervals and will send the alert once the interval is over. To implement the positive reinforcement system, we will create a list of positive messages that will be displayed whenever the user completes a task they've added to their calendar.



USE CASES
=========

   6.1 USE CASE DIAGRAM
   --------------------



   6.2 USE CASE DESCRIPTIONS AND INTERFACE SKETCH
   ----------------------------------------------

   Use Case #1:

               1. BRIEF DESCRIPTION: The user can add a task to the calendar for a specific date.


               2. ACTOR BRIEF DESCRIPTIONS: Application user.


               3. PRECONDITIONS: User has installed and signed into the PlanItOut app.


               4. BASIC FLOW OF EVENTS:
                                       1. User opens the app.
                                       2. User taps on the specfic date they are interested in.
                                       3. A new menu opens up with fields for task name, comments, and reminder day/time(s)
                                       4. The user enters information in the relevant fields.
                                       5. The user confirms the entry.

               5. ALTERNATIVE FLOWS:
                                    A.
                                      1. The user opens the app.
                                      2. The user scrolls to a different month.
                                      3. User taps on the specfic date they are interested in.
                                      4. A new menu opens up with fields for task name, comments, and reminder day/times(s)
                                      5. The user enters information in the relevant fields.
                                      6. The user confirms the entry.

                                    B.
                                       1. User opens the app.
                                       2. User taps on the specfic date they are interested in.
                                       3. A new menu opens up with fields for task name, comments, and reminder day/times(s)
                                       4. The user enters information in the relevant fields.
                                       5. The user cancels the entry.
                                       6. The user receives a confirmation message.
                                       7. The user confirms the confirmation message, and menu disappears without adding any information to calendar.

               6. SUBFLOWS:
                                    A. 
                                       1. User taps on the specfic date they are interested in.
                                       2. A new menu opens up with fields for task name, comments, and reminder day/times(s)


                                    B.
                                       1. The user enters information in the relevant fields.
                                       2. The user confirms the entry.



               7. KEY SCENARIOS:  When a user needs to add an item to their calendar


               8. POST-CONDITIONS: The user has now added an item to the calendar.


               9. SPECIAL REQUIREMENTS: None.


![Use Case 1 sketch](https://github.com/Carhn/PlanItOut/blob/Dev/Deliverables/Deliverable_Images/sketch_john.png "Use Case 1 Sketch")


   Use Case #2:
    1. BRIEF DESCRIPTION: User can share their calander with a coworker


               2. ACTOR BRIEF DESCRIPTIONS: Application user


               3. PRECONDITIONS: User has access to PlanItOut and has created at least one calander event
 

               4. BASIC FLOW OF EVENTS: 1. User taps on the share icon in the app
                                        2. User enters the username of the person they want to share calanders with
                                        3. User hits send calander button

               5. ALTERNATIVE FLOWS: 1. User selects a specific event in their calander
                                     2. User selects share button inside the calander event window
                                     3. User enters the username of who they want to share the event
                                     4. User its send event button

               6. SUBFLOWS: 1. The user taps on the share button
                            2. a pop up window prompts for user input of a username
               

               7. KEY SCENARIOS: 1. When a user would like another user to see their calander or a specific event


               8. POST-CONDITIONS: The cooworker or individual can accept the new calander and view it

               9. SPECIAL REQUIREMENTS: NONE
![Use Case 2 sketch](https://github.com/Carhn/PlanItOut/blob/Dev/Deliverables/Deliverable_Images/Use_case_2.png "Use Case 2 sketch")


   Use Case #3:

               1. BRIEF DESCRIPTION: Adding an alert. 


               2. ACTOR BRIEF DESCRIPTIONS: User is a user of the PlanItOut application


               3. PRECONDITIONS: User has PlanItOut installed and has created an event on the calendar. 
 

               4. BASIC FLOW OF EVENTS:
                  1.  User asks the system to find the event that they wish to add an alarm for. 
                  2.  System finds the event and displays it to the user. 
                  3.  User specifies when they wish to receive the alarm on the event. 
                  4.  System saves the alarm on the event for the user.       
                  5.  System shows the user that the alarm has been successfully saved on event.   


               5. ALTERNATIVE FLOWS:
                  2a. System could not find the desired event for the user. 
                  2b. User chooses another event to add an alarm to. 

                  4a: System could not save the alarm successfully.
                  4b. System shows the user that the alarm could not be saved. 
                  4c. User attempts to input the alarm again. 


               6. SUBFLOWS:
                  1. The user attempts to quit from adding an alarm at any point.
                  2. The system closes the event and does not add an alarm. 


               7. KEY SCENARIOS:
                  When the user wants to add an alarm. 

               8. POST-CONDITIONS
                  The user has added an alarm to a certain event on their calendar. 

               9. SPECIAL REQUIREMENTS
                   None. 
                   
![Use Case 3 sketch](https://github.com/Carhn/PlanItOut/blob/Dev/Deliverables/Deliverable_Images/Phone%20Sketch.png "Use Case 3 sketch")

   Use Case #4

               1. BRIEF DESCRIPTION: Displaying a positive message after the user completes a task.


               2. ACTOR BRIEF DESCRIPTIONS: User uses PlanItOut app and has completed an item in their checklist.


               3. PRECONDITIONS: User has PlanItOut installed and has created a checklist.
 

               4. BASIC FLOW OF EVENTS:
		  1. User adds a checklist to a specific day on the calendar.
		  2. User complete the task.
		  3. User checks off task from checklist.
		  4. App recognizes item checked off.
		  5. App displays positive message to screen.



               5. ALTERNATIVE FLOWS:
		  1. User completes several checklist items at once
		  2. App recognizes all checks off.
		  3. App displays positive message to screen.

               6. SUBFLOWS:
		  1. User checks or unchecks a task.


               7. KEY SCENARIOS: 
		  The user comleted a task and wants to check off one of the items on the list.


               8. POST-CONDITIONS: 
		  User has checked off an item on the checklist.


               9. SPECIAL REQUIREMENTS
		  None.

![Use Case 4 sketch](https://github.com/Carhn/PlanItOut/blob/Dev/Deliverables/Deliverable_Images/UseCase4.png "Use Case 4 sketch")


   Use Case #5

               1. BRIEF DESCRIPTION: User can set an alarm to repeatable


               2. ACTOR BRIEF DESCRIPTIONS: User is using the PlanItOut app and has at least one alarm active


               3. PRECONDITIONS: User has PlanItOut app installed and has at least one alarm to set to repeat
 

               4. BASIC FLOW OF EVENTS: 
	       			1. User taps on the alarm they want to set to repeat
				2. User selects when alarm should repeat itself and how frequently
				3. System confirms with user if the data provided is accurate
				4. System saves data given

               5. ALTERNATIVE FLOWS:
				1.a User creates a new alarm and is presented with the repeat function for the new alarm
				2.a User selects multiple alarms to set to repeat
				3.a User declines that data was not correct
				3.b User is reprompted to enter data

               6. SUBFLOWS:
				1. User cancels the selection of the repeat function
				2. User is prompted to enter when and where alarm should trigger

               7. KEY SCENARIOS:
				1. Alarm was set to repeat		
		
               8. POST-CONDITIONS
				1. User is able to select which alarms are to be set to repeating and details meet user's needs


               9. SPECIAL REQUIREMENTS
				None

![Use Case 5 Sketch](https://github.com/Carhn/PlanItOut/blob/Dev/Deliverables/Deliverable_Images/UseCase5.drawio "Use Case 5 Sketch")  

   Use Case #6

               1. BRIEF DESCRIPTION:


               2. ACTOR BRIEF DESCRIPTIONS:


               3. PRECONDITIONS:
 

               4. BASIC FLOW OF EVENTS:


               5. ALTERNATIVE FLOWS:


               6. SUBFLOWS:


               7. KEY SCENARIOS:


               8. POST-CONDITIONS


               9. SPECIAL REQUIREMENTS



USER STORIES
============

   1. User Story #1: As a user, I want to color code items so that I can know at a glance if they're personal, work, business, etc... tasks.
   - Priority: Should
   - Units of Time (Planning Poker): 2 Hours
   

   2. User Story #2: As a user, I want to be able to mark a reminder as complete from the lock screen so I can manage reminders quicker.
   - Priority: Should
   - Units of Time (Planning Poker): 2 Hours 
   

   3. User Story #3: As a calendar user, I want easy access to the calendar of my company so that I know when company events are ahead of time. 
   - Priority: Should 
   - Units of Time (Planning Poker): 1 Hours


   4. User Story #4: As a calendar manager, I want an easy way to add events to the calendar of my company so that employees can know about events ahead of time.  
   - Priority: Should
   - Units of Time (Planning Poker): 2 Hours
   

   5. User Story #5: As a calendar user, I want to be able to search my events for a keyword so that I can easily find an old item.
   - Priority: Could
   - Units of Time (Planning Poker): 3 Hours
   

   6. User Story #6: As a user, I want to be able to be encouraged by the app so I can feel like I'm being productive.
   - Priority: Could
   - Units of Time (Planning Poker): 2 Hours
   

   7. User Story #7: As a user, I want to be reminded of upcoming due dates so I can stay on top of things.
   - Priority: Should
   - Units of Time (Planning Poker): 2 Hours
   

   8. User Story #8:
   - Priority:
   - Units of Time (Planning Poker):
   

   9. User Story #9:  As a user, I want to be able to set some of my reminders to repeatable so I do not rewrite my reminders over and over.
   - Priority: Should
   - Units of Time (Planning Poker): 2 Hours 
   

   10. User Story #10: As a user, I want my app to have an easy to understand dynamic so that I feel productive
   - Priority: Should
   - Units of Time (Planning Poker): 3 Hours
   

   11. User Story #11:
   - Priority:
   - Units of Time (Planning Poker):
   

   12. User Story #12:
   - Priority:
   - Units of Time (Planning Poker):
   

ISSUE TRACKER
=============
