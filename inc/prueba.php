<?php require("../conexion/conexion.php"); ?>
<!DOCTYPE html 
      PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
      "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="es" xml:lang="es">
<head>
<title>Listas dependientes con PHP y mySQL</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<script type="text/javascript">
/************************************************
 Listas dependientes por Tunait!(5/1/04)
 Si quieres usar este script en tu sitio eres libre de hacerlo con la condición
 de que permanezcan intactas estas líneas, osea, los créditos.
 No autorizo a publicar y ofrecer el código en sitios de script sin previa autorización
 Si quieres publicarlo, por favor, contacta conmigo.
 http://javascript.tunait.com/
 tunait@yahoo.com
*************************************************/
<!--
function slctr(texto,valor){
   this.texto = texto
   this.valor = valor
}
function slctryole(cual,donde){
   if(cual.selectedIndex != 0){
      donde.length=0
      cual = eval(cual.value)
      for(m=0;m<cual.length;m++){
         var nuevaOpcion = new Option(cual[m].texto);
         donde.options[m] = nuevaOpcion;
         if(cual[m].valor != null){
            donde.options[m].value = cual[m].valor
         }
         else{
            donde.options[m].value = cual[m].texto
         }
      }
   }
}
<?
$query = mysql_query("select * from maestro_bancos order by id_bancos");
$categorias_padre = array();
while($res = mysql_fetch_assoc($query)){ 
   $contador = 0;
   if($res["id_categoria_padre"] == 0) $categorias_padre["cat_".$res["id_categoria"]] = $res["nombre_categoria"];
?>
var cat_<?=$res["id_categoria"] ?>=new Array()
   cat_<?=$res["id_categoria"]."[".$contador++ ?>] = new slctr('- -<?=$res["nombre_categoria"] ?>- -')
<? 
   if($res["id_categoria_padre"] == 0){ 
      $query2 = mysql_query("select id_categoria, nombre_categoria as 'nombre' from categorias_productos where id_categoria_padre = ". $res["id_categoria"]. " order by nombre_categoria");
   }
   else{
      $query2 = mysql_query("select id_categoria, nombre_producto as 'nombre' from productos where id_categoria = ". $res["id_categoria"]. " order by nombre_producto");
   }
   while($res2 = mysql_fetch_assoc($query2)){ ?>
      cat_<?=$res["id_categoria"]."[".$contador++ ?>] = new slctr("<?=$res2["nombre"]?>",'cat_<?=$res2["id_categoria"]?>')
<? } 
} 
?>
//-->
</script>
</head>
<body>
<form>
  <fieldset>
   <select name="select" onchange="slctryole(this,this.form.select2)">
      <option>- - Seleccionar - -</option>
<?
   foreach($categorias_padre as $idd =>$cat){ ?>
      <option value="<?=$idd?>"><?=$cat?></option>
<?
       }
?>
   </select>
   <select name="select2" onchange="slctryole(this,this.form.select3)">
      <option>- - - - - -</option>
   </select>
   <select name="select3">
      <option>- - - - - -</option>
   </select>
  </fieldset>
</form>
</body>
</html>