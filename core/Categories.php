<?php


class Categories{
    // db stuff
    private $conn;
    private $table = 'categories';
    
    //post properties
    public $id;
    public $name;
    public $create_at;


    // constructor with db connection
    public function __construct($db)
    {
        $this -> conn = $db;
    }

    // getting posts from out database
    public function read(){
        // create actual query
        $query = 'SELECT * FROM '.$this->table.';';

        // prepare statement
        $stmt = $this->conn->prepare($query);
        // execute query
        $stmt->execute();

        return $stmt;

    }

    public function read_single(){
            // create actual query
            $query = 'SELECT * FROM '.$this->table.' WHERE p.id = ? LIMIT 1;'
            ;

        // Prepare statement
        $stmt = $this->conn->prepare($query);
        // binding param
        $stmt->bindParam(1,$this->id);
        // execute the query
        $stmt->execute();
        $row = $stmt->fetch(PDO::FETCH_ASSOC);
        
        $this->id = $row['id'];
        $this->name = $row['name'];
        $this->create_at = $row['create_at'];
    }

}