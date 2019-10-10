<?php
    use Psr\Http\Message\ResponseInterface as Response;
    use Psr\Http\Message\ServerRequestInterface as Request;

    // Get All Authors
    $app->get('/authors/all', function (Request $request, Response $response) {
        $query = "SELECT * FROM authors";

        try {
            $db = new db();
            $connection = $db->connect();
            // query
            $stmt = $connection->query($query);
            $authors = $stmt->fetchAll(PDO::FETCH_ASSOC);
            if (empty($authors)) {
                return $response->getBody()->write(json_encode(array('error' => 'There are no authors' )));
            }
            // transform author array
            $authorsArray = array();
            foreach ($authors as $author) {
                $authorName = $author['name'];
                $query = "SELECT * FROM books WHERE author = '$authorName'";
                $stmt = $connection->query($query);
                $books = $stmt->fetchAll(PDO::FETCH_ASSOC);

                array_push($authorsArray, array(
                    "id" => $author['id'],
                    "name" => $author['name'],
                    "email" => $author['email'],
                    "rating" => $author['rating'],
                    "books" => $books,
                    "book_count" => count($books)
                ));
            }
            return outputResponse($response, $authorsArray);
        } catch (PDOException $e) {
            $response->getBody()->write($e->getMessage());
            return $response;
        }
    });

    // Get All Authors with limit
    $app->get('/authors/all/{limit}', function (Request $request, Response $response, array $args) {
        $limit = $args['limit'];
        $query = "SELECT * FROM authors LIMIT $limit";

        try {
            $db = new db();
            $connection = $db->connect();
            // query
            $stmt = $connection->query($query);
            $authors = $stmt->fetchAll(PDO::FETCH_ASSOC);
            if (empty($authors)) {
                return $response->getBody()->write(json_encode(array('error' => 'There are no authors' )));
            }
            // transform author array
            $authorsArray = array();
            foreach ($authors as $author) {
                $authorName = $author['name'];
                $query = "SELECT * FROM books WHERE author = '$authorName'";
                $stmt = $connection->query($query);
                $books = $stmt->fetchAll(PDO::FETCH_ASSOC);

                array_push($authorsArray, array(
                    "id" => $author['id'],
                    "name" => $author['name'],
                    "email" => $author['email'],
                    "rating" => $author['rating'],
                    "books" => $books,
                    "book_count" => count($books)
                ));
            }
            return outputResponse($response, $authorsArray);
        } catch (PDOException $e) {
            $response->getBody()->write($e->getMessage());
            return $response;
        }
    });

    // Get Single Author
    $app->get('/author/{id}', function (Request $request, Response $response, array $args) {
        $id = $args['id'];
        $query = "SELECT * FROM authors WHERE id = '$id'";

        try {
            $db = new db();
            $connection = $db->connect();
            // query
            $stmt = $connection->query($query);
            $authors = $stmt->fetchAll(PDO::FETCH_ASSOC);
            if (empty($authors)) {
                return $response->getBody()->write(json_encode(array('error' => 'There are no authors' )));
            }
            // transform author array
            $authorsArray = array();
            foreach ($authors as $author) {
                $authorName = $author['name'];
                $query = "SELECT * FROM books WHERE author = '$authorName'";
                $stmt = $connection->query($query);
                $books = $stmt->fetchAll(PDO::FETCH_ASSOC);
                // get number of books
                array_push($authorsArray, array(
                    "id" => $author['id'],
                    "name" => $author['name'],
                    "email" => $author['email'],
                    "rating" => $author['rating'],
                    "books" => $books,
                    "book_count" => count($books)
                ));
            }
            return outputResponse($response, $authorsArray);
        } catch (PDOException $e) {
            $response->getBody()->write($e->getMessage());
            return $response;
        }
    });
