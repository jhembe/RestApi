<?php
// headers

header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');

// initializing our api
include_once('../core/initialize.php');

// instantiate Category object through class
$categories = new Categories($db);

// blog category query
$result = $categories->read();

// get the row count
$num = $result->rowCount();

if($num > 0){
    $categories_arr = array();
    $categories_arr['data'] = array();

    while($row = $result->fetch(PDO::FETCH_ASSOC)){
        extract($row);
        $categories_item = array(
            'id' => $id,
            'name' => $name,
            'create_at' => $create_at,
        );
            array_push($categories_arr['data'],$categories_item);
    }
    // convert to JSON and output
    echo json_encode($categories_arr);
} else{
    echo json_encode(array('Message' => 'No Categories found.'));
}
