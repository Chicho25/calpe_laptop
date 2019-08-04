create VIEW `cheques_emitidos` AS select `cb`.`id_cuenta_bancaria` AS `id_cuenta_bancaria`,`mp`.`proy_nombre_proyecto` AS `proy_nombre_proyecto`,`mb`.`banc_nombre_banco` AS `banc_nombre_banco`,`cb`.`cta_numero_cuenta` AS `cta_numero_cuenta`,`mbo`.`mb_fecha` AS `mb_fecha`,`mbo`.`mb_monto` AS `mb_monto`,`mbo`.`mb_descripcion` AS `mb_descripcion`,`mbo`.`mb_stat` AS `mb_stat`,`ms`.`st_nombre` AS `st_nombre`,`mbo`.`mb_referencia_numero` AS `mb_referencia_numero`,`mbo`.`id_tipo_movimiento` AS `id_tipo_movimiento`,`mbo`.`id_movimiento_bancario` AS `id_movimiento_bancario`,`tmb`.`tmb_nombre` AS `tmb_nombre` from ((((((`maestro_empresa` `me` join `maestro_proyectos` `mp` on((`me`.`id_empresa` = `mp`.`id_empresa`))) join `cuentas_bancarias` `cb` on((`me`.`id_empresa` = `cb`.`cta_id_empresa`))) join `maestro_bancos` `mb` on((`cb`.`cta_id_banco` = `mb`.`id_bancos`))) join `movimiento_bancario` `mbo` on((`cb`.`id_cuenta_bancaria` = `mbo`.`id_cuenta`))) join `tipo_movimiento_bancario` `tmb` on((`mbo`.`id_tipo_movimiento` = `tmb`.`id_tipo_movimiento_bancario`))) join `maestro_status` `ms` on((`ms`.`st_numero` = `mbo`.`mb_stat`))) where (`mbo`.`id_tipo_movimiento` = 8);

CREATE VIEW `todos_inmuebles` AS select `mi`.`id_inmueble` AS `id_inmueble`,`mi`.`id_proyecto` AS `id_proyecto`,`mi`.`id_grupo_inmuebles` AS `id_grupo_inmuebles`,`mi`.`id_tipo_inmuebles` AS `id_tipo_inmuebles`,`mi`.`mi_nombre` AS `mi_nombre`,`mi`.`mi_modelo` AS `mi_modelo`,`mi`.`mi_area` AS `mi_area`,`mi`.`mi_habitaciones` AS `mi_habitaciones`,`mi`.`mi_sanitarios` AS `mi_sanitarios`,`mi`.`mi_depositos` AS `mi_depositos`,`mi`.`mi_estacionamientos` AS `mi_estacionamientos`,`mi`.`mi_observaciones` AS `mi_observaciones`,`mi`.`mi_precio_real` AS `mi_precio_real`,`mi`.`mi_disponible` AS `mi_disponible`,`mi`.`mi_id_partida_comision` AS `mi_id_partida_comision`,`mi`.`mi_porcentaje_comision` AS `mi_porcentaje_comision`,`mi`.`mi_fecha_registro` AS `mi_fecha_registro`,`mi`.`mi_status` AS `mi_status`,`me`.`st_nombre` AS `st_nombre`,`mi`.`mi_log_user` AS `mi_log_user`,`mp`.`proy_nombre_proyecto` AS `proy_nombre_proyecto`,`gi`.`gi_nombre_grupo_inmueble` AS `gi_nombre_grupo_inmueble`,`ti`.`im_nombre_inmueble` AS `im_nombre_inmueble` from ((((`maestro_inmuebles` `mi` join `maestro_status` `me` on((`mi`.`mi_status` = `me`.`st_numero`))) join `grupo_inmuebles` `gi` on((`mi`.`id_grupo_inmuebles` = `gi`.`id_grupo_inmuebles`))) join `maestro_proyectos` `mp` on((`mp`.`id_proyecto` = `mi`.`id_proyecto`))) join `tipo_inmuebles` `ti` on((`ti`.`id_inmuebles` = `mi`.`id_tipo_inmuebles`)));


CREATE VIEW `todos_proveedores` AS select `mp`.`id_proveedores` AS `id_proveedores`,`mp`.`pro_nombre_comercial` AS `pro_nombre_comercial`,`mp`.`pro_razon_social` AS `pro_razon_social`,`mp`.`pro_ruc` AS `pro_ruc`,`mp`.`pro_pais` AS `pro_pais`,`mp`.`pro_status` AS `pro_status`,(case `mp`.`pro_status` when 1 then 'activo' when 0 then 'inactivo' end) AS `estado`,`mp`.`pro_telefono_1` AS `pro_telefono_1`,`mp`.`pro_telefono_2` AS `pro_telefono_2`,`mp`.`pro_email` AS `pro_email`,`mp`.`pro_descripcion` AS `pro_descripcion`,`mps`.`id_paises` AS `id_paises`,`mps`.`ps_nombre_pais` AS `ps_nombre_pais` from (`maestro_proveedores` `mp` join `maestro_paises` `mps` on((`mp`.`pro_pais` = `mps`.`id_paises`)));