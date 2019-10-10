<?php
    use Psr\Http\Message\ResponseInterface as Response;
    use Psr\Http\Message\ServerRequestInterface as Request;

    // Get ALl Categories
    $app->get('/categories/all', function (Request $request, Response $response) {
        $query = "SELECT * FROM categories";

        try {
            $db = new db();
            $connection = $db->connect();

            // query
            $stmt = $connection->query($query);
            $categories = $stmt->fetchAll(PDO::FETCH_ASSOC);
            if (empty($categories)) {
                $response->getBody()->write(json_encode(array('error' => 'There are no categories' )));
                return outputResponse($response, $categories);
            }
            return outputResponse($response, $categories);
        } catch (PDOException $e) {
            $response->getBody()->write($e->getMessage());
            return $response;
        }
    });

    // Get Single Category
    $app->get('/category/{id}', function (Request $request, Response $response, array $args) {
        $id = $args['id'];
        $query = "SELECT * FROM categories WHERE id = '$id'";

        try {
            $db = new db();
            $connection = $db->connect();

            // query
            $stmt = $connection->query($query);
            $categories = $stmt->fetchAll(PDO::FETCH_ASSOC);
            if (empty($categories)) {
                $response->getBody()->write(json_encode(array('error' => 'There are no categories' )));
                return outputResponse($response, $categories);
            }
            return outputResponse($response, $categories);
        } catch (PDOException $e) {
            $response->getBody()->write($e->getMessage());
            return $response;
        }
    });
