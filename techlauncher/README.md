## How to Run From Source

### Prerequisites
1. Install [Node.js](https://nodejs.org/en/)
2. Install Yarn: ```npm install -g yarn```
3. Install [Grails 3](https://grails.org/download.html)
4. Install [Git](https://git-scm.com/downloads) and clone the repository
5. Connect to your local database: mysql -u root -p
6. Create database tradeup for this project: CREATE DATABASE tradeup;
7. Then type in `use tradeup;`
8. Initialise the database using initialise.sql and public_holiday.sql by following step 8 and 9; 
9. Open the folder containing the initialise.sql and drag the file into the terminal so that the source will appear; 
10. Open the folder containing the public_holiday.sql and drag the file into the terminal so that the source will appear;

### Development Workflow
go to the project directory

1. start the server:
./gradlew server:bootRun

2. start the client:
./gradlew client:bootRun


#### Notes
* After you make a change inside the client folder and save, webpack dev server will automatically reload the page with your changes
* the server run on localhost:8080 by default
* the client run on localhost:4200 by default
* the public holiday on localhost:8080/holidays
