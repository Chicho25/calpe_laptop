<?php require_once('../lib_pdf/mpdf.php'); ?>
<?php require_once('funciones_reportes.php'); ?>
<?php require_once('../conexion/conexion.php'); ?>
<?php $mpdf = new mPDF('c', 'A4-L'); ?>
<?php $css = file_get_contents('css/style.css'); ?>
<?php $mpdf->writeHTML($css, 1); ?>

<?php $nombre_proy = $conexion2 -> query("SELECT * FROM maestro_proyectos WHERE id_proyecto =".$_POST['id_proyecto']); ?>
<?php while ($py = $nombre_proy -> fetch_array()) {
        $nombre_proyecto = $py['proy_nombre_proyecto'];
      } ?>
<?php if($_POST['tipo_reporte'] == 2 and $_POST['grupo_inmueble'] ==""){
       $resultados2 = reporte_2_2($conexion2, $_POST['id_proyecto']);
       while($lg[] = $resultados2->fetch_array());
      }else{ ?>
<?php $resultados = reporte_2($conexion2, $_POST['id_proyecto'], $_POST['tipo_reporte'], $_POST['grupo_inmueble']); ?>
<?php while($li[] = $resultados->fetch_array()); ?>
<?php $resultados2 = reporte_2_2($conexion2, $_POST['id_proyecto']); ?>
<?php while($lg[] = $resultados2->fetch_array()); ?>

<?php } ?>

<?php $html='
<header class="clearfix">
  <div id="logo">

  </div>
  <h1>LISTADO DE VENTAS DE INMUEBLES</h1>

  <div id="project" style="font-size:18px;">
    '.$nombre_proyecto.'
  </div>
</header>
<main><div style="text-align: right"><b>Fecha del Reporte: '.date('d/m/Y').'</b></div>';

/*<div id="company" class="clearfix">
    <div>Grupo Calpe</div>
    <div>Av. Aquilino de la Guardia, Torre,<br />
         Ocean Business Plaza. Piso 15,<br />
         Ofic. 1504. Panamá.</div>
    <div>(+507) 340 6390</div>
    <div><a href="mailto:ventas@grupocalpe.com.pa">ventas@grupocalpe.com.pa</a></div>
  </div>*/

if($_POST['tipo_reporte'] == 2 and $_POST['grupo_inmueble'] ==""){}else{

  $html .= '<table >
    <thead>
      <tr>
        <th>'.(count($li) - 1).'</th>
      </tr>
      <tr>
        <th  class="service">INMUEBLE</th>
        <th  class="desc">GRUPO</th>
        <th  class="desc">NOMBRE</th>
        <th  class="desc">NOMBRE DEL CLIENTE</th>
        <th  class="desc">VENDIDO</th>
        <th  class="desc">RESERVADO</th>
        <th  class="desc">POR VENDER</th>
        <th  class="desc">COBRADO</th>
        <th  class="desc">POR COBRAR</th>
        <th class="desc">VENCIDO</th>
      </tr>
    </thead>
    <tbody>';

    foreach($li as $l){
      if($l['mi_codigo_imueble']==''){continue;}
      /*if($l['monto_vendido'] == 0 && $l['monto_restante'] == 0 && $l['monto_cobrado'] == 0 && $l['monto_restante'] == 0 && $l['monto_vencido'] == 0){
      $html .='';
    }else{*/
      $html .='<tr>
                  <td style="padding: 0" class="desc">'.$l['mi_codigo_imueble'].'</td>
                  <td style="padding: 0" class="desc">'.$l['gi_nombre_grupo_inmueble'].'</td>
                  <td style="padding: 0" class="desc">'.$l['mi_nombre'].'</td>
                  <td style="padding: 0" class="desc">'.$l['nombre'].'</td>
                  <td style="padding: 0" class="desc">'.number_format($l['monto_vendido'], 2, ".", ",").'</td>
                  <td style="padding: 0" class="desc">'.number_format($l['monto_reservado'], 2, ".", ",").'</td>
                  <td style="padding: 0" class="desc">'.number_format($l['por_vender'], 2, ".", ",").'</td>
                  <td style="padding: 0" class="desc">'.number_format($l['monto_cobrado'], 2, ".", ",").'</td>
                  <td style="padding: 0" class="desc">'.number_format($l['monto_restante'], 2, ".", ",").'</td>
                  <td style="padding: 0" class="desc">'.number_format($l['monto_vencido'], 2, ".", ",").'</td>
                </tr>';

                $vendido += $l['monto_vendido'];
                $reservado += $l['monto_reservado'];
                $por_vender += $l['por_vender'];
                $monto_cobrado += $l['monto_cobrado'];
                $monto_restante += $l['monto_restante'];
                $monto_vencido += $l['monto_vencido'];
              }

      $html .='<tr>
                  <td style="padding: 0" colspan="4" class="desc"><b>Totales</b></td>
                  <td style="padding: 0" class="desc"><b>'.number_format($vendido, 2, ".", ",").'</b></td>
                  <td style="padding: 0" class="desc"><b>'.number_format($reservado, 2, ".", ",").'</b></td>
                  <td style="padding: 0" class="desc"><b>'.number_format($por_vender, 2, ".", ",").'</b></td>
                  <td style="padding: 0" class="desc"><b>'.number_format($monto_cobrado, 2, ".", ",").'</b></td>
                  <td style="padding: 0" class="desc"><b>'.number_format($monto_restante, 2, ".", ",").'</b></td>
                  <td style="padding: 0" class="desc"><b>'.number_format($monto_vencido, 2, ".", ",").'</b></td>
                </tr>';

$html .= '

    </tbody>
  </table>';

}
$vendido = 0; $reservado = 0; $por_vender = 0; $monto_cobrado = 0; $monto_restante = 0; $monto_vencido = 0;

$html .= '  <table>
    <thead>
      <tr>
        <th style="padding: 0" class="service">GRUPO</th>
        <th style="padding: 0" class="desc">VENDIDO</th>
        <th style="padding: 0" class="desc">RESERVADO</th>
        <th style="padding: 0" class="desc">POR VENDER</th>
        <th style="padding: 0" class="desc">COBRADO</th>
        <th style="padding: 0" class="desc">POR COBRAR</th>
        <th style="padding: 0" class="desc">VENCIDO</th>
      </tr>
    </thead>
    <tbody>';

    foreach($lg as $lgg){
      if($lgg['gi_nombre_grupo_inmueble']==''){continue;}
      /*if($l['monto_vendido'] == 0 && $l['monto_restante'] == 0 && $l['monto_cobrado'] == 0 && $l['monto_restante'] == 0 && $l['monto_vencido'] == 0){
      $html .='';
    }else{*/
      $html .='<tr>
                  <td style="padding: 0" class="desc">'.$lgg['gi_nombre_grupo_inmueble'].'</td>
                  <td style="padding: 0" class="desc">'.number_format($lgg['monto_vendido'], 2).'</td>
                  <td style="padding: 0" class="desc">'.number_format($lgg['monto_reservado'], 2).'</td>
                  <td style="padding: 0" class="desc">'.number_format($lgg['por_vender'], 2).'</td>
                  <td style="padding: 0" class="desc">'.number_format($lgg['monto_cobrado'], 2).'</td>
                  <td style="padding: 0" class="desc">'.number_format($lgg['monto_restante'], 2).'</td>
                  <td style="padding: 0" class="desc">'.number_format($lgg['monto_vencido'], 2).'</td>
                </tr>';

                $vendido += $lgg['monto_vendido'];
                $reservado += $lgg['monto_reservado'];
                $por_vender += $lgg['por_vender'];
                $monto_cobrado += $lgg['monto_cobrado'];
                $monto_restante += $lgg['monto_restante'];
                $monto_vencido += $lgg['monto_vencido'];
              }

      $html .='<tr>
                  <td style="padding: 0" class="desc"><b>Totales</b></td>
                  <td style="padding: 0" class="desc"><b>'.number_format($vendido, 2).'</b></td>
                  <td style="padding: 0" class="desc"><b>'.number_format($reservado, 2).'</b></td>
                  <td style="padding: 0" class="desc"><b>'.number_format($por_vender, 2).'</b></td>
                  <td style="padding: 0" class="desc"><b>'.number_format($monto_cobrado, 2).'</b></td>
                  <td style="padding: 0" class="desc"><b>'.number_format($monto_restante, 2).'</b></td>
                  <td style="padding: 0" class="desc"><b>'.number_format($monto_vencido, 2).'</b></td>
                </tr>';

$html .='
</tbody>
</table>
</main>
<footer>
  Grupo Calpe 1.0 © 2015-16.
</footer>'; ?>
<?php if($_POST['id_formato']==1){ ?>
<?php $mpdf->writeHTML($html); ?>
<?php $mpdf->Output('reporte_2.pdf', 'I'); ?>
<?php }else{ ?>
<?php
header('Content-Type: application/xls');
header('Content-Disposition: attachment; filename='.date('d-m-Y').'-ReporteIngreso.xls');
echo $html;
}
 ?>
