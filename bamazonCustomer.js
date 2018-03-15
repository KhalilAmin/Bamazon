// import { lstat } from "fs";
var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "root",
  database: "bamazon"
});

connection.connect(function(err) {
  if (err) throw err;
  start();
});

function start() {
  connection.query("SELECT * FROM products", function(err, results) {
    if (err) throw err;
  inquirer
    .prompt([
      {
        type: "rawlist",
        message: "What would you like to buy?",
        choices: function() {
          var choiceArray = [];
          for (var i = 0; i < results.length; i++) {
            choiceArray.push(results[i].item_id + " " + results[i].product_name + " " + results[i].price);
          }
          return choiceArray;
        },
        name: "selecteditem"
      }
    ]).then(function(user){
      
    })
  })
};