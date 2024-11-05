<?php
// Database connection parameters
$servername = "localhost"; // replace with your database server
$username = "username"; // replace with your database username
$password = "password"; // replace with your database password
$dbname = "database_name"; // replace with your database name

// Create connection to the database
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error); // Stop the script if connection fails
}

// Get the category from the URL parameter
$category = isset($_GET['category']) ? $conn->real_escape_string($_GET['category']) : ''; // Prevent SQL injection

// Prepare and execute the SQL query to get a random quote based on the selected category
$sql = "SELECT quote, author FROM quotes WHERE category = '$category' ORDER BY RAND() LIMIT 1"; // SQL query to fetch a random quote
$result = $conn->query($sql); // Execute the query

// Check if there are results
if ($result && $result->num_rows > 0) {
    // Fetch data from the query result
    $row = $result->fetch_assoc(); // Get the associative array of the quote
    echo $row['quote'] . PHP_EOL; // Display the quote
    echo $row['author']; // Display the author of the quote
} else {
    // Message displayed if no quotes are found for the selected category
    echo "No quotes found for the selected category.";
}

// Close the database connection
$conn->close();

?>
