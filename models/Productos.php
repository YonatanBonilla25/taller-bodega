 <?php
 class Productos extends Conectar{
    public function get_productos(){
      $conectar = parent :: conexion();
      parent:: set_names();
      $sql="SELECT * FROM productos";
      $sql=$conectar->prepare($sql);
      $sql->execute();
      return $resultado=$sql->fetchAll();

    }


    public function update_productos($Codigo_Producto, $Nombre_Producto, $Precio_Producto, $Fecha_Vencimiento) {
        $conectar = parent::Conexion();
        parent::set_names();
        $sql = "UPDATE productos SET
                Nombre_Producto = ?,
                Precio_Producto = ?,
                Fecha_Vencimiento = ?
                WHERE
                Codigo_Producto = ?";
    
        $sql = $conectar->prepare($sql);
        $sql->bindValue(1, $Nombre_Producto);
        $sql->bindValue(2, $Precio_Producto);
        $sql->bindValue(3, $Fecha_Vencimiento);
        $sql->bindValue(4, $Codigo_Producto);
    
        $sql->execute();
        return $resultado = $sql->fetchAll(PDO::FETCH_ASSOC);
    }


    public function delete_Productos($Codigo_Producto){
        $conectar = parent::Conexion();
        parent::set_names();
        $sql = "DELETE FROM productos WHERE Codigo_Producto = ?";
        
        $sql=$conectar->prepare($sql);
        $sql->bindValue(1, $Codigo_Producto);
        $sql->execute();
        return $resultado = $sql->fetchAll(PDO::FETCH_ASSOC);
    }


    public function insert_productos($Codigo_Producto, $Nombre_Producto, $Precio_Producto, $Fecha_Vencimiento){
        $conectar= parent::Conexion();
        parent::set_names();
        $sql="INSERT INTO productos(Codigo_Producto,Nombre_Producto,Precio_Producto,Fecha_Vencimiento) VALUES (?, ?, ?, ?);";
        $sql=$conectar->prepare($sql);
        $sql->bindValue(1, $Codigo_Producto);
        $sql->bindValue(2, $Nombre_Producto);
        $sql->bindValue(3, $Precio_Producto);
        $sql->bindValue(4, $Fecha_Vencimiento);
        $sql->execute();
        return $resultado=$sql->fetchAll(PDO::FETCH_ASSOC);
    }
        
        
        
        
     
}
?>

