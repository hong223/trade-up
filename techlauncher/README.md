## How to Run From Source

### Prerequisites
1. Install [Node.js](https://nodejs.org/en/)
2. Install Yarn: ```npm install -g yarn```
3. Install [Grails 3](https://grails.org/download.html)
4. Install [Git](https://git-scm.com/downloads) and clone the repository
5. Connect to the calendar database: mysql -u=root -p
6. From the project root directory, run the command: source initialise.sql
6. From the project root directory, run the command: source public_holiday.sql

### Development Workflow
go to the project directory

1. start the server:
gradlew server:bootRun

2. start the client:
gradlew client:bootRun


#### Notes
* After you make a change inside the client folder and save, webpack dev server will automatically reload the page with your changes
* the server run on localhost:8080 by default
* the client run on localhost:4200 by default
