<?php
    use Psr\Http\Message\ResponseInterface as Response;
    use Psr\Http\Message\ServerRequestInterface as Request;

    // Search for books
    $app->get('/search/books/{params}', function (Request $request, Response $response, array $args) {
        $params = $args['params']."%";
        $query = "SELECT * FROM books WHERE title LIKE '$params'";

        try {
            $db = new db();
            $connection = $db->connect();
            // query
            $stmt = $connection->query($query);
            $books = $stmt->fetchAll(PDO::FETCH_ASSOC);
            if (empty($books)) {
                $response->getBody()->write(json_encode(array('error' => 'There are no books with this title' )));
                return outputResponse($response, $books);
            }
            return outputResponse($response, $books);
        } catch (PDOException $e) {
            $response->getBody()->write($e->getMessage());
            return $response;
        }
    });

    // Search for books with limit
    $app->get('/search/books/{params}/{limit}', function (Request $request, Response $response, array $args) {
        $params = $args['params']."%";
        $limit = $args['limit'];
        $query = "SELECT * FROM books WHERE title LIKE '$params' LIMIT $limit";

        try {
            $db = new db();
            $connection = $db->connect();

            // query
            $stmt = $connection->query($query);
            $books = $stmt->fetchAll(PDO::FETCH_ASSOC);
            if (empty($books)) {
                $response->getBody()->write(json_encode(array('error' => 'There are no books with title' )));
                return outputResponse($response, $books);
            }
            return outputResponse($response, $books);
        } catch (PDOException $e) {
            $response->getBody()->write($e->getMessage());
            return $response;
        }
    });

    // Search for authors
    $app->get('/search/authors/{params}', function (Request $request, Response $response, array $args) {
        $params = $args['params']."%";
        $query = "SELECT * FROM books WHERE author LIKE '$params'";

        try {
            $db = new db();
            $connection = $db->connect();
            // query
            $stmt = $connection->query($query);
            $books = $stmt->fetchAll(PDO::FETCH_ASSOC);
            if (empty($books)) {
                $response->getBody()->write(json_encode(array('error' => 'Author not found')));
                return outputResponse($response, $books);
            }
            return outputResponse($response, $books);
        } catch (PDOException $e) {
            $response->getBody()->write($e->getMessage());
            return $response;
        }
    });

    // Search for authors with limit
    // $app->get('/search/authors/{params}/{limit}', function (Request $request, Response $response, array $args) {
    //     $params = $args['params']."%";
    //     $limit = $args['limit'];
    //     $query = "SELECT * FROM books WHERE author LIKE '$params' LIMIT $limit";
    //     try {
    //         $db = new db();
    //         $connection = $db->connect();
    //         // query
    //         $stmt = $connection->query($query);
    //         $books = $stmt->fetchAll(PDO::FETCH_ASSOC);
    //         if (empty($books)) {
    //             $response->getBody()->write(json_encode(array('error' => 'Author not found' )));
    //             return outputResponse($response, $books);
    //         }
    //         return outputResponse($response, $books);
    //     } catch (PDOException $e) {
    //         $response->getBody()->write($e->getMessage());
    //         return $response;
    //     }
    // });
