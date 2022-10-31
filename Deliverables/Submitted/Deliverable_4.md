# Deliverable 4

## 1. Introduction
For our system, the value that it offers to users is that it allows for effective time management. The way that our system accomplishes that is that we have 3 implemented tabs in the application that allow for different forms of time management. We have a tab for a calendar, a tab for a to-do list, and a tab for reminders, and all of them are easily accessible with a button press on the bottom of the screen. The link to the project on Github is [here.](https://github.com/Carhn/PlanItOut/tree/main)

## 2. Implemented Requirements
Requirement: As a user, I want to have a calendar so that I know when events are. <br/>
Issue: [21](https://github.com/Carhn/PlanItOut/issues/21) <br/>
Pull request: [Pull Request 27](https://github.com/Carhn/PlanItOut/pull/27) <br/>
Implemented by: Terrell Hayward, Payton Cox<br/>
Approved by: Logan Samstag<br/>
Print screen: <br/> ![Print Screen](https://github.com/Carhn/PlanItOut/blob/Dev/Deliverables/Deliverable_Images/Calendar%20Print%20Screen.png) 


Requirement: As a user, I want a to-do list so that I know what I need to do in a short period of time. <br/>
Issue: [22](https://github.com/Carhn/PlanItOut/issues/22)<br/>
Pull request: <br/>
Implemented by: Erick Salazar, Adriel Perez<br/>
Approved by: Logan Samstag <br/>
Print screen: <br/>

Requirement: As a user, I want to be able to add reminders so that I can remind myself of what I need to do. <br/>
Issue: [23](https://github.com/Carhn/PlanItOut/issues/23)<br/>
Pull request: [Pull Request 25](https://github.com/Carhn/PlanItOut/pull/25/)<br/>
Implemented by: Logan Samstag, John Cardeccia<br/>
Approved by: Logan Samstag <br/>
Print screen: ![Print Screen](https://github.com/Carhn/PlanItOut/blob/Dev/Deliverables/Deliverable_Images/Reminders%20Print%20Screen.png) <br/>

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

## 4. Adopted Technologies
**Include a list of adopted technologies with a brief description and justification for choosing them.**

***Android Studio:***
Android Studio was adopted by the team as the emulator that will be used to run Android/iOS operating systems on our computers. It allows for
the creation of different mobile systems on a local pc, as well as, detailed interactions with cpu, memory and data management between the OS's
and programs being run on the emulator.

***Flutter:***
Flutter is the framework that will be used to implement the team's Calendar App. This framework runs on the Dart programming language which is 
a C-styled programming language with CSS functionalities. It is easy to learn and has usefule implemented libraries than can be used to create
complex mobile applications.

***DigitalOcean:***
DigitalOcean will be the cloud-based tool that the team will be using to manage the database on which the Calendar app will be implemented. 
This service provides tools for storage, authetication, "server"-side code, and integration of different systems into the database. These tools
will make the development of this project more feasible for our small team in the long-run.

***Visual Studio Code:***
Visual Studio Code ( VSCode ) is the IDE the team decided to use. VSCode is a lightweight IDE that provides a clean, simple environment that can 
be modified to suit almost all necessities for different programming languages and environments due to plugins. The entire team will be using the 
same plugins dedicated to running emulators from VSCode using the Flutter framework, in order to keep a controlled environment where no surprise
bugs can occur due to the use of different development environments.

***Github:***
All implementations and differents versions of the Calendar application will be stored and changed through a repository being ran on Github. All 
team members have admin access to the repository and are capable of adding changes when necessary.

***Discord:***
Discord is the communication application that was adopted by the team due to its simplicity and easy accessibility. It is further being used to 
store and discuss further developments to the application, as well as, to properly split and manage the application as its is split into smaller 
implementation groups among the team.

## 5. Learning/Training
**Describe the strategies employed by the team to learn the adopted technologies.**

Our team's major learning strategy was to divide the project into different implementation groups, where each group is responsible for researching
and implementing their sections. The splitting will be done by interest in the subject and time availability during the week. Before splitting the
project into sections, the entire team did general research on the tools that would be used to implement the application. After a general consensus
on tool use, each team member specified any qualities they had when it came to programming, such as, having some previous experience with database
programming or having experience as a front-end developer.

For all given sections, each small group will lead their own research on their topic to further add their implementation to the repository and 
eventually, have all sections working together as a mobile application. The research being conducted by each group will include the use of video
tutorials, documentation, and colleague feedback in order to implement each section properly.

Payton is the most experienced in the use of the Flutter framework and Dart programming language therefore the team is mostly using him as feedback for 
debugging sections of the code. Furthermore, due to time constraints, most meetings and training are being done over discord when necessary. All current 
and future implementations are being discussed over in the weekly meetings the team has, as well as, tracking the progession of the application in order
to have the project working on time.

## 6. Deployment

[***DigitalOcean:***](https://www.digitalocean.com)
 The intented cloud plaform for our server deployment is DigitalOcean.  We current have a server rented and running Ubuntu Server.  At this stage of
application development, the server is not being utilized.  Currently, the application stores information in a local instance of an SQL database, but this
will eventually be moved to our cloud server.

## 7. Licensing

***GNU GPLv3:***
 We selected the GNU General Public License as it's open source, and allows for the code to be used by anyone who would like to use it with the only caveat
being that any projects based of it must remain open source.

## 8. Readme File
* [README.md](https://github.com/Carhn/PlanItOut/blob/Dev/README.md).
* [CONTRIBUTIONS.md](https://github.com/Carhn/PlanItOut/blob/Dev/CONTRIBUTIONS.md)
* [LICENSE.md](https://github.com/Carhn/PlanItOut/blob/Dev/LICENSE.md)
* [CODE_OF_CONDUCT.md](https://github.com/Carhn/PlanItOut/blob/Dev/CODE_OF_CONDUCT.md)

## 9. Look & Feel
 The interface of the PlanItOut Calendar Application we decided to go with a simple look with color that stands out. We decided to go with this approach because it will be visually easy for the user to use the application and with it being the first release the user could have simple features to use. With the interface the user is able to easily access days throughout the week, they are also able to switch between months and years. Again keeping in mind the first release we wanted to make it simple for the user. So in the interface they will see a button that they are able to use to add events to days selected by the users. These events will make reminders that are set by the user to be how frequent they would like to know about upcoming events that they set. 
![Image of Userface with Application](https://github.com/Carhn/PlanItOut/blob/Dev/Deliverables/Deliverable_Images/Q9D4.png)

## 10. Lessons Learned
 For the first release the team learned that the calendar just needs to stay simplistic. The interface needs to be easily accessible with the user being able to make sure they can navigate through what they want. It is also important to note that the first release is also to see how well the application is used and how it will be used for the future. For the second release a few more features will be implemented so the user is able to get the most out of the application. 


## 11. Demo
