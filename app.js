var mysql = require("mysql");
var inquirer = require("inquirer");

// create the connection information for the sql database
var connection = mysql.createConnection({
    host: "localhost",

    // Your port; if not 3306
    port: 3306,

    // Your username
    user: "root",

    // Your password
    password: "root",
    database: "bamazon"
});

// connect to the mysql server and sql database
connection.connect(function (err) {
    if (err) throw err;
    // run the start function after the connection is made to prompt the user
    //   start();
    // console.log("connected")
});

connection.query("SELECT * FROM products", function (err, data) {
    console.log(data);
    start()
});
function start() {
    inquirer
        .prompt([{
            name: "itemIDask",
            type: "input",
            message: "What is the ID of your product?"
        }, {
            name: "quantask",
            type: "input",
            message: "How many do you want to buy?"
        }]
        )
        .then(function (answer) {
            console.log(answer);
            connection.query("SELECT * FROM products WHERE item_id =" + answer.itemIDask, function (err, data) {
                console.log(data);
                if (data[0].stock_quantity < answer.quantask) {
                    console.log("Insufficient Stock!")
                }
                else {
                    var newstocktotal = data[0].stock_quantity - answer.quantask
                    console.log("Your total is ", answer.quantask * data[0].price);
                    connection.query(
                        "UPDATE products SET ? WHERE ?",
                        [
                            {
                                stock_quantity: newstocktotal
                            },
                            {
                                item_id: answer.itemIDask
                            }
                        ],
                        function (err, data) {
                            // console.log(data);
                        })
                }
            });
        })
};
