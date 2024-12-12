<?php

include_once("dbconnect.php");

$sqlloadproduct = "SELECT * FROM `cart` ORDER BY `product_startDate` DESC";


$result = $conn->query($sqlloadproduct);

if ($result->num_rows > 0) {
    $cartarray['cart'] = array();
    while ($row = $result->fetch_assoc()) {
        $cart = array();
        $cart['product_id'] = $row['product_id'];
        $cart['product_name'] = $row['product_name'];
        $cart['product_imageFile'] = $row['product_imageFile'];
        $cart['product_description'] = $row['product_description'];
        $cart['product_quantity'] = $row['product_quantity'];
        $cart['product_price'] = $row['product_price'];
        $cart['product_startDate'] = $row['product_startDate'];
        $cart['product_endDate'] = $row['product_endDate'];
        $cart['product_category'] = $row['product_category'];
        $cart['quantitySelected'] = $row['quantitySelected'];
        array_push($cartarray['cart'], $cart);
    }
    $response = array('status' => 'success', 'data' => $cartarray);
    sendJsonResponse($response);
}else{
    $response = array('status' => 'failed', 'data' => null);
    sendJsonResponse($response);
}
	
	
function sendJsonResponse($sentArray)
{
    header('Content-Type: application/json');
    echo json_encode($sentArray);
}

?>