<?php
    use Psr\Http\Message\ResponseInterface as Response;
    use Psr\Http\Message\ServerRequestInterface as Request;

    // Get ALl Books
    $app->get('/books/all', function (Request $request, Response $response) {
        $query = "SELECT * FROM books";

        try {
            $db = new db();
            $connection = $db->connect();

            // query
            $stmt = $connection->query($query);
            $books = $stmt->fetchAll(PDO::FETCH_ASSOC);
            if (empty($books)) {
                $books = array('message' => 'There are no notes at the moment');
            }
            return outputResponse($response, $books);
        } catch (PDOException $e) {
            $response->getBody()->write($e->getMessage());
            return $response;
        }
    });

    // Get ALl Books with limit
    $app->get('/books/all/{limit}', function (Request $request, Response $response, array $args) {
        $limit = $args['limit'];
        $query = "SELECT * FROM books LIMIT $limit";

        try {
            $db = new db();
            $connection = $db->connect();

            // query
            $stmt = $connection->query($query);
            $books = $stmt->fetchAll(PDO::FETCH_ASSOC);
            if (empty($books)) {
                $books = array('message' => 'There are no notes at the moment');
            }
            return outputResponse($response, $books);
        } catch (PDOException $e) {
            $response->getBody()->write($e->getMessage());
            return $response;
        }
    });

    // Get Single book
    $app->get('/book/{id}', function (Request $request, Response $response) {
        $id = $request->getAttribute('id');
        $query = "SELECT * FROM books WHERE id = '$id'";

        try {
            $db = new db();
            $connection = $db->connect();
            // query
            $stmt = $connection->query($query);
            $book = $stmt->fetchAll(PDO::FETCH_OBJ);
            if (empty($book)) {
                $books = array('message' => 'There are no notes at the moment');
            }
            return outputResponse($response, $book);
        } catch (PDOException $e) {
            $response->getBody()->write($e->getMessage());
            return $response;
        }
    });

    // Get Single book
    $app->post('/books/add', function (Request $request, Response $response) {
        $title = $request->getParam('title');
        $note = $request->getParam('body');
        $description = $request->getParam('description');
        $author = $request->getParam('author');
        $errors = array();

        if (empty($title)) {
            $res = array("message" => "Title is required", "type" => "error", "clearForm" => false);
            return outputResponse($response, $res);
        }

        if (empty($note)) {
            $res = array("message" => "Body is required", "type" => "error", "clearForm" => false);
            return outputResponse($response, $res);
        }

        if (empty($description)) {
            $res = array("message" => "Description is required", "type" => "error", "clearForm" => false);
            return outputResponse($response, $res);
        }

        if (empty($author)) {
            $res = array("message" => "Author is required", "type" => "error", "clearForm" => false);
            return outputResponse($response, $res);
        }

        $query = "INSERT INTO books(title, author, note, description) VALUES('$title', '$author', '$note', '$description')";
        $queryTwo = "SELECT * FROM authors WHERE name = '$author'";
        $queryThree = "INSERT INTO authors(name, email, rating) VALUES('$author', '', '0.0')";

        try {
            $db = new db();
            $connection = $db->connect();
            // query
            $connection->query($query);
            $stmt = $connection->query($queryTwo);
            $fetchedAuthor = $stmt->fetch(PDO::FETCH_ASSOC);
            if (empty($fetchedAuthor)) {
                $connection->query($queryThree);
            }
            $res = array("message" => "Your note has been added", "type" => "success", "clearForm" => true);
            return outputResponse($response, $res);
        } catch (PDOException $e) {
            $response->getBody()->write($e->getMessage());
            return $response;
        }
    });
