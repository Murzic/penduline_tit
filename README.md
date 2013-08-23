# Penduline tit
Simple project time tracker. Here are some tits for you:
![penduline](http://ibc.lynxeds.com/files/pictures/Remiz_pendulinus_pendulinus-2.jpg)

## Installation and launching
You will need ruby 2.0.0 and rails 4.0.0.
After that all you have to do is to clone the repository, go to its directory and run:
* bundle install
* rake db:migrate
* rake db:seed
* rails s

## Usage
Sign up, select a project and create time entries.
As an admin you have more possibilities, such as changing roles of users, deleting users, and creating new projects.

When you sign in as an admin you have all the projects in a table, each of them having a corresponding delete button. Only the admin can create new projects.
![](/files/Selection_002.png)
![](/files/Selection_003.png)
The next thing that the admin can do, is to click on the project's name and see all the users that have been working on it and the total amount of hours.
![](/files/Penduline tit - Chromium_005.png)
Then if you click on a user's name you get to see all of the time entries that user created for that project.
![](/files/Penduline tit - Chromium_006.png)
In the top right corner there is the Admin link that sends you to the list of all the registered users.
![](/files/Penduline tit - Chromium_007.png)
On this page you can change the roles of the users, view some info about them and delete them.
![](/files/Penduline tit - Chromium_010.png)
![](/files/Penduline tit - Chromium_011.png)
![](/files/Penduline tit - Chromium_009.png)
As a simple user you get to see only the projects' names. When you click on one of them, you are redirected to the page where you can create your time entries.
![](/files/Penduline tit - Chromium_013.png)
All you have to do is to fill in both fields and click the "Create Time entry" button.
![](/files/Penduline tit - Chromium_014.png)