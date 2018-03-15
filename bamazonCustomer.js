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
        type: "list",
        message: "What would you like to buy?",
        choices: function() {
          var choiceArray = [];
          for (var i = 0; i < results.length; i++) {
            choiceArray.push(results[i].item_id + " " + results[i].product_name + " " + results[i].price);
          }
          return choiceArray;
        },
        name: "selecteditem"
      },
      {
        type: "input",
        name: "quantity",
        message: "How many do you want?",
      }
    ]).then(function(user){
      var selectionID = user.selecteditem.split(" ");
      connection.query("SELECT stock_quantity FROM products WHERE item_id = " + selectionID[0], function(err, results){
        var itemQuantity = results[0].stock_quantity;
        if (itemQuantity >= user.quantity) {
          connection.query("UPDATE products SET stock_quantity = " + (itemQuantity - user.quantity) + " WHERE item_id = " + selectionID[0], function(err,results){
            var itemPrice = selectionID[2];
            var subTotal = (itemPrice * user.quantity);
            console.log("You total is $" + subTotal + ".");
          });
          } else {
          console.log("Insuffcient quantity");
        }
      });
      
    })
  })
};