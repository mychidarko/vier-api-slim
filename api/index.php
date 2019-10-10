<?php
    header('Content-Type: application/json');
    header('Access-Control-Allow-Origin: *');
    header('Access-Control-Allow-Headers: *');

    use Psr\Http\Message\ResponseInterface as Response;
    use Psr\Http\Message\ServerRequestInterface as Request;

    require __DIR__ . '/../vendor/autoload.php';
    require __DIR__ . '/../src/config/db.php';
    require __DIR__ . '/../src/helpers/response.php';

    $app = new \Slim\App;

    // custom routes
    require __DIR__ . '/../src/routes/books.php';
    require __DIR__ . '/../src/routes/authors.php';
    require __DIR__ . '/../src/routes/categories.php';
    require __DIR__ . '/../src/routes/search.php';

    $app->run();
