<?php
    function outputResponse($response, $result) {
        $response->getBody()->write(json_encode($result));
        return $response->withHeader('Content-type', 'application/json');
    }
?>
