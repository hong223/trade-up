## How to Run From Source

### Prerequisites
1. Install [Node.js](https://nodejs.org/en/)
2. Install Yarn: `npm install -g yarn`
3. Install brew `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
4. Install [Grails 3] `brew install gradle`
5. Install database: `brew install database`
6. Install [Git](https://git-scm.com/downloads) and clone the repository
7. Connect to the calendar database: mysql --user=root --password '1234'
8. Open mysql `mysql`;
9. Create database tradeup for this project: `CREATE DATABASE tradeup;`
10. type `use tradeup;`
11. Go to the file directory that contain initialise.sql and public_holiday.sql and then go into mysql;
12. Type `source initialise.sql` and `source public_holiday.sql;`

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
