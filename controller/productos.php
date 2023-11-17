<?php
    header('Content-Type: application/json');

    require_once("../config/conexion.php");
    require_once("../models/Productos.php");
    $productos = new Productos();
    $body = json_decode(file_get_contents("php://input"), true);

    switch ($_GET["op"]) {
        case "GetAll":
            $datos=$productos->get_productos();
            echo json_encode($datos);
        break;


        case "Update":
            $datos=$productos->update_productos(
                $body["Codigo_Producto"],
                $body["Nombre_Producto"],
                $body["Precio_Producto"],
                $body["fecha_Vencimiento"],
            );
            echo "Upadate Correcto";
        break;

        case "Delete":
            $datos=$productos->delete_productos($body["Codigo_Producto"]);
            echo "Delete Correcto";
        break;


        case "Insert":
            $datos=$productos->insert_productos(
                $body["Codigo_Producto"],
                $body["Nombre_Producto"],
                $body["Precio_Producto"],
                $body["fecha_Vencimiento"],
            );
            echo "Insert Correcto";
        break;

        
        
        








}
?>