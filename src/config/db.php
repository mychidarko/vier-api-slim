<?php
    class db {
        // props
        private $host = 'localhost';
        private $user = 'root';
        private $password = '';
        private $dbname = 'books';

        // Connect
        public function connect() {
            $connection = new PDO("mysql:host=$this->host;dbname=$this->dbname", $this->user, $this->password);
            $connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            return $connection;
        }
    }