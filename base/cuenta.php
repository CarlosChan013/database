<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.2/font/bootstrap-icons.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous" />

  <title>Cuenta</title>
  </head>

  <body>
    <!-- Registro cuenta nombre -->
  <h2>Insertar una cuenta </h2>
  <form action="registrocuenta.php" method="POST">
    <div class="mb-3">
      <label for="form-label">nombre</label>
      <input type="text" class="form-control" name="nombre" />  
    </div>
     <!-- Apellido paterno -->
 
     <div class="mb-3">
      <label for="form-label">apellido paterno</label>
      <input type="text" class="form-control" name="apellido_paterno" /> 
      </div>
       <!-- apellido materno -->
      <div class="mb-3">
      <label for="form-label">apellido materno</label>
      <input type="text" class="form-control" name="apellido_materno" /> 
      </div> 
      <!-- telefono -->
      <div class="mb-3">
      <label for="form-label">telefono</label>
      <input type="text" class="form-control" name="telefono" /> 
      </div> 
             <!-- correo -->
      <div class="mb-3">
      <label for="form-label">correo</label>
      <input type="text" class="form-control" name="correo" />  
      </div>
       <!-- usuario -->
       <div class="mb-3">
      <label for="form-label">usuario</label>
      <input type="text" class="form-control" name="usuario" />  
       </div>
        <!-- contraseña -->
        <div class="mb-3">
      <label for="form-label">contraseña</label>
      <input type="text" class="form-control" name="contraseña" />  
        </div>

               <!-- Inserta boton a lo ultimo -->
       <button type="submit" name="enviar" class="btn btn-primary" value="Insertarcuenta ">
      Insertar datos
    </button>
    <!--botom-->
  </form>


    <!--Visualizar-->
    <table class="table">
    <thead>
      <tr>
        <th scope="row">#</th>
        <th scope="col">nombre</th>
        <th scope="col">apellido paterno</th>
        <th scope="col">apellido materno</th>
        <th scope="col">telefono</th>
        <th scope="col">correo</th>
        <th scope="col">usuario</th>
        <th scope="col">contraseña</th>
        <tbody>
          <!--Conexion -->
      <?php
      include('conec.php');
      $consulta = "SELECT * FROM cuenta;";

      $resultado = mysqli_query($conexion, $consulta);
      while ($fila = mysqli_fetch_array($resultado)) {
      ?>
        <tr>
          <th scope="row"><?php echo $fila['codigo'] ?></th>
          <td><?php echo $fila['nombre'] ?></td>
          <td><?php echo $fila['apellido_paterno'] ?></td>
          <td><?php echo $fila['apellido_materno'] ?></td>
          <td><?php echo $fila['telefono'] ?></td>
          <td><?php echo $fila['correo'] ?></td>
          <td><?php echo $fila['usuario'] ?></td>
          <td><?php echo $fila['contraseña'] ?></td>
          <?php } ?>
    </tbody>   

      </body>

