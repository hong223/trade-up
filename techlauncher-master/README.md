## How to Run From Source

### Prerequisites
1. Install [Node.js](https://nodejs.org/en/)
2. Install Yarn: `npm install -g yarn`
3. Install homebrew `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
4. Install [Grails 3] `brew install gradle`
5. Install database: `brew install mysql`
6. Install brew service: `brew tap homebrew/services`
7. Load and start mysql service: `brew services start mysql`
8. Set up mysql: `mysqladmin -u root password 'password'`
9. Install [Git](https://git-scm.com/downloads) and clone the repository
10. Open mysql `mysql`, then type `create table calendar;`, then copy all the content in the initialise_EC.sql and paste
11. save and quit

### Development Workflow
go to the project directory

1. start the server:
gradle server:bootRun

2. start the client:
gradle client:bootRun


#### Notes
* After you make a change inside the client folder and save, webpack dev server will automatically reload the page with your changes
* the server run on localhost:8080 by default
* the client run on localhost:4200 by default
