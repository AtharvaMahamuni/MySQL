-- TODO: How would you fetch details of the customers who cancelled orders?

        -- SELECT customers.customer_name, customers.first_name, customers.last_name, customers.phone, customers.city, customers.state, orders.status
        -- FROM (`customers`
        -- INNER JOIN orders ON orders.customer_id = customers.customer_id)
        -- WHERE orders.status = 'cancelled'; 

-- TODO: Fetch the details of customers who have done payments between the payments between
    -- the amount 5,000 and 35,000?

    -- SELECT customers.customer_name, customers.first_name, customers.last_name, payments.amount 
    -- FROM (customers
    -- INNER JOIN payments ON payments.customer_id = customers.customer_id)
    -- WHERE payments.amount between 5000 AND 35000;

-- TODO: Add new employee/salesman with following details:-
    -- EMP ID - 167
    -- First Name: Lakshmi
    -- Last Name: Roy
    -- Extension: x4065
    -- Email: lakshmiroy1@lcomotors.com
    -- Office Code: 4
    -- Reports To: 1088
    -- Job Title: Sales Rep

    -- INSERT INTO employees(employee_id, last_name, first_name, extension, email, office_code, reports_to, job_title)
    -- VALUES( 167, "Roy", "Lakshmi", "x4067", "lakshmiroy1@lcomotors.com", 4, 1088, "Sales Rep");


-- TODO: Assign the new employee to the customer whose phone is 2125557413.
    -- Step 1:
    -- SELECT * FROM customers WHERE phone = '2125557413';
    -- Step 2:
    -- UPDATE customers SET sales_employee_id = 167
    -- WHERE phone = "2125557413";

-- TODO: Write a SQL query to fetch shipped motorcycles.

    -- SELECT products.product_name, products.product_line 
    -- FROM products 
    -- INNER JOIN orderdetails ON orderdetails.product_code = products.product_code
    -- INNER JOIN orders ON orders.order_id = orderdetails.order_id
    -- WHERE orders.status = "shipped"
    -- AND products.product_line = "Motorcycles";

-- TODO: Write a SQL query to get details of all employees/salesmen in the office loacted in Sydney.

    -- SELECT employees.employee_id, employees.first_name, employees.last_name, employees.email, employees.job_title
    -- FROM (employees
    -- INNER JOIN offices ON offices.office_code = employees.office_code)
    -- WHERE offices.city = "Sydney";

-- TODO: How would you fetch the details of customers whose orders are in process?

        -- SELECT customers.customer_name, customers.first_name, customers.last_name, customers.phone, customers.city, customers.state, customers.country, orders.status
        -- FROM( customers
        -- INNER JOIN orders ON orders.customer_id = customers.customer_id)
        -- WHERE orders.status = "in process";

-- TODO: How would you fetch the details of products with less than 30 orders?

        -- SELECT products.product_name, products.product_line, products.product_code, products.buy_price, products.mrp, orderdetails.quantity_ordered
        -- FROM products
        -- INNER JOIN orderdetails ON products.product_code = orderdetails.product_code
        -- WHERE orderdetails.quantity_ordered < 30;

-- TODO: It is noted that the payment(check number OM314933) was actually 2575. Update the record.

        -- SELECT * from `payments` WHERE `check_number` = "OM314933";

        -- UPDATE `payments` SET `check_number` = "2575" WHERE `check_number` = "OM314933";

        -- SELECT * from `payments` WHERE `check_number` = "2575";


-- TODO: Fetch the details of salesmen/employees dealing with customers whose orders are resolved.

        -- SELECT employees.first_name, employees.last_name, employees.extension, employees.email, employees.job_title, orders.status
        -- FROM employees 
        -- LEFT JOIN customers ON customers.sales_employee_id = employees.employee_id
        -- LEFT JOIN orders ON orders.customer_id = customers.customer_id
        -- WHERE orders.status = "resolved";

-- TODO: Get the details of the customer who made the maximum payment.

    -- MyANS (I found the max. no. of cheques issued.)
        -- SELECT customers.customer_name, customers.first_name, customers.last_name, customers.phone, COUNT(payments.customer_id) 
        -- FROM `payments` 
        -- INNER JOIN `customers` ON customers.customer_id = payments.customer_id
        -- GROUP BY payments.customer_id ORDER BY COUNT(payments.customer_id) DESC limit 1; 
        
    -- LCO ANS (Here they have found maximum amount)
        -- SELECT * FROM customers 
        -- RIGHT JOIN payments ON customers.customer_id = payments.customer_id
        -- WHERE payments.amount = (SELECT MAX(amount) FROM payments);

-- TODO: Fetch list of orders shipped to France.

        -- SELECT orders.order_id, orders.order_date, orders.shipped_date, orders.shipped_date, orders.status, customers.country
        -- FROM orders 
        -- LEFT JOIN customers ON customers.customer_id = orders.customer_id
        -- WHERE customers.country = "France" AND orders.status = "Shipped";

-- TODO: How many customers are from Finland who placed orders.

        -- SELECT customers.customer_id, orders.order_id, COUNT(customers.customer_id) AS customer_count
        -- FROM customers 
        -- RIGHT JOIN orders ON orders.customer_id = customers.customer_id
        -- WHERE customers.country = "Finland";

-- TODO: Get the detials of the customer who made the maximum payment.

        -- SELECT customers.customer_id, customers.customer_name, CONCAT(customers.first_name+" "+customers.last_name) AS client_name, customers.phone, customers.city, customers.state, customers.country, payments.amount
        -- FROM customers
        -- LEFT JOIN payments ON payments.customer_id = customers.customer_id
        -- WHERE payments.amount = (SELECT MAX(amount) FROM payments);

-- TODO: Get the details of the customer and payments they made between May 2019 and June 2019

        -- SELECT customers.customer_name, customers.first_name, customers.last_name, customers.phone, customers.city, customers.state, customers.country, payments.payment_date
        -- FROM customers 
        -- RIGHT JOIN payments ON customers.customer_id = payments.customer_id
        -- WHERE payments.payment_date BETWEEN "2019-05-01" AND "2019-06-30";

-- TODO: How many orders shipped to Belgium in 2018?

        -- SELECT COUNT(order_id) AS "No. of orders shipped to Belgium" 
        -- FROM orders
        -- RIGHT JOIN customers ON customers.customer_id = orders.customer_id
        -- WHERE customers.country = "Belgium" AND (orders.shipped_date BETWEEN "2018-01-01" AND "2018-12-31");

-- TODO: Get the details of the salesman/employee with offices dealing with customers in Germany.

        -- SELECT employees.employee_id, employees.first_name, employees.last_name, employees.email, customers.country
        -- FROM employees 
        -- RIGHT JOIN customers ON employees.employee_id = customers.sales_employee_id
        -- WHERE customers.country = "Germany";

-- TODO: The customer (id: 496) made a new order today and the detials are as follows:
    -- Order id: 10426
    -- Product code: S12_3148
    -- Quantity: 41
    -- Each price: 151
    -- Order line number: 11
    -- Order date: <today's date>
    -- Required data: <10 days from now>
    -- Status: In process

    -- FOLLOW STEPS: We need to write 2 queries for both orders and orderdetails tables
    -- (1) For orders table 
        -- INSERT INTO `orders`(`order_id`, `order_date`, `required_date`, `status`, `customer_id`)
        -- VALUES(10426, CURRENT_DATE(), (CURRENT_DATE() + INTERVAL 10 DAY), "In Process", 496);
    -- (2) For orderdetails table
        -- INSERT INTO `orderdetails`(`order_id`, `product_code`, `quantity_ordered`, `each_price`, `order_line_number`)
        -- VALUES(10426, "S12_3148", 41, 151, 11);

-- TODO: Fetch details of employees who were reported for the payments made by the customers between June 2018 and July 2018

        -- SELECT employees.employee_id, employees.first_name, employees.last_name, employees.email, payments.payment_date 
        -- FROM employees 
        -- RIGHT JOIN customers ON customers.sales_employee_id = employees.employee_id
        -- INNER JOIN payments ON payments.customer_id = customers.customer_id
        -- WHERE payments.payment_date BETWEEN "2018-06-01" AND "2018-07-31";

-- TODO: A new payment was done by a customer(id: 119). Insert the below details.
    -- Check Number: OM314944
    -- Payment date: <today's date>
    -- Amount: 33789.55

        -- INSERT INTO payments(customer_id, check_number, payment_date, amount)
        -- VALUES(119, "OM314944", CURRENT_DATE(), 33789.55);


-- TODO: Get the address of the office of the employees that reports to the employee whose id is 1102.

        -- SELECT offices.office_code, offices.city, offices.phone, offices.address_line1, offices.state, offices.country, offices.postal_code, offices.territory, employees.reports_to
        -- FROM offices 
        -- INNER JOIN employees ON employees.office_code = offices.office_code
        -- WHERE employees.reports_to = 1102;

-- TODO: Get the details of the payments of classic cars.
-- my ans
        -- SELECT payments.customer_id, payments.check_number, payments.payment_date, payments.amount, products.product_code, products.product_line 
        -- FROM payments 
        -- INNER JOIN customers ON customers.customer_id = payments.customer_id
        -- INNER JOIN orders ON orders.customer_id = customers.customer_id
        -- INNER JOIN orderdetails ON orders.order_id = orderdetails.order_id
        -- INNER JOIN products ON orderdetails.product_code = products.product_code
        -- where products.product_line = "Classic cars";
-- lco ans
        -- SELECT payments.check_number, payments.payment_date, payments.amount, 
        -- products.product_name, products.product_line, customers.customer_id AS done_by
        -- FROM payments 
        -- LEFT JOIN customers ON customers.customer_id = payments.customer_id
        -- RIGHT JOIN orders ON orders.customer_id = customers.customer_id
        -- LEFT JOIN orderdetails ON orderdetails.order_id = orders.order_id
        -- LEFT JOIN products ON products.product_code = orderdetails.product_code 
        -- WHERE products.product_line = "Classic Cars";

-- TODO: How many customers ordered from the USA?

        -- SELECT COUNT(*) 
        -- FROM orders
        -- LEFT JOIN customers ON orders.customer_id = customers.customer_id
        -- WHERE customers.country = "USA";

-- TODO: Get the comments regarding resolve orders.

        -- SELECT customer_id, order_id, comments FROM orders WHERE status ="Resolved";

-- TODO: Fetch the details of employees/salesmen in USA with office address.

        -- SELECT employees.employee_id, employees.first_name, employees.last_name, employees.email, offices.city, offices.address_line1
        -- FROM employees
        -- LEFT JOIN offices ON offices.office_code = employees.office_code
        -- WHERE offices.country = "USA";


-- TODO: Fetch total price of each order of motorcycles.(Hint: quantity*price for each record).

        -- SELECT orderdetails.product_code, products.product_name, products.product_line, orderdetails.quantity_ordered, orderdetails.each_price,
        --         orderdetails.quantity_ordered*orderdetails.each_price AS total_price 
        -- FROM orderdetails 
        -- LEFT JOIN products ON products.product_code = orderdetails.product_code
        -- WHERE products.product_line = "Motorcycles";

-- TODO: Get the total worth of all planes orederd.

        -- SELECT SUM(orderdetails.quantity_ordered*orderdetails.each_price) AS total_worth
        -- FROM orderdetails 
        -- LEFT JOIN products ON products.product_code = orderdetails.product_code
        -- WHERE products.product_line = "Planes";

-- TODO: How many customers belong to France?

        -- SELECT COUNT(*) AS "No. of customers from France" FROM customers WHERE country = "France";

-- TODO: Get the payments of customers living in France.

        -- SELECT customers.customer_name, customers.first_name, customers.last_name, customers.country, customers.credit_limit, payments.customer_id, payments.check_number, payments.payment_date, payments.amount
        -- FROM payments 
        -- RIGHT JOIN customers ON customers.customer_id = payments.customer_id
        -- WHERE customers.country = "France";

-- TODO: Get the office address of the employees/salesmen who report to emplyee 1143.
        
        SELECT DISTINCT offices.office_code, offices.city, offices.phone, offices.address_line1, offices.state, offices.country, offices.postal_code, offices.territory 
        FROM offices
        LEFT JOIN employees ON offices.office_code = employees.office_code
        WHERE employees.reports_to = 1143;
