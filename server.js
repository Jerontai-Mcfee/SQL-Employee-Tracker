const inquirer = require("inquirer");
const mysql = require("mysql");
require("console.table");

let connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "jay",
    password: "hope",
    database: "employeesDB"
  });

  connection.connect(function (err) {
    if (err) console.error("Could not connect to Database");
    starterPrompt();
  });

  function starterPrompt() {
    inquirer.prompt({
        type: "list",
        name: "task",
        message: "What would you like to do?",
        choices: [
          "View Employees",
          "View Employees by Department",
          "Add Employee",
          "Remove Employees",
          "Update Employee Role",
          "Add Role",
          "End"]
      })
//   functions to Manage employees
      .then(function ({ task }) {
        switch (task) {
          case "View Employees":
            viewEmployee();
            break;
          
          case "Add Employee":
            addEmployee();
            break;

          case "Remove Employees":
            removeEmployees();
            break;

          case "Update Employee Role":
            updateEmployeeRole();
            break;

          case "Add Role":
            addRole();
            break;
  
          case "End":
            connection.end();
            break;
        }
      });
}

