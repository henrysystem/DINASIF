$PBExportHeader$w_pos.srw
$PBExportComments$Marco principal
forward
global type w_pos from window
end type
type dw_actuclimovi from datawindow within w_pos
end type
type dw_ori_descuento from datawindow within w_pos
end type
type sle_3 from singlelineedit within w_pos
end type
type dw_oriprom from datawindow within w_pos
end type
type dw_promcli_datos from datawindow within w_pos
end type
type dw_itemspremios from datawindow within w_pos
end type
type dw_cantitem_gen from datawindow within w_pos
end type
type sle_2 from singlelineedit within w_pos
end type
type dw_cheque from datawindow within w_pos
end type
type dw_vaucher_nc from datawindow within w_pos
end type
type dw_compag_nc from datawindow within w_pos
end type
type dw_9 from datawindow within w_pos
end type
type dw_actualiza_cliente from datawindow within w_pos
end type
type dw_8 from datawindow within w_pos
end type
type dw_7 from datawindow within w_pos
end type
type dw_6 from datawindow within w_pos
end type
type dw_preim from datawindow within w_pos
end type
type gb_obsequio from groupbox within w_pos
end type
type dw_5 from datawindow within w_pos
end type
type dw_4 from datawindow within w_pos
end type
type cb_asesor from commandbutton within w_pos
end type
type cb_2 from commandbutton within w_pos
end type
type cb_1 from commandbutton within w_pos
end type
type dw_servicheck_certifica from datawindow within w_pos
end type
type dw_autoriza_adminis from datawindow within w_pos
end type
type dw_3 from datawindow within w_pos
end type
type dw_precio from datawindow within w_pos
end type
type dw_claves from datawindow within w_pos
end type
type dw_2 from datawindow within w_pos
end type
type sle_1 from singlelineedit within w_pos
end type
type dw_movim from datawindow within w_pos
end type
type dw_1 from datawindow within w_pos
end type
type dw_forma_pago from datawindow within w_pos
end type
type dw_cab from datawindow within w_pos
end type
type dw_sel_recuperar from datawindow within w_pos
end type
type dw_rep_ticket from datawindow within w_pos
end type
type dw_consulta_stk from datawindow within w_pos
end type
type dw_stock_sucur from datawindow within w_pos
end type
type p_producto from picture within w_pos
end type
type dw_cliente from datawindow within w_pos
end type
type dw_codbar from datawindow within w_pos
end type
type dw_det from datawindow within w_pos
end type
type rb_cal from radiobutton within w_pos
end type
type rb_na from radiobutton within w_pos
end type
type dw_cant_prodxprom from datawindow within w_pos
end type
type dw_cedtarj from datawindow within w_pos
end type
end forward

global type w_pos from window
boolean visible = false
integer width = 5289
integer height = 2688
boolean titlebar = true
string title = "DynaPOS - Punto de Venta (POS) TINTES"
boolean controlmenu = true
boolean maxbox = true
boolean resizable = true
long backcolor = 79741120
string icon = "Imagenes\Pos.Ico"
boolean center = true
event ue_postopen pbm_custom01
event ue_guardar pbm_custom02
event ue_recuperar ( )
event ue_proforma pbm_custom05
event ue_cancelar ( )
event ue_delete pbm_custom07
event ue_facpro ( )
event ue_imagen pbm_custom09
event ue_nuevo pbm_custom10
event ue_stock pbm_custom11
event ue_fanuladas ( )
event ue_movcaja ( )
event ue_cliente ( )
event ue_precio ( )
dw_actuclimovi dw_actuclimovi
dw_ori_descuento dw_ori_descuento
sle_3 sle_3
dw_oriprom dw_oriprom
dw_promcli_datos dw_promcli_datos
dw_itemspremios dw_itemspremios
dw_cantitem_gen dw_cantitem_gen
sle_2 sle_2
dw_cheque dw_cheque
dw_vaucher_nc dw_vaucher_nc
dw_compag_nc dw_compag_nc
dw_9 dw_9
dw_actualiza_cliente dw_actualiza_cliente
dw_8 dw_8
dw_7 dw_7
dw_6 dw_6
dw_preim dw_preim
gb_obsequio gb_obsequio
dw_5 dw_5
dw_4 dw_4
cb_asesor cb_asesor
cb_2 cb_2
cb_1 cb_1
dw_servicheck_certifica dw_servicheck_certifica
dw_autoriza_adminis dw_autoriza_adminis
dw_3 dw_3
dw_precio dw_precio
dw_claves dw_claves
dw_2 dw_2
sle_1 sle_1
dw_movim dw_movim
dw_1 dw_1
dw_forma_pago dw_forma_pago
dw_cab dw_cab
dw_sel_recuperar dw_sel_recuperar
dw_rep_ticket dw_rep_ticket
dw_consulta_stk dw_consulta_stk
dw_stock_sucur dw_stock_sucur
p_producto p_producto
dw_cliente dw_cliente
dw_codbar dw_codbar
dw_det dw_det
rb_cal rb_cal
rb_na rb_na
dw_cant_prodxprom dw_cant_prodxprom
dw_cedtarj dw_cedtarj
end type
global w_pos w_pos

type prototypes
Function long USPSEncode ( &
	blob TrackPtr, &
	blob RoutePtr, &
	Ref string BarPtr &
	) Library "usps4pb.dll" Alias For "pbEncoder;Ansi" 
	

end prototypes

type variables
 dec{2} ic_minif, ic_maxif, ic_minpag, ic_maxpag,ic_recargo, ic_desc2, ic_porccambio, ic_valtotcambio
dec{2}  ic_iva,ic_descuento,ic_valor,ic_valor_aux, ic_tarifa0,  ll_check_porcentaje_aut, lc_valotrosant
integer il_descue = 1, ii_estado, ii_sucodautoriza, ii_imprime_ticket_promo
long li_preimpre, li_entro, ll_numnc
longlong il_num_venta = 0
long  ll_chek_autoriza
char ich_iva = 'N' 
string is_mensaje, ic_cupo,is_rucic,is_observ,is_codtarj, is_cliruc, is_codcli, is_nomcli, is_observacion, ls_datcli,is_teldom, is_telofi, is_telbod, ls_observa, ls_veordcomp, ls_minimoreq, is_imprimenc, is_bncodigo
datetime id_now
//datastore ids_cursor_componente,ids_cursor_kit
datawindowchild idwc
boolean ib_pasa_tarj = false, ib_ponmensaje = false, prod_visible = false,ib_facturar = false ,&
                ib_facturar_anulada= false, ib_recuperar = false, ib_obsequio, ib_premioleo = false,&
                                               ib_clcodigo = false//variables  solo por la promoción navideña

/**/
datawindowchild idwc_ctas
dec{2} ic_orig_subtotal,ic_orig_descuento,ic_orig_iva,ic_orig_valorpagar
dec{2} ic_interes_fp,ic_cupcre,ic_salcre, ii_montop
string is_tipcli,is_estcre, is_exiva, is_contesp, is_facturar, is_estado, is_cat,&
is_rpcomen,&
is_leyenda, is_numpremio, is_prpremios, is_dir_entrega,  is_tarj[]//variables  solo por la promoción navideña
integer    ii_plazo,ii_fpplazo,ii_promo, ii_promosuc, ii_servicheck

 
/// Variables para generar promocion de Aniversario **************//

String  ls_pe_codigo, ls_su_codigo, ls_leyenda
Integer ls_stock,ls_premios_dia, ls_premios_entregados, ls_reserva_regalos, premio
Date ls_fecha_ul_premio, ls_fecha_actual, ls_fecha_limite


//******************************************************

//PARA PROMOCION DE MOCHILA Y US1000P-CU

String tipo_codigo, ls_item_promo, ls_cod_producto, ls_items_premio, ls_stock_premio[], ls_cod_prods[]// codigo promocional de productos participantes
long ls_cantidad_prod, ls_stock_producto, li_det_pedido
longlong  ls_num_factura, ls_preant
integer  prod_promo, ciclo, ciclo_mochila, ya_gano, num_promocion, gana_promo, li_premiowesco // num_promocion es la promocion a la que aplica, puede ser 1, 2
dec{2} lc_efectivo, ldd_stock_promo[]
double num_prod_promo
String ls_rucemp, ls_rucci, ls_promociones, ls_if_codigo, ls_co_cliente, ls_cs_numero, is_bono
 Integer gana_promo_wesco,  ya_gano_wesco = 0, gano= 0

String ls_clave_acceso, ls_bncodrec, ls_bnverif // Obtiene clave de acceso de factura electrónica


//VARIABLES GLOBALES PARA PROMOCION******************************//
Integer num_boletos, ii_codunico
String ls_prod_promo, ls_cod_fabricante,   ls_codant_producto, ls_compn1, ls_compn2, ls_codseg,ls_emailbono, ls_insertnewrow = '0', is_entro[], is_premiosprom, is_itemsprom[], is_aceptxprom = 'O', is_accespromgen = 'O'
Dec{2} ldd_cant_total_promo, ldd_stock_unit, ldd_val_total_promo, ldd_total_valbono = 0,lc_cantproquil, lc_cantitemquil[]
str_promparm str_promocion
n_cryptoapi in_crypto



///Boletos restringido por sucursal *****/


String ls_cod_sucursal_envio, ls_nom_sucursal_envio, ls_grupoven
dec{2} lc_valor_pintulac


//Variable para el asesor y boletos navidad
Long prog_asesor, li_premio



//VARIABLES PARA CONEXION FTP Y WEBSERVCE

Integer ii_profile
hilo_ hilo1
comunicador comunicador1                           
										 
// VARIABLES DE BLOQUEO DE CAJAS

Integer li_bloqueo
dec{2} lc_des3


//Variables de Descuento

String ls_valcosto


//Variables facturación electrónica
String ls_rucic
Date ld_fecha_bono

// Variables formato sri

str_iva s_iva
String ls_ceexiva, ls_dccodigo
Integer li_itemiva,  ii_contador=0


String temp_msj


//Variables Proforma Origen, factura origen
	String is_valprof, is_valotros, is_chq_orprom = 'N', is_valprom, is_chq_ordesc= 'N', is_actualiza_desc = 'N', is_accessdescmov, is_profmovi, is_inprom_schools = 'N', is_codcli_school
	Integer ii_visdesc2
end variables

forward prototypes
public function integer wf_actualiza_saldo_nc (string as_numnc, decimal ac_valpag)
public function integer wf_cambia_precio ()
public function integer wf_crea_actualiza_cuenta (string as_clien)
public function decimal wf_valida_valor (string as_formpag, string as_inst_finan, decimal ac_valor, ref decimal ac_resultado)
public function integer wf_copia_factura_anulada (longlong ai_factura, ref long ai_nuevonum)
public function integer wf_controla_stock_sucursal (integer num_filas, ref string as_codant)
public subroutine wf_insertarfila ()
public function integer wf_proforma_a_factura (longlong ai_factura, ref long ai_nuevonum)
public function integer wf_encera_pago ()
public function decimal wf_actualiza_saldos ()
public function integer wf_validar ()
public function integer wf_aceptar_cheque (string as_cliente)
public function integer wf_dame_stock (string as_codigo, decimal ac_cantid)
public function integer wf_inv_formulas (string as_pepa, decimal ac_pedido, longlong al_num_venta)
public function integer premio_aniversario ()
public function integer numeros_randomicos (integer limite)
public function integer entrega_promo_regalo (integer cant_premio, integer stock_in_premio, integer prem_entregados, date fecha_ul_premio)
public function integer dias_restantes (string f_sucursal, date f_fecha_limite, date f_fecha_actual)
public function integer actualiza_leyenda (string leyenda, integer num_fact)
public function integer promociones (integer num_promo)
public function integer busca_cliente (string ls_cod_cliente)
public function integer borra_fila_promo (integer ls_contador_borra)
public function integer paso_producto_promocional (string ls_cod_prod, integer ls_num_prod, string ls_it_codigo)
public function integer verificar_tarjeta ()
public function boolean wf_edit ()
public function integer manejo_txt (string path)
public function integer envio_ftp (string ls_path, string ls_path_bat, string ls_path_envio)
public function integer wf_crear_nueva_factura (ref longlong al_num_venta)
public function boolean wf_mov_inventario (string as_item, decimal ad_cantidad, datetime ad_fecha, longlong al_factura, string as_estado, decimal ac_costo, character ach_kit, string as_atomo, decimal ac_costo_atomo, decimal ac_cantatomo)
public function integer lf_validamail (string ls_email)
public function string manejo_comas_txt (string as_cadena)
public function integer lf_valida_telefono (string ls_telefono)
public function integer wf_stock_sucursal (string as_item, string ach_kit)
public function integer wf_asigna_cupo (decimal ld_valfact)
public function integer wf_retorno_iva (decimal lc_valor)
public function string wf_random ()
public function integer f_creacion_txt (string lf_numero_factura, integer if_clave_doc)
public function long wf_uspsencode (string as_tracking, string as_routing, string as_barcode)
public function decimal wf_entregar_cambio (string ls_fpcodigo, decimal lc_fpval, string ls_chcambio)
public function integer f_recupera_items (string ls_codigo, string ls_desci_prom)
end prototypes

event ue_postopen;integer li_descue,li_retencion,li_i, li_iva, li_retiva, li_dias
//dec{2} li_iva
date ld_hoy


select sysdate
into :ld_hoy
from dual;
	

//f_dame_parametro("IVA",str_appgeninfo.empresa,li_iva)
f_dame_parametro("DSC_POS",str_appgeninfo.empresa,li_descue)
f_dame_parametro("RET_PTO",str_appgeninfo.empresa,li_retencion)
f_dame_parametro("RCE_PTO",str_appgeninfo.empresa,li_retiva)

s_iva =  f_iva_ch()
tasa.iva = s_iva.im_valor
li_iva = tasa.iva * 100
tasa.descuento = li_descue / 100
tasa.retencion = li_retencion / 100
tasa.retiva30 = li_retiva

dw_det.Modify("cc_fiva.Expression='"+string(li_iva)+"' cc_fdescef.Expression='"+string(li_descue)+"'")

IF(li_preimpre = 2) THEN 
dw_preim.settransobject( sqlca)
dw_preim.retrieve(str_appgeninfo.sucursal)
dw_det.visible = false
dw_det.enabled = false
sle_1.visible = false

ELSE
dw_preim.visible = false
dw_preim.enabled = false
		
							li_dias = daysafter(ld_hoy, caja.feccad)
														
							IF li_dias > 0 and li_dias<=15 THEN
									messagebox("Atención","FALTAN ( "+string(li_dias)+" ) DIAS PARA QUE LAS FACTURAS DEL POS DE LA CAJA : "+caja.caja+" CADUQUEN...")
							ELSEIF li_dias = 0 THEN
									  messagebox("Atención","LAS FACTURAS DEL POS DE LA CAJA : "+caja.caja+" CADUCAN HOY POR FAVOR INFORME A CONTABILIDAD...")
							ELSEIF li_dias< 0 THEN 
								li_bloqueo = 1
							END IF
						

dw_det.enabled = true
dw_det.setcolumn('codant')
dw_det.setfocus()

Setpointer(arrow!)



Char  ls_estadosuc

SELECT ps_estado
INTO :ls_estadosuc
FROM PM_PROMOCION, PM_SUCPROM 
WHERE PM_PROMOCION.PP_CODIGO = PM_SUCPROM.PP_CODIGO
AND PM_PROMOCION.PP_CODIGO = '00'
AND PM_SUCPROM.SU_CODIGO = :str_appgeninfo.sucursal
AND PP_ACTIVO = '1'
AND PS_ESTADO = '1'
AND TRUNC(PP_FECCAD) >= TRUNC(SYSDATE)
AND TRUNC(PS_FECCAD)>= TRUNC(SYSDATE);

if sqlca.sqlcode <> 0 then
	dw_det.object.b_5.visible = false
	sle_3.visible = false
	is_profmovi = 'N'
else
	if  is_estado = '2' then 
		dw_det.object.b_5.visible = true
		sle_3.visible = true
		is_profmovi = 'S'
	end if
end if

String valor, ls_per

SELECT PR_VALOR
INTO :ii_visdesc2
FROM PR_PARAM
WHERE PR_NOMBRE like 'DSC2_VIS';

if ii_visdesc2 = 1 then
	dw_det.object.dv_desc2.visible = true
	dw_det.object.compute_2.visible = false
	dw_cab.object.t_15.visible = false
elseif ii_visdesc2 = 0 then
	dw_det.object.dv_desc2.visible = false
	dw_cab.object.t_15.visible = true

end if
	


END IF



end event

event ue_guardar;//Creacion de Promocion Intaco - Corrección de porcentaje de impuesto 2% no aplica para autoconsumos
//Modificado Por: Henry Pinchao
//Fecha Modificacion: 26/07/2016

char lch_kit, lch_desc, lch_itdescue, lch_cambio, lch_tipo, lch_tipocli
date ld_f, ld_fecven, ld_fecven_fp, ld_fecha_actual
long ll_fila, ll_nreg,ll_numdoc, ll_numboletos2,  ll_filas, ll_numboletos, ll_dias_cheque, ll_movil_ch, ll_filan, k, ll_inside
integer i,rc,li_res,li_i,li_pasa,li_new,li_sumfp,li_pasa2, li_count, li_sino, li_pasa3, li_promoca, li_promogl, li_numbalones,li_ncopias, li_dato, li_dato_anterior, is_valida, li_rows, li_pagnota, li_validarucic
dec{2} lc_valdec,lc_valor_pagar,lc_valor_otras,&
                               lc_saldo,lc_vuelto,lc_pedido,lc_valor,lc_costo,ld_cantatomo,ld_costo_atomo,lc_desc3,lc_cantid,&
                               lc_foa,lc_fob,lc_foc,lc_fod,lc_foe,lc_fof,lc_foi,lc_fok,lc_fol,lc_for,lc_fot,lc_fov, lc_valor_promo, ld_monto, lc_valor_condor, lc_valfac, lc_valpromcondor, lc_valor_cf, lc_desc2, lc_dev, lc_devdesc3, lc_cambiotot, ld_notacredito_val
string ls_marca,ls_codigo,ls_codclien,ls_pepa,ls_fp,ls_nc,&
                               as_codant,ls_atomo,ls_ciudad,ls_valorch,ls_motor,ls_numfact,ls_unibas,ls_leyenda2,ls_dwprint, ls_email, ls_email1, ls_email2, ls_ce_tipo, ls_cadena_dir, ls_dir_of, ls_dir_dom, ls_usuario_pos, ls_razons, ls_tipodesp, ls_fpstring, ls_fptipo, ls_nombres, ls_fpnumcta, ls_fpnumval, ls_codverificador, ll_random
boolean lb_paso = false , lb_sino = false , lb_leo = false, lb_cheque= false
longlong ll_num_venta
String ls_imcodigo, ls_citajr, ls_nomtarj, ls_preantfac[], ls_valletrabon[], ls_imprecheq, ls_chqprom

 
If dw_forma_pago.accepttext() < 1 then return -1   
If dw_cab.accepttext() < 1 then return -1
If dw_cab.visible = false   then return -1
If dw_det.accepttext() < 1 then return -1
ll_fila = dw_det.RowCount()  
If ll_fila < 1 then return -1

Setpointer(hourglass!)

SELECT sysdate
INTO   :id_now
FROM   dual;

lc_valotrosant = 0
lc_valor_pagar=   dw_cab.GetItemdecimal(1, "valor_pagar")
//solo para promocion de condor
//lc_valor_condor=   dw_det.GetItemdecimal(1, "cc_promocondor")

lc_efectivo      =   dw_cab.GetItemdecimal(1, "efectivo")
lc_valor_otras =   dw_cab.GetItemdecimal(1, "valor_otras")
lc_saldo          =   dw_cab.GetItemdecimal(1, "cc_saldo")
lc_vuelto         =   dw_cab.GetItemdecimal(1, "vuelto")

dw_cab.setcolumn("cliente")
is_cliruc    =   dw_cab.Gettext()


//Permite verificar si existe una promoción en la factura.
for i = 1 to dw_det.rowcount()
		if dw_det.object.pp_codigo[i] <> '' and not IsNull(dw_det.object.pp_codigo[i]) then 
					ls_chqprom = 'S'
		end if	
	next 

//Controla que exista la promocion y que no sea la primera vez que presiona guardar.
//if is_chq_orprom  = 'N'  and ls_chqprom = 'S' then
//		dw_oriprom.reset()
//		dw_oriprom.visible = true
//		dw_oriprom.settransobject( sqlca)
//		dw_oriprom.insertrow(0)
//		return 1
//end if
//
//****************************************************************************************************************************//         
//Controlar que no ingresen CONSUMIDOR FINAL cuando la factura pase de los 20 Dolares vigente a partir de 2015-03-01, vuelve a 20 por que el SRI rechaza.
SELECT pr_valor
      INTO :lc_valor_cf
FROM pr_param
WHERE pr_nombre = 'VALOR_CF';
															  
                IF lc_valor_pagar >= lc_valor_cf and   is_cliruc = '1' THEN
				 messagebox("Advertencia","No se puede facturar como Consumidor Final~ren Facturas iguales o superiores a  $200.00",StopSign!)
				 Return 1
               END IF
//*************************************************************************************************************************************************************//
//***********************************************---CORREO ELECTRONICO VALIDACION---****************************************************************************//         
      SELECT    DECODE ("FA_CLIEN"."CE_TIPO",'R', "FA_CLIEN"."CE_RAZONS", 'J'  ,"FA_CLIEN"."CE_RAZONS", "FA_CLIEN"."CE_NOMBRE"||' '||"FA_CLIEN"."CE_APELLI"), ("FA_CLIEN"."CE_EMAIL") ,   ("FA_CLIEN"."CE_TELOFI"), ("FA_CLIEN"."CE_TELDOM"), ("FA_CLIEN"."CE_TIPO"),   ("FA_CLIEN"."CE_CAOFI1"),   ("FA_CLIEN"."CE_CADOM1"), ("FA_CLIEN"."CE_RAZONS"), ("FA_CLIEN"."CE_RUCIC")
                INTO  :ls_nombres, :ls_email, :is_telofi, :is_teldom, :ls_ce_tipo,  :ls_dir_of, :ls_dir_dom, :ls_razons, :ls_rucic
                FROM "FA_CLIEN"  
                WHERE ( "FA_CLIEN"."EM_CODIGO" = :str_appgeninfo.empresa )   
                AND ( "FA_CLIEN"."CE_RUCIC" = :is_cliruc )
                AND ( NVL("FA_CLIEN"."CE_ACTIVO",'N') <> 'N') ;
//Controlar el ingreso  razon social
IF ( ls_ce_tipo= 'R' or ls_ce_tipo ='J') and (ls_razons = '' or IsNull(ls_razons)) THEN 
	 messagebox("Advertencia","No ingreso razon social para Cliente con Ruc, verifiquelo y vuelva a intentarlo" , StopSign! )
	 return 1
END IF
//*****************************
//Controlar el ingreso correcto del mail
                                                                         	
 IF(ls_email <> '' or Not IsNull(ls_email)) THEN                                    
//                                                                                          
			li_dato_anterior = 1	
		
			IF(POS(ls_email,'|')=0) THEN 
				  ls_email1 = mid(ls_email,1, len(ls_email ) )		
				 is_valida =  lf_validamail(ls_email1)  
				 IF (is_valida = 2) THEN
							 messagebox("Advertencia","Correo Electrónico no valido revise y corrija el mail " + String(ls_email)+ ", y vuelva a intentarlo" , StopSign! )
							return 1
				END IF
			END IF
							
			DO WHILE POS(ls_email,'|')<>0
				 li_dato = POS(ls_email,'|')
				 ls_email1 = mid(ls_email,(li_dato_anterior), ((li_dato)-1))		
				 is_valida =  lf_validamail(ls_email1)
   			      IF (is_valida = 2) THEN
							 messagebox("Advertencia","Correo Electrónico no valido revise y corrija el mail " + String(ls_email)+ ", y vuelva a intentarlo" , StopSign! )
							return 1
				END IF
				 ls_email =  mid(ls_email,(li_dato)+1, len(ls_email ))		
				
				 
				 IF(POS(ls_email,'|')=0) THEN
				 ls_email1 = mid(ls_email,1, len(ls_email ) )		
				  is_valida = lf_validamail(ls_email1)
	 			  
				IF (is_valida = 2) THEN
							 messagebox("Advertencia","Correo Electrónico no valido revise y corrija el mail " + String(ls_email)+ ", y vuelva a intentarlo" , StopSign! )
							return 1
						END IF
				ELSE
				 
				END IF 

			LOOP
												       
     END IF             
                  
//****************************************************************************************************************************//         
//***********************************************---TELEFONO VALIDACION---****************************************************************************//   
 IF ( ls_ce_tipo= 'R' or ls_ce_tipo ='J') and Not IsNull(is_telofi )THEN
	is_valida=  lf_valida_telefono(is_telofi)
	IF (is_valida = 2 and is_telofi <>'0') THEN
	 			messagebox("Advertencia", "El Telefono ingresado (" + String(is_telofi)+ ") es incorrecto, favor corregir y continuar....!",StopSign!)
				 return 1
	END IF
ELSEIF Not IsNull(is_teldom) THEN
	//ls_ce_tipo = 'N' THEN
	is_valida = lf_valida_telefono(is_teldom)
	 	IF (is_valida = 2 and is_teldom <>'0') THEN
	 			messagebox("Advertencia", "El Telefono ingresado (" + String(is_teldom)+ ") es incorrecto, favor corregir y continuar....!",StopSign!)
				 return 1
	END IF
END IF
//***********************************************--- FIN TELEFONO VALIDACION---****************************************************************************//  
//***********************************************---DIRECCION VALIDACION---****************************************************************************//   
 IF ls_ce_tipo= 'R' or ls_ce_tipo ='J' THEN
  	 ls_cadena_dir = left(ls_dir_of,1)
  
	IF Match(ls_cadena_dir, "^[0-9A-Za-z]+$")=FALSE THEN
			messagebox("Advertencia", "La Direccion no permite caracteres especiales al principio, favor corregir y continuar....!",StopSign!)
			return 1
	END IF
ELSE
		//IF ls_ce_tipo = 'N' THEN
	ls_cadena_dir = left(ls_dir_dom,1)
  	IF Match(ls_cadena_dir, "^[0-9A-Za-z]+$")=FALSE THEN
 			messagebox("Advertencia", "La Direccion no permite caracteres especiales al principio, favor corregir y continuar....!",StopSign!)
			return 1
	END IF
END IF
//***********************************************--- FIN DIRECCION VALIDACION---****************************************************************************//   

//***********************************************CONTROL RUC CUANDO VA A GRABAR ***********************************************/////////////	
		if ls_ce_tipo = 'N' and Len(ls_rucic) <> 10 and is_cliruc<>'1'  then
		messagebox("Aviso","El Cliente es de tipo Natural pero el documento es Ruc o Pasaporte, por favor corrijalo y vuelva a intertarlo....!", Exclamation!)
		elseif ls_ce_tipo = 'R' AND  Len(ls_rucic)   <> 13 and is_cliruc<>'1' then
			messagebox("Aviso","El Cliente es de tipo RUC pero el documento es Cedula o Pasaporte, por favor corrijalo y vuelva a intertarlo....!", Exclamation!)
			return -1
		elseif ls_ce_tipo = 'J' AND Len(ls_rucic) <> 13 and is_cliruc<>'1' then
			messagebox("Aviso","El Cliente es de tipo Juridico, pero el documento es Cedula o Pasaporte, por favor corrijalo y vuelva a intertarlo....!", Exclamation!)
			return -1
		end if
	
		li_validarucic = f_valida_rucic(ls_rucic)
		if  ls_ce_tipo <> 'P' then
			if li_validarucic <> 1 and is_cliruc <>'1'  then 
				messagebox("Aviso","La Cedula o Ruc del Cliente no es correcto, por favor verifique y vuelva a intertarlo....!", Exclamation!)
				return -1
			end if
		end if
//***************************************************************************************************************************************///////////

//Control para verificar si ha ingresado algun dato en el Origen de la Proforma
//Henry Pinchao 06/06/2017
String ls_otrosor


IF(ls_rucci<>ls_rucemp and is_estado = '3'  ) THEN 
	is_valprof = dw_cab.object.prof_origen[1]
		IF IsNull(is_valprof) or is_valprof = '' THEN
			messagebox("Aviso","Ingrese el Origen de esta Proforma para continuar con la grabación....!", StopSign!)
			return -1
		END IF
//		IF is_valprof = '8' THEN
//						ls_otrosor = dw_cab.object.origen_txt[1]
//						if IsNull(ls_otrosor) or ls_otrosor = '' then
//								messagebox("Aviso","Ingrese el campo de Otros Origenes de Proforma para continuar...!", StopSign!)
//								return -1
//						end if
//		END IF
		
END IF

//************************PROMOCION DE WESCO*********************************///
String ls_it_codigo, ls_activo
Long ll_stock_1, ll_stock_2, ll_premio

ll_premio = 0
ls_activo = ''
ll_stock_1 = 0
ll_stock_2 = 0
ll_premio = 0

IF(ls_rucci<>ls_rucemp and is_estado = '2'  ) THEN 
 ll_fila = dw_det.rowcount()			
                                               IF li_premiowesco >= 1 THEN 
										      	select nvl(it_stock,0)
												into :ll_stock_1
												from in_itesucur
												where su_codigo = :str_appgeninfo.sucursal
												and it_codigo = '2071';  //Stock Producto Camiseta Wesco CPW
												select nvl(it_stock,0)
												into :ll_stock_2
												from in_itesucur
												where su_codigo = :str_appgeninfo.sucursal
												and it_codigo = '22204';  //Stock Producto Gorra Wesco GPW
						         		if  (ll_stock_1 + ll_stock_2) >li_premiowesco then
												for i = 1 to  ll_fila
													ls_it_codigo = dw_det.object.it_codigo[i]
												     CHOOSE CASE ls_it_codigo
														CASE '2071', '22204'
														ll_premio = ll_premio + dw_det.object.dv_cantid[i]
														ls_activo = 'S'
													END CHOOSE													
												next
												if ls_activo <> 'S' or (li_premiowesco <> ll_premio)  then 
													messagebox("Aviso", "Debe ingresar "+String(li_premiowesco)+" productos de promoción Wesco, para proceder con la facturación (Camiseta CPW - Gorra GPW)", Stopsign!)
													Return 1
												end if
									end if
												gano = 0
						 END IF
END IF

If lc_saldo > 0 then
                               rollback;
                               messagebox("Revise","El cliente tiene un saldo pendiente de : "+string(lc_saldo,"###,##0.00"),StopSign!)
                               dw_cab.setfocus()
                               dw_cab.setcolumn('efectivo')
                               return -1
End if


If is_estado = '2' Then
                //control poner imprenta en retenciones
                ll_nreg = dw_forma_pago.rowcount()
                ld_cantatomo = 0
                for i = 1 to ll_nreg
                               ls_fp = dw_forma_pago.GetitemString(i,'fp_codigo')   
                               ls_nc = dw_forma_pago.GetitemString(i,'rp_comen') 
                               is_rpcomen = dw_forma_pago.GetitemString(i,'rp_comen')    
					      ls_citajr = dw_forma_pago.object.rp_citarj[i] 
 	  					 ls_nomtarj = dw_forma_pago.object.rp_nombretarj[i]
						  lc_desc3 = dw_det.getitemdecimal(i,'cc_coniva')	

						if ls_fp = '2' then 
						//	  ld_notacredito_val = ld_notacredito_val + dw_forma_pago.Getitemdecimal(i,'rp_valor') 
	  						  lc_valotrosant = lc_valotrosant + dw_forma_pago.object.rp_valor[i] 
								 
												  
 							  if (lc_valotrosant > dw_cab.object.valor_pagar[1] + 20) then
								    MessageBox("Atención","El vuelto excede del valor permitido....! Consulte con Contabilidad")
                                             return -1
							  end if
						end if
						
                               if ls_fp = '6' then
                                               if isnull(ls_nc) or trim(ls_nc) = "" then
                                                               beep(1)
                                                               MessageBox("Atención","Ingrese el Nombre de la Imprenta de la Retención")
                                                                return -1
                                               end if 
                               end if
								SELECT GV_CODIGO
								INTO  :ls_usuario_pos
								FROM PR_SUCUR
								WHERE SU_CODIGO =:str_appgeninfo.sucursal;	 
									IF (ls_usuario_pos = 'M' ) THEN
									if ls_fp = '1' and  is_tipcli = 'CHPV'  then
                                               ld_cantatomo = ld_cantatomo + dw_forma_pago.Getitemdecimal(i,'rp_valor') 
                                               lch_desc = dw_forma_pago.Getitemstring(i,'estado')
                                               if ld_cantatomo > 50 then  //>50
                                                               if (isnull(ls_nc) or trim(ls_nc) = "") then  //lch_kit = estado y este es N cuando no tiene descuento osea solo pa servicheck
                                                                              beep(1)
                                                                              MessageBox("Atención","Ingrese el Código de Autorización del Servicheck")
                                                                              return -1
                                                               end if
                                                               if ls_nc <> 'CERTIFICADO' THEN //jaic
                                                                              if lch_desc = 'S' then
                                                                                              beep(1)
                                                                                              MessageBox("ERROR","El administrador solo puede autorizar hasta $50 dólares",stopsign!)
                                                                                              return -1             
                                                                              end if
                                                               end if //jaic
                                                end if //>50
                                               if ld_cantatomo <= 50 then
                                                               if (not isnull(ls_nc) or trim(ls_nc) <> "") then
                                                                              if ls_nc <> 'CERTIFICADO' THEN //jaic
                                                                                              beep(1)
                                                                                              setnull(ls_nc)
                                                                                              dw_forma_pago.setitem(i,"rp_comen",ls_nc)
                                                                                              dw_forma_pago.settaborder("rp_comen",0)
                                                                                              MessageBox("ERROR","No requiere código de autorización...Monto menor a $50 dólares ",stopsign!)
                                                                                              dw_forma_pago.setcolumn("rp_valor")
                                                                                              dw_forma_pago.setfocus()
                                                                              				return -1
                                                                              end if //jaic
                                                               end if
                                                                              dw_forma_pago.setitem(i,"estado",'S')                                                             
                                               end if
                             			  end if
							end if			
							if ls_fp = '1' and (is_tipcli = 'SEF' ) then
                                               ld_cantatomo = ld_cantatomo + dw_forma_pago.Getitemdecimal(i,'rp_valor') 
                                               lch_desc = dw_forma_pago.Getitemstring(i,'estado')
                                               if ld_cantatomo > 50 then  //>50
                                                               if (isnull(ls_nc) or trim(ls_nc) = "") and lch_desc = 'N' then  //lch_kit = estado y este es N cuando no tiene descuento osea solo pa servicheck
                                                                              beep(1)
                                                                              MessageBox("Atención","Ingrese el Código de Autorización del Servicheck")
                                                                              return -1
												   end if
                                                               if ls_nc <> 'CERTIFICADO' THEN //jaic
                                                                              if lch_desc = 'S' then
                                                                                              beep(1)
                                                                                              MessageBox("ERROR","El administrador solo puede autorizar hasta $50 dólares",stopsign!)
                                                                                              return -1             
                                                                              end if
                                                               end if //jaic
                                               end if //>50
                                               if ld_cantatomo <= 50 then
                                                               if (not isnull(ls_nc) or trim(ls_nc) <> "") then
                                                                              if ls_nc <> 'CERTIFICADO' THEN //jaic
                                                                                              beep(1)
                                                                                              setnull(ls_nc)
                                                                                              dw_forma_pago.setitem(i,"rp_comen",ls_nc)
                                                                                              dw_forma_pago.settaborder("rp_comen",0)
                                                                                              MessageBox("ERROR","No requiere código de autorización...Monto menor a $50 dólares ",stopsign!)
                                                                                              dw_forma_pago.setcolumn("rp_valor")
                                                                                              dw_forma_pago.setfocus()
                                                                              				return -1
                                                                              end if //jaic
                                                               end if
                                                                              dw_forma_pago.setitem(i,"estado",'S')                                                             
                                               end if
                               end if
												
				//********************VALIDACION NOMBRE Y CEDULA TARJETA DE CREDITO ***************************//
					
					lch_tipo = dw_forma_pago.object.tipo[i]
				CHOOSE CASE lch_tipo
					CASE 'S', 'D','T'
					
					if (ic_porccambio = 0 or IsNull(ic_porccambio) and lch_tipo <> 'CHPV') then

						
							if IsNull(ls_citajr) or ls_citajr = '' then 
								messagebox("Aviso","Debe Ingresar la Cedula o Ruc del Propietario de la Tarjeta para Continuar.....!", StopSign!)
								return - 1
							end if
										
								li_validarucic = f_valida_rucic(ls_citajr)
								
								SELECT ce_tipo
								INTO :lch_tipocli
								FROM FA_CLIEN
								WHERE ce_rucic = :ls_citajr;

							if li_validarucic <> 1 and lch_tipocli <> 'P' then 
								messagebox("Aviso","La Cedula o Ruc no es correcto, por favor verifique y vuelva a intentarlo....!", StopSign!)
								return -1
							end if
				
							if IsNull(ls_nomtarj) or ls_nomtarj = '' then 
								messagebox("Aviso","Debe Ingresar el Nombre que esta en la Tarjeta para Continuar.....!", StopSign!)
								return - 1
							end if
				
					end if
					
			END CHOOSE
				//******************FIN VALIDACION NOMBRE Y CEDULA TARJETA DE CREDITO**************************//			
														 
                next 
					 
		 	IF 	is_aceptxprom <> 'S' and is_aceptxprom = 'N'  THEN
				messagebox("Aviso","Presione Aceptar para Proceder con la Grabación de Factura.....!", StopSign!)
				return - 1
			 
			ELSEIF  is_accespromgen <> 'S' and   is_accespromgen= 'N'  THEN
				messagebox("Aviso","Presione Aceptar para Proceder con la Grabación de Factura.....!", StopSign!)
				return - 1
			 END IF		
					   
					
						///***********************************************************************************************************************************
							 
if ld_cantatomo > 50 then
                               select nvl(to_number(ce_estatu),0),ce_peso
                               into :rc, :ld_costo_atomo
                               from fa_clien
                               where em_codigo = :str_appgeninfo.empresa
                                and ce_codigo = :is_codcli;
                               if sqlca.sqlcode <> 0 then
                                               rollback;
                                               beep(1)                                                                                                                                                                            
                                               messageBox('Error Interno', 'Cliente mal seteado...Avisar a Sistemas' +sqlca.sqlerrtext)
                                               return -1
                               end if
//esto se debe comentar pues ahora solo es una vez
				IF (ls_usuario_pos = 'M' ) THEN	
                               if ii_servicheck = 1 and is_tipcli = 'SEF'  then  //if rc > 1 and is_tipcli = 'SEF' then //en caso de esta ser la tercera vez en pagar con cheque cambiará a CHPV
                                               //jaic
//                                               if ld_cantatomo > ld_costo_atomo then
//                                                               ld_monto           =            ld_cantatomo
//                                               else
//                                                               ld_monto =        ld_costo_atomo
//                                               end if
                                               //end jaic
                                               
									   ld_monto = wf_asigna_cupo(ld_cantatomo)
			                                 update fa_clien 
                                               //set ce_cupcre = :ld_costo_atomo + :ld_cantatomo/ :rc + 1,
                                			   set  ce_cupcre = :ld_monto,   //jaic
                                                               ce_salcre = :ld_monto,
                                                               ce_peso = :ld_cantatomo,
                                                               tc_codigo = 'CHPV',
                                                               ce_estatu = 1
                                               where em_codigo = :str_appgeninfo.empresa 
                                               and ce_codigo = :is_codcli;         
                                               if sqlca.sqlcode <> 0 then
                                                               rollback;
                                                               beep(1)                                                                                                                                                                            
                                                               messageBox('Error Interno', 'No se puede actualizar parámetros del Cliente ' +sqlca.sqlerrtext)
                                                               return -1
                                              end if                                                   
							elseif ii_servicheck = 1 and is_tipcli = 'CHPV'  then  
								   ld_monto = wf_asigna_cupo(ld_cantatomo)
                                               update fa_clien
                                               //set ce_cupcre = :ld_costo_atomo + :ld_cantatomo/ :rc + 1,
                                			   set  ce_cupcre = :ld_monto,   //jaic
                                                               ce_salcre = :ld_monto,
                                                               ce_peso = :ld_cantatomo,
                                                               tc_codigo = 'CHPV',
                                                               ce_estatu = 1
                                               where em_codigo = :str_appgeninfo.empresa 
                                               and ce_codigo = :is_codcli;         
                                               if sqlca.sqlcode <> 0 then
                                                               rollback;
                                                               beep(1)                                                                                                                                                                            
                                                               messageBox('Error Interno', 'No se puede actualizar parámetros del Cliente ' +sqlca.sqlerrtext)
                                                               return -1
                                              end if                  
							end if
				ELSE
						if rc < 2 and is_tipcli = 'SEF' then  //if rc > 1 and is_tipcli = 'SEF' then //en caso de esta ser la tercera vez en pagar con cheque cambiará a CHPV
							        //jaic
                                               if ld_cantatomo > ld_costo_atomo then
                                                               ld_monto           =            ld_cantatomo
                                               else
                                                               ld_monto =        ld_costo_atomo
                                               end if
                                               //end jaic
				                          update fa_clien
                                               //set ce_cupcre = :ld_costo_atomo + :ld_cantatomo/ :rc + 1,  
                            			       set  ce_estatu = to_char(:rc + 1)
                                                where em_codigo = :str_appgeninfo.empresa 
                                               and ce_codigo = :is_codcli;         
                                               if sqlca.sqlcode <> 0 then
                                                               rollback;
                                                               beep(1)                                                                                                                                                                            
                                                               messageBox('Error Interno', 'No se puede actualizar parámetros del Cliente ' +sqlca.sqlerrtext)
                                                               return -1
                                               end if       
								elseif rc >= 2 and is_tipcli = 'SEF' then  //if rc > 1 and is_tipcli = 'SEF' then //en caso de esta ser la tercera vez en pagar con cheque cambiará a CHPV
							        //jaic
                                               if ld_cantatomo > ld_costo_atomo then
                                                               ld_monto=  ld_cantatomo
                                               else
                                                               ld_monto= 	ld_costo_atomo 
                                               end if
                                               //end jaic
                                               update fa_clien	
                                               //set ce_cupcre = :ld_costo_atomo + :ld_cantatomo/ :rc + 1,
                            			       set   ce_cupcre = :ld_monto,   //jaic
                                                       ce_salcre = :ld_monto,
                                                       ce_peso = :ld_cantatomo,
                                                       tc_codigo = 'CHPV',
										     ce_estatu = to_char(:rc + 1)
                                               where em_codigo = :str_appgeninfo.empresa 
                                               and ce_codigo = :is_codcli;         
                                               if sqlca.sqlcode <> 0 then
                                                               rollback;
                                                               beep(1)                                                                                                                                                                            
                                                               messageBox('Error Interno', 'No se puede actualizar parámetros del Cliente ' +sqlca.sqlerrtext)
                                                               return -1
                                               end if       
						end if
			end if
    end if    
//							else if is_tipcli = 'SEF' then    
//
////                                                           ld_fecven = date(id_now)
//                                                               
////                                                           select count(ve_numero) //para aumentar por día
////                                                           into :li_new
////                                                           from fa_venta
////                                                           where em_codigo = trim(1)
////                                                           and es_codigo = trim(2)
////                                                           and ve_fecha between :ld_fecven and :ld_fecven + 1
////                                                           and ce_codigo = :is_codcli;
//                               
////                                                           if li_new = 0 then //Por dias
//                                                                              //jaic
//                                                                              if ld_cantatomo > ld_costo_atomo then
//                                                                                              ld_monto           =            ld_cantatomo
//                                                                              else
//                                                                                              ld_monto =        ld_costo_atomo
//                                                                              end if
//                                                                              //end jaic
//                                                                              
//                                                                              update fa_clien
////                                                                          set ce_peso = ce_peso + :ld_cantatomo,
//                                                                              set ce_peso = :ld_monto, //jaic
//                                                                                              ce_estatu = to_char(:rc + 1)
//                                                                              where em_codigo = :str_appgeninfo.empresa
//                                                                              and ce_codigo = :is_codcli;                                        
//                                                                              if sqlca.sqlcode <> 0 then
//                                                                                              rollback;
//                                                                                              beep(1)                                                                                                                                                                            
//                                                                                              messageBox('Error Interno', 'No se puede actualizar días del Cliente ' +sqlca.sqlerrtext)
//                                                                                              return -1
//                                                                              end if
//                                                           else
//                                                                          update fa_clien
//                                                                          set ce_peso = ce_peso + :ld_cantatomo
//                                                                          where em_codigo = :str_appgeninfo.empresa
//                                                                          and ce_codigo = :is_codcli;                                        
//                                                                          if sqlca.sqlcode <> 0 then
//                                                                                          rollback;
//                                                                                          beep(1)                                                                                                                                                                            
//                                                                                          messageBox('Error Interno', 'No se puede actualizar monto del Cliente ' +sqlca.sqlerrtext)
//                                                                                          return -1
//                                                                          end if                                   
//                                                           end if  //Por dias
//Verifico si se puede aceptar cheque al cliente
                If wf_aceptar_cheque(is_cliruc) < 0 then return -1
                If wf_crea_actualiza_cuenta(is_codcli) < 0 then return -1
End if
//1.-funcion que controla el stock máximo a venderse de un producto
If is_estado = '2' Then
                li_pasa = wf_controla_stock_sucursal(ll_fila,as_codant)
                If li_pasa = -1 Then
                                               rollback;
                                               messagebox("Atención","No se ha podido grabar esta factura~r~n"+&
                                                                                                                             "Debido a que el stock disponible del producto ["+as_codant+"]~r~n"+&
                                                                                                                             "es menor que el pedido o no existe stock...<Verifíque su stock>")
                                               return -1
                End if
End if

//Inserto la cabecera del ticket de venta  FA_VENTA con estado '2'
If wf_crear_nueva_factura(ll_num_venta) <> 1 then
                rollback;
                messageBox('Revise Información','No se puede grabar información. Función: wf_crear_nueva_factura')
                return -1
End if


// GRABACION FA OBSEQUIOS DE PROMOCION MOCHILA EVANS-CU ***************************************************//
  // Creado por Henry Pinchao 12/06/2014 ********************************************//

//IF gana_promo = 3 THEN // Comprueba que el cliente haya ganado el producto de la Mochila 
//                                               INSERT INTO FA_OBSEQUIOS  (ce_codigo,su_codigo,it_codigo,ve_numero,ve_fecha, pe_codigo)
//                                               VALUES (:is_codcli,:str_appgeninfo.sucursal, '31932', :ll_num_venta,:id_now, 'MEP');
//                                                               if sqlca.sqlcode <> 0 then
//                                                                              rollback;
//                                                                              messageBox('Error Interno', 'No se puede insertar el premio y cliente en la tabla obsequios : ' + sqlca.sqlerrtext )
//                                                                              //return -1
//                                                               end if                    
//
//END IF
//***********************************************************************//

/*Entra limpiando los movimientos del ticket anterior*/
dw_movim.reset()
For i = 1 to ll_fila
                dw_det.setitem(i,'ve_numero', ll_num_venta)
                dw_det.setitem(i,'em_codigo', str_appgeninfo.empresa)
                dw_det.setitem(i,'su_codigo', str_appgeninfo.sucursal)
                dw_det.setitem(i,'bo_codigo', str_appgeninfo.seccion)             
                dw_det.setitem(i,'es_codigo', is_estado)
                dw_det.setitem(i,'dv_secue', i)
                dw_det.setitem(i,'dv_descue', 0)
                dw_det.setitem(i,'dv_total', dw_det.GetItemDecimal(i,'desc3'))
		 	ls_imcodigo = dw_det.object.im_codigo[i]  

			if ls_ceexiva	= '1' then
				if ls_imcodigo	<> '0' then
					dw_det.setitem(i,"dv_valiva", dw_det.GetItemDecimal(i,'desc3')*s_iva.im_valor)
					
				elseif ls_imcodigo = '0' then
				//	dw_det.setitem(i, 'im_codigo','0')
					dw_det.setitem(i,"dv_valiva", 0)
				end if		
			elseif ls_ceexiva ='0' then 
				      dw_det.setitem(i, 'im_codigo','0')
			      	  dw_det.setitem(i,'dv_valiva', 0)
		end if

                ls_codigo = dw_det.getitemstring(i,'codant')
                lc_pedido = dw_det.getitemnumber(i,'dv_cantid')
                ls_pepa = dw_det.getitemstring(i,'it_codigo')  
                ls_motor = dw_det.getitemstring(i,'dv_motor')              
                ls_unibas = dw_det.getitemstring(i,'ub_codigo')                             
                lch_kit = dw_det.getitemstring(i,'it_kit')             
                lc_costo = dw_det.getitemdecimal(i,'it_costo')                               
                lc_desc3 = dw_det.getitemdecimal(i,'cc_coniva')
                ls_marca = dw_det.getitemstring(i,'co_codigo')         
			  ls_tipodesp = dw_det.getitemstring(i,'it_tipodesp') 
			    
			  //Verifica si tiene descuento 3 aplicado a los items 
			  
			 lc_devdesc3 = lc_devdesc3 + dw_det.getitemdecimal(i,'dv_desc3')  // Promoción factura 100
					  
			  //****************************************
                //******************* GRABACION MOVIMIENTO ASESOR***********************
	                // Autor : Henry Pinchao  
                //            Fecha: 07/10/2014
                
               IF prog_asesor = 1 THEN
                               String ls_ambiente
                               Long num_ambiente
                               ls_ambiente  =dw_det.Describe("Evaluate('LookUpDisplay(ambiente)',"+string(i)+")")  
				           dw_det.object.dv_chasis[i] = ls_ambiente
                END IF
                
                //
                
 
////jaic aqui poner el producto para q no se duplique C
//            if ls_pepa = '25419'  then
//              integer li_cuenta
//                           select count(*)
//                           into :li_cuenta
//                           from fa_obsequios
//                           where ce_codigo = :is_codcli
//                           and it_codigo = :ls_pepa;
//                           
//                           if li_cuenta > 0 then
//                                           rollback;
//                                           messageBox('Atención', 'El item : '+ ls_codigo + ' ya se facturó a este cliente.')
//                                           return -1
//                           else
//                                           insert into fa_obsequios (ce_codigo,su_codigo,it_codigo)
//                                           values(:is_codcli,:str_appgeninfo.sucursal,'25419');
//                                           if sqlca.sqlcode <> 0 then
//                                                           rollback;
//                                                           messageBox('Error Interno', 'No se puede insertar el item en la tabla obsequios : ' + sqlca.sqlerrtext )
//                                                           return -1
//                                           end if                    
//                           end if
//            end if
//            //jaic fin poner el producto para q no se duplique PC

                If  is_estado = '2' then
                               if lch_kit = 'V' then          
                                               lb_paso = true
                                               ls_numfact = string(ll_num_venta)
                               
                                               update in_itedet
                                               set estado = 'V',
                                                               ve_numero = :ls_numfact
                                               where em_codigo = :str_appgeninfo.empresa
                                               and su_codigo = :str_appgeninfo.sucursal
                                               and di_ref1 = :ls_motor;
                                               if sqlca.sqlcode <> 0 then
                                                               rollback;
                                                               messageBox('Error Interno', 'No se puede encontrar el número de motor...Por favor avise a sistemas el error : ' + sqlca.sqlerrtext )
                                                               return -1
                                               end if                                   
                               end if
boolean lb_codigostock = false
long ll_num_movim
string ls_num_movim, ls_factura, ls_codant

SELECT IT_CODANT
INTO :ls_codant
FROM IN_ITEM
WHERE it_codigo = :ls_pepa;

If lch_kit = 'C' Then  //combo jaic
                                               Declare kit_combo cursor for //jaic
                                                               SELECT "IN_ITEM"."IT_COSTO", "IN_RELITEM"."IT_CODIGO", "IN_RELITEM"."RI_CANTID"
                                                               FROM "IN_ITEM"  , "IN_RELITEM"
                                                               WHERE ("IN_RELITEM"."EM_CODIGO" = "IN_ITEM"."EM_CODIGO") and
                                                               ("IN_RELITEM"."IT_CODIGO" = "IN_ITEM"."IT_CODIGO") and
                                                               ("IN_RELITEM"."TR_CODIGO" = '13' ) and
                                                               ( "IN_RELITEM"."IT_CODIGO1" = :ls_pepa ) and
                                                               ( "IN_RELITEM"."EM_CODIGO" = :str_appgeninfo.empresa );
                                               
                                               open kit_combo;  //jaic
                                               do   //jaic
                                                               fetch kit_combo into  :ld_costo_atomo,:ls_atomo, :ld_cantatomo;    //jaic
                                                               if sqlca.sqlcode <> 0 then exit  //jaic
                                                                              //************************************************descarga stock bodega
                                                                              if lch_kit = 'C' then
                                                                                              if lb_codigostock = false then
                                                                                                              // descarga el stock del item
                                                                                                              update in_itebod
                                                                                                              set ib_stock = ib_stock - :lc_pedido
                                                                                                              where it_codigo = :ls_pepa
                                                                                                              and em_codigo = :str_appgeninfo.empresa
                                                                                                              and su_codigo = :str_appgeninfo.sucursal
                                                                                                              and bo_codigo = :str_appgeninfo.seccion;
                                                                                                              if sqlca.sqlcode <> 0 then
                                                                                                                             rollback using sqlca;
                                                                                                                             MessageBox("ERROR en f_descarga_stock_bodega","No puedo actualizar el stock.");
                                                                                                              end if
                                                                                              end if
                                                                              end if
                                                                              
                                                                                              update in_itebod
                                                                                              set ib_stock = ib_stock - (:lc_pedido * :ld_cantatomo)
                                                                                              where it_codigo = :ls_atomo
                                                                                              and em_codigo = :str_appgeninfo.empresa
                                                                                              and su_codigo = :str_appgeninfo.sucursal
                                                                                              and bo_codigo = :str_appgeninfo.seccion;
                                                                                              if sqlca.sqlcode <> 0 then
                                                                                                              rollback using sqlca;
                                                                                                              MessageBox("ERROR en f_descarga_stock_bodega","No puedo actualizar el stock del kit.");
                                                                                              end if
                                                                              
                                                                              //************************************************
                                                                              //*********** ********************************descarga stock sucursal
                                                                              if lch_kit = 'C' then
                                                                                              if lb_codigostock = false then
                                                                                                                             // descarga el stock del item
                                                                                                                             update in_itesucur
                                                                                                                             set it_stock = it_stock - :lc_pedido,
                                                                                                                                             it_stkreal = it_stkreal - :lc_pedido,
                                                                                                                                             it_stkdis = it_stkdis - :lc_pedido
                                                                                                                             where it_codigo = :ls_pepa
                                                                                                                             and em_codigo = :str_appgeninfo.empresa
                                                                                                                             and su_codigo = :str_appgeninfo.sucursal;
                                                                                                                             if sqlca.sqlcode <> 0 then
                                                                                                                                             rollback using sqlca;       
                                                                                                                                             MessageBox("ERROR en f_descarga_stock_rt_sucursal","No puedo actualizar el stock.");
                                                                                                                             end if
                                                                                              end if
                                                                              End if    
                                                               
                                                                                                              update in_itesucur
                                                                                                              set it_stock = it_stock - (:lc_pedido * :ld_cantatomo),
                                                                                                                             it_stkreal = it_stkreal - (:lc_pedido * :ld_cantatomo),
                                                                                                                             it_stkdis = it_stkdis - (:lc_pedido * :ld_cantatomo)                        
                                                                                                              where it_codigo = :ls_atomo
                                                                                                              and em_codigo = :str_appgeninfo.empresa
                                                                                                              and su_codigo = :str_appgeninfo.sucursal;
                                                                                                              if sqlca.sqlcode <> 0 then
                                                                                                                             rollback using sqlca;
                                                                                                                             MessageBox("ERROR en f_descarga_stock_rt_sucursal","No puedo actualizar el stock del kit.");
                                                                                                              end if    
                                               
                                                                //*********************************************                                                   
                                                               //***************************************movimientos kardex jaic
                                                              //wf_mov_inventario(ls_pepa,lc_pedido                          ,id_now                              ,ll_num_venta                ,'2'                                                         ,lc_costo                             ,lch_kit ,ls_atomo           ,ld_costo_atomo                ,ld_cantatomo)
                                                             //                                                                                                          as_item,ad_cantidad    ,ad_fecha                ,al_factura                         ,as_estado         ,ac_costo            ,ach_kit               ,as_atomo          ,ac_costo_atomo                ,ac_cantatomo
                                                               if lch_kit = 'C' then
                                                                              ls_factura = string(ll_num_venta)
                                                                              if lb_codigostock = false then
                                                                                              // inserta el movimiento del kit (grande)
                                                                                              ll_num_movim = f_dame_sig_numero('NUM_MINV')
                                                                                              if ll_num_movim = -1 then
                                                                                                              messagebox('ERROR¡','No se puede grabar movimiento de inventario')        
                                                                                              end if
                                                                                              ls_num_movim = string(ll_num_movim)
																			 
                                                                                              // ingresa el Kit
                                                                                              ll_filas = dw_movim.insertrow(0)
                                                                                              dw_movim.setitem(ll_filas,"tm_codigo",'2')
                                                                                              dw_movim.setitem(ll_filas,"tm_ioe",'E')
                                                                                              dw_movim.setitem(ll_filas,"it_codigo",ls_pepa)
                                                                                              dw_movim.setitem(ll_filas,"su_codigo",str_appgeninfo.sucursal)         
                                                                                              dw_movim.setitem(ll_filas,"bo_codigo",str_appgeninfo.seccion)         
                                                                                              dw_movim.setitem(ll_filas,"mv_numero",ls_num_movim)      
                                                                                              dw_movim.setitem(ll_filas,"mv_cantid",lc_pedido)                     
                                                                                              dw_movim.setitem(ll_filas,"mv_costo",lc_costo)          
                                                                                              dw_movim.setitem(ll_filas,"mv_fecha",id_now)           
                                                                                              dw_movim.setitem(ll_filas,"em_codigo",str_appgeninfo.empresa)     
                                                                                              dw_movim.setitem(ll_filas,"mv_observ","Venta de Combo "+ls_codant+" Ticket. No."+ls_factura)                              
                                                                                              dw_movim.setitem(ll_filas,"mv_usado",'N')                    
                                                                                              dw_movim.setitem(ll_filas,"ve_numero",ll_num_venta)                          
                                                                                              dw_movim.setitem(ll_filas,"es_codigo",'2')                      
																			dw_movim.setitem(ll_filas,"gv_codigo",ls_grupoven) 	
																			dw_movim.setitem(ll_filas,"it_codrel", '')
									
                                                                                              lb_codigostock = true
                                                                              end if
                                                                                               // es un kit
                                                                                              // inserto el movimiento del item
                                                                                              ll_num_movim = f_dame_sig_numero('NUM_MINV')
                                                                                              if ll_num_movim = -1 then
                                                                                                              messagebox('ERROR¡','No se puede grabar movimiento de inventario')        
                                                                                              end if
                                                                                              ls_num_movim = string(ll_num_movim)
                                                                                              //ingresa el atomo (pequeño)
                                                                                              ll_filas = dw_movim.insertrow(0)
                                                                                              dw_movim.setitem(ll_filas,"tm_codigo",'2')
                                                                                              dw_movim.setitem(ll_filas,"tm_ioe",'E')
                                                                                              dw_movim.setitem(ll_filas,"it_codigo",ls_atomo)
                                                                                              dw_movim.setitem(ll_filas,"su_codigo",str_appgeninfo.sucursal)         
                                                                                              dw_movim.setitem(ll_filas,"bo_codigo",str_appgeninfo.seccion)         
                                                                                              dw_movim.setitem(ll_filas,"mv_numero",ls_num_movim)      
                                                                                              dw_movim.setitem(ll_filas,"mv_cantid",lc_pedido * ld_cantatomo)                    
                                                                                              dw_movim.setitem(ll_filas,"mv_costo",ld_costo_atomo)         
                                                                                              dw_movim.setitem(ll_filas,"mv_fecha",id_now)           
                                                                                              dw_movim.setitem(ll_filas,"em_codigo",str_appgeninfo.empresa)     
                                                                                              dw_movim.setitem(ll_filas,"mv_observ",'Venta Combo' + ls_codant + ' Ticket de Venta No. '+ls_factura)                               
                                                                                              dw_movim.setitem(ll_filas,"mv_usado",'N')                    
                                                                                              dw_movim.setitem(ll_filas,"ve_numero",ll_num_venta)                    
                                                                                              dw_movim.setitem(ll_filas,"es_codigo",'2')          
																		    dw_movim.setitem(ll_filas,"gv_codigo",ls_grupoven) 
																		    dw_movim.setitem(ll_filas,"it_codrel",ls_pepa)
                                               end if
                                               //***************************************
                                               loop while TRUE;  //jaic
                                               close kit_combo;  //jaic
                                               
                               elseIf lch_kit = 'S' Then
                                               
                                                               SELECT "IN_ITEM"."IT_COSTO", "IN_RELITEM"."IT_CODIGO", "IN_RELITEM"."RI_CANTID"
                                                               INTO :ld_costo_atomo,:ls_atomo, :ld_cantatomo
                                                               FROM "IN_ITEM"  , "IN_RELITEM"
                                                               WHERE ("IN_RELITEM"."EM_CODIGO" = "IN_ITEM"."EM_CODIGO") and
                                                               ("IN_RELITEM"."IT_CODIGO" = "IN_ITEM"."IT_CODIGO") and
                                                               ("IN_RELITEM"."TR_CODIGO" = '1' ) and
                                                               ( "IN_RELITEM"."IT_CODIGO1" = :ls_pepa ) and
                                                               ( "IN_RELITEM"."EM_CODIGO" = :str_appgeninfo.empresa );
                                                               
                               End if
                                
                               if lch_kit <> 'C' then //jaic
                                 If f_descarga_stock_bodega(str_appgeninfo.seccion,ls_pepa,lc_pedido,lch_kit,ls_atomo,ld_cantatomo) = false Then return -1

                                 If f_descarga_stock_rt_sucursal(ls_pepa,lc_pedido,lch_kit,ls_atomo,ld_cantatomo) = false Then return -1

                                 If wf_mov_inventario(ls_pepa,lc_pedido,id_now,ll_num_venta,'2',lc_costo,lch_kit,ls_atomo,ld_costo_atomo,ld_cantatomo) = FALSE Then
                                                 rollback;                                            
                                                 dw_movim.reset()
                                                 MessageBox("Error Interno","No se grabó el movimiento de inventario. Por favor avise a sistemas")
                                                 return -1
                               End if 
                               end if //jaic
                               
                               if (not isnull(ls_motor) or trim(ls_motor) <> "") and lch_kit <> 'V' and (ls_tipodesp<>'F'  and ls_tipodesp<>'S') then  
                                               choose case ls_unibas
                                                               case '3'
                                                                              select  FO_A*5,FO_B*5,FO_C*5,FO_D*5,FO_E*5,FO_F*5,FO_I*5,FO_K*5 ,FO_L*5,FO_R*5,FO_T*5,FO_V*5   
                                                                              into :lc_foa,:lc_fob,:lc_foc,:lc_fod,:lc_foe,:lc_fof,:lc_foi,:lc_fok,:lc_fol,:lc_for,:lc_fot,:lc_fov
                                                                              from in_formulas  
                                                                              where em_codigo = :str_appgeninfo.empresa 
                                                                              and  fo_codigo = :ls_motor;
                                                                              if sqlca.sqlcode <> 0 then                           
                                                                                              rollback;
                                                                                              MessageBox("ERROR","En datos de la fórmula o no existe...Por favor avise a sistemas")                                                                                        
                                                                                              return -1                                                                                            
                                                                               end if
                                                               case '6'
                                                                              select  FO_A,FO_B,FO_C,FO_D,FO_E,FO_F,FO_I,FO_K ,FO_L,FO_R,FO_T,FO_V   
                                                                              into :lc_foa,:lc_fob,:lc_foc,:lc_fod,:lc_foe,:lc_fof,:lc_foi,:lc_fok,:lc_fol,:lc_for,:lc_fot,:lc_fov
                                                                              from in_formulas  
                                                                              where em_codigo = :str_appgeninfo.empresa 
                                                                              and  fo_codigo = :ls_motor;
                                                                              if sqlca.sqlcode <> 0 then                           
                                                                                              rollback;
                                                                                              MessageBox("ERROR","En datos de la fórmula o no existe...Por favor avise a sistemas")                                                                                        
                                                                                              return -1                                                                                            
                                                                              end if
                                                               case '7'
                                                                              select  FO_A/4,FO_B/4,FO_C/4,FO_D/4,FO_E/4,FO_F/4,FO_I/4,FO_K/4 ,FO_L/4,FO_R/4,FO_T/4,FO_V/4   
                                                                              into :lc_foa,:lc_fob,:lc_foc,:lc_fod,:lc_foe,:lc_fof,:lc_foi,:lc_fok,:lc_fol,:lc_for,:lc_fot,:lc_fov
                                                                              from in_formulas  
                                                                              where em_codigo = :str_appgeninfo.empresa 
                                                                              and  fo_codigo = :ls_motor;
                                                                              if sqlca.sqlcode <> 0 then                           
                                                                                              rollback;
                                                                                              MessageBox("ERROR","En datos de la fórmula o no existe...Por favor avise a sistemas")                                                                                        
                                                                                              return -1
                                                                              end if
                                               end choose

                                               if lc_foa > 0 then
                                                               lc_cantid = lc_pedido*lc_foa
                                                               if wf_dame_stock('20214',lc_cantid) = -1 then 
                                                                              rollback;
                                                                              return -1
                                                               end if
                                                               if wf_inv_formulas('20214',lc_cantid,ll_num_venta) = -1 then return -1
                                               end if
                                               if lc_fob > 0 then
                                                               lc_cantid = lc_pedido*lc_fob
                                                               if wf_dame_stock('20266',lc_cantid) = -1 then 
                                                                              rollback;
                                                                              return -1
                                                               end if
                                                               if wf_inv_formulas('20266',lc_cantid,ll_num_venta) = -1 then return -1
                                               end if
                                               if lc_foc > 0 then
                                                               lc_cantid = lc_pedido*lc_foc
                                                               if wf_dame_stock('20282',lc_cantid) = -1 then 
                                                                              rollback;
                                                                              return -1
                                                               end if
                                                               if wf_inv_formulas('20282',lc_cantid,ll_num_venta) = -1 then return -1
                                               end if
                                               if lc_fod > 0 then
                                                               lc_cantid = lc_pedido*lc_fod
                                                               if wf_dame_stock('20285',lc_cantid) = -1 then 
                                                                              rollback;
                                                                              return -1
                                                               end if
                                                               if wf_inv_formulas('20285',lc_cantid,ll_num_venta) = -1 then return -1
                                               end if
                                               if lc_foe > 0 then
                                                               lc_cantid = lc_pedido*lc_foe
                                                               if wf_dame_stock('20288',lc_cantid) = -1 then 
                                                                              rollback;
                                                                              return -1
                                                               end if
                                                               if wf_inv_formulas('20288',lc_cantid,ll_num_venta) = -1 then return -1
                                               end if
                                               if lc_fof > 0 then
                                                               lc_cantid = lc_pedido*lc_fof
                                                               if wf_dame_stock('20291',lc_cantid) = -1 then 
                                                                              rollback;
                                                                              return -1
                                                               end if
                                                               if wf_inv_formulas('20291',lc_cantid,ll_num_venta) = -1 then return -1
                                               end if
                                               if lc_foi > 0 then
                                                               lc_cantid = lc_pedido*lc_foi
                                                               if wf_dame_stock('20294',lc_cantid) = -1 then 
                                                                              rollback;
                                                                              return -1
                                                               end if
                                                               if wf_inv_formulas('20294',lc_cantid,ll_num_venta) = -1 then return -1
                                               end if
                                               if lc_fok > 0 then
                                                               lc_cantid = lc_pedido*lc_fok
                                                               if wf_dame_stock('20297',lc_cantid) = -1 then 
                                                                              rollback;
                                                                              return -1
                                                               end if
                                                               if wf_inv_formulas('20297',lc_cantid,ll_num_venta) = -1 then return -1
                                               end if
                                               if lc_fol > 0 then                                                              
                                                               lc_cantid = lc_pedido*lc_fol
                                                               if wf_dame_stock('20300',lc_cantid) = -1 then 
                                                                              rollback;
                                                                              return -1
                                                               end if
                                                               if wf_inv_formulas('20300',lc_cantid,ll_num_venta) = -1 then return -1
                                               end if
                                               if lc_for > 0 then
                                                                lc_cantid = lc_pedido*lc_for
                                                               if wf_dame_stock('20303',lc_cantid) = -1 then 
                                                                              rollback;
                                                                              return -1
                                                               end if
                                                               if wf_inv_formulas('20303',lc_cantid,ll_num_venta) = -1 then return -1
                                               end if
                                               if lc_fot > 0 then                                                             
                                                               lc_cantid = lc_pedido*lc_fot
                                                               if wf_dame_stock('20306',lc_cantid) = -1 then 
                                                                              rollback;
                                                                              return -1
                                                               end if
                                                               if wf_inv_formulas('20306',lc_cantid,ll_num_venta) = -1 then return -1
                                               end if
                                               if lc_fov > 0 then                                                            
                                                               lc_cantid = lc_pedido*lc_fov
                                                               if wf_dame_stock('20309',lc_cantid) = -1 then 
                                                                              rollback;
                                                                              return -1
                                                               end if
                                                               if wf_inv_formulas('20309',lc_cantid,ll_num_venta) = -1 then return -1
                                               end if 
                               end if                    
                End if
                // coloco en el detalle la cantidad despachada y el código interno
                dw_det.setitem(i,'dv_candes',lc_pedido) 
//            dw_det.setitem(i,'it_codigo',ls_pepa)
next

/*Para ingresar la forma de pago efectivo
  en el dw_forma_pago*/
If lc_efectivo > 0.00 Then
                idwc_ctas.insertrow(0)
                li_new = dw_forma_pago.insertrow(0)
                dw_forma_pago.setitem(li_new,"fp_codigo",'0')
                dw_forma_pago.setitem(li_new,"if_codigo",'0') 
                dw_forma_pago.Setitem(li_new,'rp_valor',lc_efectivo)
	           ld_fecven = date(id_now)          
                dw_forma_pago.setitem(li_new,"rp_fecha",ld_fecven)
                dw_forma_pago.setitem(li_new,"rp_fecven",ld_fecven)         
                dw_forma_pago.setitem(li_new,"estado",'S')                 
  			 dw_forma_pago.setitem(li_new,"cambio",'S')
				
			if li_new = 1 and lc_vuelto> 0 then	
				dw_forma_pago.Setitem(li_new,'rp_cambio',lc_vuelto)
			end if
End if

/*Para ingresar la forma de pago descuento iva
//  en el dw_forma_pago*/

lc_dev = dw_cab.getitemnumber(1,'desc')
IF(ls_rucci<>ls_rucemp and is_estado = '2'  ) THEN 
If lc_dev > 0.00 Then
                idwc_ctas.insertrow(0)
                li_new = dw_forma_pago.insertrow(0)
                dw_forma_pago.setitem(li_new,"fp_codigo",'297')
                dw_forma_pago.setitem(li_new,"if_codigo",'0')
                dw_forma_pago.Setitem(li_new,'rp_valor',lc_dev)
                ld_fecven = date(id_now)          
                dw_forma_pago.setitem(li_new,"rp_fecha",ld_fecven)
                dw_forma_pago.setitem(li_new,"rp_fecven",ld_fecven)         
                dw_forma_pago.setitem(li_new,"estado",'S')                 
End if
END IF

ll_nreg = dw_forma_pago.rowcount()
f_dame_parametro("DSC_POS",str_appgeninfo.empresa,li_res)
tasa.descuento = li_res / 100 

  if ll_nreg <= 0  then
                                 rollback;
                                 MessageBox("ERROR","Debe Ingresar una forma de Pago para grabar.... Por favor verifíque", StopSign!)
  							return -1
  end if

li_sumfp = dw_forma_pago.Getitemnumber(1,'cc_sumfp')
if ll_nreg = 1 and li_sumfp = 0 then
                li_sumfp = 0
end if

for i = 1 to ll_nreg
                dw_forma_pago.setitem(i,'ve_numero',ll_num_venta)
                dw_forma_pago.setitem(i,'em_codigo',str_appgeninfo.empresa)
                dw_forma_pago.setitem(i,'su_codigo',str_appgeninfo.sucursal)
                dw_forma_pago.setitem(i,'bo_codigo',str_appgeninfo.seccion)
                dw_forma_pago.setitem(i,'es_codigo',is_estado)         
                dw_forma_pago.Setitem(i,'rp_numero',i)
	           ls_fp = dw_forma_pago.GetitemString(i,'fp_codigo')
                lc_valor = dw_forma_pago.GetitemDecimal(i,'rp_valor')
                if lc_valor <= 0  then
                                 rollback;
                                 MessageBox("ERROR","Valor menor o igual a cero (0) . Por favor verifíque", StopSign!)
  						  dw_forma_pago.deleterow(dw_forma_pago.rowcount( ))
						return -1
                end if
   			 
                select fp_descue, fp_string, rp_tipo 
                into :lch_desc, :ls_fpstring , :ls_fptipo
                from fa_formpag
                where fp_codigo = :ls_fp
                and em_codigo = :str_appgeninfo.empresa;
					 
		// Condición que verifica si se pago con alguno nota de credito permitida en Pos
			if  ls_fptipo='N' and  is_estado = '2'  then   // factura 100
					if ls_fp = '315' then
						ls_fpnumcta = dw_forma_pago.object.rp_numcta[i]
						ls_fpnumval = dw_forma_pago.object.rp_numdoc[i]  

						if ls_fpnumval = '' or isNull(ls_fpnumval) then  //Condición que verifica si el numero de activación esta bien...
						    rollback;
                                 MessageBox("ERROR","El numero de activación es incorrecto o esta vacio . Por favor verifíque....!")
							 dw_forma_pago.deleterow(dw_forma_pago.rowcount( ))
                                 return -1
						end if
					else 
						ls_fpnumcta = ''
					end if	
					li_pagnota = 1
			end if
		//************************************************************			 
			//Verifica si participa una nota de credito en la promoción		 
                //Verifico y actualizo el saldo de las N/C, si existen
                If  ls_fp  = '2' and is_estado ='2' then
                               ll_numdoc = longlong(dw_forma_pago.GetitemString(i,'rp_numdoc'))
                               
                               select ve_valotros,ve_numpre
                               into :lc_saldo,:ls_marca
                               from fa_venta
                               where em_codigo = '1'
                               and su_codigo = :str_appgeninfo.sucursal
                               and es_codigo = '10'
                               and ve_numero = :ll_numdoc;
                               
                               select nvl(length(rp_comen),0)
                               into :li_pasa2
                               from fa_recpag
                               where em_codigo = '1'
                               and su_codigo = :str_appgeninfo.sucursal
                               and es_codigo = '2'
                               and ve_numero = :ls_marca
                               and fp_codigo = '1';
                               if li_pasa2 > 0 then
                                               dw_forma_pago.Setitem(i,'estado','N')
                                               lch_desc = dw_forma_pago.GetitemString(i,'estado')
                               else
                                               lch_desc = dw_forma_pago.GetitemString(i,'estado')
                               end if
                               
                               If lc_valor <= lc_saldo and lc_saldo > 0 Then                                      
                                                               update fa_venta
                                                               set ve_valotros = ve_valotros - :lc_valor
                                                                           //   ve_hora = :id_now
                                                               where em_codigo ='1'
                                                               and su_codigo = :str_appgeninfo.sucursal
                                                               and es_codigo = '10'
                                                               and ve_numero = :ll_numdoc;
                                                               if sqlca.sqlcode < 0 then
                                                                                rollback;
                                                                                messageBox('Error ','No se puede actualizar el saldo de la N/C')
                                                                                return -1
                                                               End if
                     Else
                                                               rollback;
                                                               messageBox('Error ','No se puede actualizar el saldo de la N/C debido  a que:~r~n'+&
                                                                                                                                                               '1.- Es mayor la cantidad ingresada~r~n'+&
                                                                                                                             '2.- O número de N/C no existe...<Verifique>' )
                                                               return -1
                               End if                    
                End if
                               
                if ls_fp = '1' then
                               lch_desc = dw_forma_pago.GetitemString(i,'estado')
                end if
                
				SELECT GV_CODIGO,  SYSDATE
				INTO  :ls_usuario_pos,:ld_fecha_actual
				FROM PR_SUCUR
				WHERE SU_CODIGO =:str_appgeninfo.sucursal;	 
					 
			  			
				IF ls_usuario_pos='M' THEN
						IF (dw_forma_pago.object.fp_codigo[i]='1') THEN
									ld_fecven_fp = date(dw_forma_pago.object.rp_fecven[i])
									ll_dias_cheque = DaysAfter ( date(ld_fecha_actual), ld_fecven_fp )
									IF ll_dias_cheque>=6 THEN
										ll_movil_ch = 2
										li_sumfp = 1
									ELSE
										ll_movil_ch = 1
										lch_desc = 'S'
										
									END IF
							END IF
					
			END IF

                if (lch_desc = 'N') 	or (ll_movil_ch = 2)  then
                               tasa.descuento = 0
                               //Para obtener el desc. en efectivo
						
						
						 Select nvl(ps_valor,0)
						  into :lc_valdec 
						  from pr_numsuc
						  where em_codigo = :str_appgeninfo.empresa
						  and su_codigo = :str_appgeninfo.sucursal
						  and pr_nombre = 'DSC_POS';
						  
                               
                               for li_i = 1 to ll_fila                          
									
							 lc_desc2 = dw_det.object.dv_desc2[li_i] 
						  lch_itdescue = dw_det.object.it_descue[li_i]
							 													
                                 if lc_desc2 = lc_valdec and li_sumfp > 0 and 	ic_desc2=0 and lch_itdescue = 'S' then
                                               rollback;                                              
                                               Messagebox("Atención","Esta forma de pago no debe dar descuentos...<verifíque>",Exclamation!)
//                                           m_marco.m_archivo.m_cancelarpos.enabled = true                                    
//                                           m_marco.m_archivo.m_grabarfacturapos.enabled = false
                                               dw_forma_pago.reset()
                                               dw_forma_pago.visible = false
                                               dw_cab.reset()
                                               dw_cab.insertrow(0)
                                               dw_cab.visible = false
															  
                                             	borra_fila_promo(prod_promo)// Eliminar cuando se acabe la promoción
                                               dw_det.enabled = true
                                               dw_det.setfocus()                                        
                                               return -1
                                 End if
                               next
                End if
                if lch_desc = 'S' then
                                               string ls_itcodigo, ls_prodpromo
                                               boolean  lb_lm90p = false, lb_tomatodo = false
                                               
                                               lc_valfac = dw_det.GetItemdecimal(1, "cc_tarjeta")
                                               for li_i = 1 to ll_fila
																
													  lch_itdescue = dw_det.object.it_descue[li_i]							
													  ls_prodpromo = dw_det.object.prodpromo[li_i]							
                                                               
                                                               if  dw_det.getitemdecimal(li_i,'dv_desc2') = 0.00 and li_sumfp = 0 and lch_itdescue <> 'N'  and ls_prodpromo <> 'P' then
                                                                              rollback;                                                                             
                                                                              Messagebox("Atención","Falta poner el descuento de pago en efectivo...<verifíque>",Exclamation!)
//                                                                          m_marco.m_archivo.m_cancelarpos.enabled = true
//                                                                          m_marco.m_archivo.m_grabarfacturapos.enabled = false
                                                                              dw_forma_pago.reset()
                                                                              dw_forma_pago.visible = false
                                                                              dw_cab.reset()
                                                                              dw_cab.insertrow(0)
                                                                              dw_cab.visible = false
                                                                              borra_fila_promo(1)// Eliminar cuando se acabe la promoción
                                                                              dw_det.enabled = true
                                                                              dw_det.setfocus()                                                                       
                                                                              return -1
                                                               End if 
 
                                                               //cc_coniva
                                                               //lc_valpromcondor = dw_det.GetItemdecimal(1, "cc_val_promo1")
                                                               
                                                               
                                                               ls_itcodigo = dw_det.getitemstring(li_i,"it_codigo") //jaic LM-90P         
                                                               
                                                               if ls_itcodigo = '27016' then //leo
                                                                              lb_leo = true //leo
                                                                              if ib_premioleo = false then  //leo
                                                                                              rollback; //leo
                                                                                              messagebox('Atención','Factura no debe entregar producto de promoción XKM60-1G.') //leo
                                                                                              return -1 //leo
                                                                              end if //leo
                                                               end if //leo
                                                               
                                                               if ls_itcodigo = '25855' then //jaic LM-90P
                                                                              lb_lm90p = true
                                                                               //choose case str_appgeninfo.sucursal //jaic LM-90P   
                                                                              //case '38' //jaic LM-90P              
                                                                                                              if lc_valfac < 10 then //jaic LM-90P
                                                                                                                             rollback; //jaic LM-90P
                                                                                                                             messagebox('Atención','Factura debe ser mayor a 10 dólares, para entregar producto de promoción LM-90P.') //jaic LM-90P
                                                                                                                              return -1 //jaic LM-90P
                                                                                                              end if //jaic LM-90P
                                                                                              
                                                                              //end choose //jaic LM-90P       
                                                   end if  //jaic LM-90P 

                                               next
                end if   
Next

integer li_countlm90
string ls_autoconsumo
//choose case str_appgeninfo.sucursal //jaic LM-90P   
//            case '38' //jaic LM-90P  

select rp_tipo
into :ls_autoconsumo
from fa_formpag
where fp_codigo = :ls_fp;

//                           select count(it_codigo),it_desc, it_codprom
//                           into:li_itetar,:lc_desc, :ls_itcodprom
//                           from in_itetar
//                           where it_codigo = :ls_pepa
//                           and if_codigo = :ls_ifcodigo
//                           and em_codigo = :str_appgeninfo.empresa
//                           group by it_desc,it_codprom;
//                           If sqlca.sqlcode < 0 then
//                                           messagebox("Error","Comuniquese con sistemas " +SQLCA.SQLErrText,stopsign!)
//                                           return
//                           end if

If is_estado = '2' and ls_autoconsumo <> 'A'  Then // solo si es factura ingresa
//lc_valfac = dw_det.GetItemdecimal(1, "cc_tarjeta")
                               if ib_premioleo = true and lb_leo = false then //leo
                                               rollback;  //leo
                                               messagebox('Atención','Ingresar código de producto en promoción XKM60-1G') //leo
                                               return -1 //leo
                               elseif ib_premioleo = true and lb_leo = true then //leo
                                              
                                                 update fa_detve z    
                                                 set Z.dv_motor = '23337 PAGADO'  
                                                 where (es_codigo = '2' and 
                                                 em_codigo = :str_appgeninfo.empresa and  
                                                 su_codigo =:str_appgeninfo.sucursal and  
                                                 bo_codigo = :str_appgeninfo.seccion and  
                                                 ve_numero in (select c.ve_numero  
                                                                                                from fa_venta c, fa_detve d  
                                                                                                where c.em_codigo = d.em_codigo and  
                                                                                                c.su_codigo = d.su_codigo and  
                                                                                                c.bo_codigo = d.bo_codigo and  
                                                                                                c.ve_numero = d.ve_numero and  
                                                                                                d.dv_motor = '23337' and   
                                                                                                c.ce_codigo = :is_codcli
                                                                                                )) and  
                                                               z.dv_motor = '23337';  
                                                               if sqlca.sqlcode <> 0 then //LEO
                                                                              rollback; //LEO
                                                                              beep(1)               //LEO
                                                                              messageBox('Error Interno', 'Al actualizar a LEO PAGADO en detalle de facturas.' +sqlca.sqlerrtext) //LEO
                                                                              return //LEO
                                                               end if //LEO

                                                               
                               end if //leo
										 //comentado por Paco Flores revisado porque les salian a clientes como trecx la promocion 2015-01-31
//                               if lb_lm90p = false and lc_valfac >= 10 then //jaic LM-90P           
//                                               select sum(ib_stock)  //jaic LM-90P       
//                                               into :li_countlm90 //jaic LM-90P              
//                                               from in_itebod //jaic LM-90P    
//                                               where em_codigo = :str_appgeninfo.empresa //jaic LM-90P    
//                                               and su_codigo = :str_appgeninfo.sucursal  //jaic LM-90P            
//                                               and it_codigo = '25855';                //jaic LM-90P   
//                                                               if li_countlm90 >= 1 and lch_kit <> 'V' then //jaic LM-90P            
//                                                                              rollback;  //jaic LM-90P 
//                                                                              messagebox('Atención','Ingresar código de producto en promoción LM-90P.') //jaic LM-90P                
//                                                                              return -1 //jaic LM-90P 
//                                                               end if //jaic LM-90P       
//                               end if //jaic LM-90P       
                               
end if                    
//            case else
//                           
//                           if lb_lm90p = true then
//                                           rollback;
//                                           messagebox('Atención','No es promoción para esta sucursal LM-90P.')
//                                           return -1
//                           end if
//end choose


//5.- Actualizo los datos de la factura
rc = dw_det.update(true,false)
If rc = 1 then
    rc = dw_forma_pago.update(true,false)
     If rc = 1 then
                               rc = dw_movim.update(true,false)
                                 If rc = 1 then
                                               dw_det.resetupdate()
                                               dw_forma_pago.resetupdate()
                                               dw_movim.resetupdate()          
                                               ii_sucodautoriza = 10
                                               ib_clcodigo = false
                                               commit;  
                               else
                                               rollback;
                                               dw_movim.reset()         
                                               messageBox('Error ','Problemas al actualizar el Kardex de los items...<informe a sistemas>',stopsign!)                    
                                               return -1
                               end if
                else
                               rollback;
                               dw_forma_pago.reset()
                               messageBox('Error ','Problemas al actualizar las formas de pago...<informe a sistemas>',stopsign!)
                               return -1
               end if
else
                rollback;
                dw_movim.reset()
                dw_forma_pago.reset()
                messageBox('Error ','Problemas al actualizar el detalle de los items...<informe a sistemas>',stopsign!)                               
                return -1
End if

//si graba la factura de debe cambiar LEO por LEO PAGADO en l aultima  factura 
if ib_premioleo = true and lb_leo = true then //leo
                  update fa_detve z  
                  set Z.dv_motor = '23337 PAGADO'
                  where (es_codigo = 2 and 
                  em_codigo = :str_appgeninfo.empresa and  
                  su_codigo = :str_appgeninfo.sucursal and  
                  bo_codigo = :str_appgeninfo.seccion and 
                  ve_numero = :ll_num_venta) and 
                  z.dv_motor = '23337';   
                if sqlca.sqlcode <> 0 then //LEO
                               rollback; //LEO
                               beep(1)               //LEO
                               messageBox('Error Interno', 'Al actualizar a LEO PAGADO en detalle de factura actual.' +sqlca.sqlerrtext) //LEO
                               return //LEO
                else 
                               commit;
                end if //LEO
end if //leo

//Funcines de impresión del ticket y cheques para impresopa POS
string ls_meses[] = {"Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", &
                                                                                                              "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"}

//Empieza el código de Promociones
if is_estado = '2' then

                dec lc_valor_promo1, lc_valor_promo2, lc_valor_promodoble
                int li_count2b 

                                               lc_valor_promo1 = dw_det.GetItemdecimal(1, "cc_val_promo1")
                                               li_count2b = dw_det.GetItemNumber(1, "cc_boletodoble")
                                               lc_valor_promo2 = dw_det.GetItemdecimal(1, "cc_val_promo2") 
                                               
                                               lc_valor_promo = dw_det.GetItemdecimal(1, "cc_val_promo")  
//                                           lc_valor_promodoble = dw_det.GetItemdecimal(1, "cc_val_promodoble") 




//PROMOCIÓN INTACO FACTURACION POS
// Elaborada por: Ing. Henry Pinchao
// Fecha: 25/07/2016

//Descripcion:  ACUMALACION DE PUNTOS POR LA COMPRA DE LOS PRODUCTOS  1680-20K EL CLIENTE ACUMULA 1 PUNTO 
//				    Y POR CADA COMPRA DEL PRODUCTO 1679-20K EL CLIENTE ACUMULA DOS PUNTOS


//Integer num_puntos_intaco, li_num_puntos_acum
//
////num_puntos_intaco = promociones(16)
//
//IF num_puntos_intaco = 1 THEN 
//
//SELECT sum(decode(pc_ioe,'I',nvl((pc_cantidad),0),'E', - nvl((pc_cantidad),0)))
//INTO :li_num_puntos_acum
//FROM FA_PUNTOSCLI
//WHERE ce_codigo = :is_codcli 
//AND fb_codigo = '16';
//
//ls_leyenda =  ls_leyenda + 'PUNTOS EN ESTA COMPRA: ' + string(num_puntos_intaco) + ' TOTAL PUNTOS ACUMULADO: '+   string(num_puntos_intaco + li_num_puntos_acum)+' PROMO INTACO|'
//messagebox("Acumula Puntos", "Cliente Acumulo " + string(num_puntos_intaco)+' PUNTO~ren esta compra para Promoción Intaco - Total Puntos: '+  string(num_puntos_intaco + li_num_puntos_acum))
//  
//INSERT INTO FA_PUNTOSCLI(ce_codigo, fb_codigo, es_codigo, su_codigo, ve_numero, pc_fecha, pc_ioe, pc_cantidad, pc_premio)  
//VALUES (:is_codcli,'16',:is_estado, :str_appgeninfo.sucursal,:ll_num_venta, :ld_fecha_actual, 'I', :num_puntos_intaco, 'VENTA');
//
//ELSEIF (num_puntos_intaco > 1) THEN
//		
//	SELECT nvl(sum(pc_cantidad),0)
//	INTO :li_num_puntos_acum
//	FROM FA_PUNTOSCLI
//	WHERE ce_codigo = :is_codcli 
//	AND fb_codigo = '16';
//
//	ls_leyenda =  ls_leyenda + 'PUNTOS EN ESTA COMPRA: ' + string(num_puntos_intaco) + ' TOTAL PUNTOS ACUMULADO: '+  string(num_puntos_intaco + li_num_puntos_acum)+' PROMO INTACO|'
//	messagebox("Acumula Puntos", "Cliente Acumulo " + string(num_puntos_intaco)+' PUNTOS~ren esta compra para Promoción Intaco - Total Puntos: '+  string(num_puntos_intaco + li_num_puntos_acum) )
//    
//	INSERT INTO FA_PUNTOSCLI(ce_codigo, fb_codigo, es_codigo, su_codigo, ve_numero, pc_fecha, pc_ioe, pc_cantidad, pc_premio)  
//	VALUES (:is_codcli,'16',:is_estado, :str_appgeninfo.sucursal,:ll_num_venta, :ld_fecha_actual, 'I', :num_puntos_intaco, 'VENTA');
//END IF
//
// FIN PROMOCION INTACO
	


// PROMO DEWALT ENTREGA PREMIOS A PARTIR DE 50 DOLARES HASTA 250DOLARES
//Integer num_premios_dewalt
//
//num_premios_dewalt= promociones(8)
//
//IF num_premios_dewalt = 1 THEN 
//  ls_leyenda =  ls_leyenda + string(num_premios_dewalt)+' PREMIO Dewalt|'
//  messagebox("Entrega Premio", "Cliente Gano " + string(num_premios_dewalt)+' PREMIO Dewalt')
//ELSEIF (num_premios_dewalt > 1) THEN
//  ls_leyenda =  ls_leyenda + string(num_premios_dewalt)+' PREMIOS Dewalt|'
//  messagebox("Entrega Premios", "Cliente Gano " + string(num_premios_dewalt)+' PREMIOS Dewalt')
//END IF


//                                           if lc_valor_promo >= 20 then   
//                                                           
//                                                           ll_numboletos = 0
//                                                           ll_numboletos = truncate(lc_valor_promo / 20,0)
//
//                                                           if ll_numboletos >= 1 then         
////                                                                      if li_count2b > 0 then
////                                                                                      ll_numboletos = ll_numboletos * 2                        
////                                                                      end if
//                                                                          select stock
//                                                                          into :li_pasa2
//                                                                          from pr_premios
//                                                                          where em_codigo = :str_appgeninfo.empresa
//                                                                          and su_codigo = :str_appgeninfo.sucursal and pe_codigo = 'BOLETO';  
//                                                                          
//                                                                          if li_pasa2 >= ll_numboletos then
//                                                                                          //cambiar para promocion de PINTUCO
//                                                                                          ls_leyenda = 'RECIBE:  '+string(ll_numboletos)+' BOLETO(S) para el sorteo promo Pintate de Suerte Pintuco. '
//                                                                                          messagebox('SORTEO','' + ls_leyenda)
//                                                                                          update fa_venta
//                                                                                          set ve_leyenda = :ls_leyenda
//                                                                                          where em_codigo = 1
//                                                                                          and su_codigo = :str_appgeninfo.sucursal and bo_codigo = :str_appgeninfo.seccion
//                                                                                          and es_codigo = 2           and ve_numero = :ll_num_venta;
//                                                                                          
//                                                                                          update pr_premios
//                                                                                          set stock = stock - :ll_numboletos
//                                                                                          where em_codigo = :str_appgeninfo.empresa
//                                                                                          and su_codigo = :str_appgeninfo.sucursal and pe_codigo = 'BOLETO';
//                                                                                          commit;                              
//                                                                          end if
//                                                           end if
//                                           end if 
 
 
 //PROMOCIO PINTUCO 2 DE JUNIO DEL 2014 *********** ******************************//
// Creado por Henry Pinchao 30/05/2014 ********************************************//
//
//ls_rucci = dw_cab.GetItemString(dw_cab.GetRow(),"cliente")
//
//select em_ruc, trunc(sysdate)
//into :ls_rucemp
//from pr_empre t
//where em_codigo = :str_appgeninfo.empresa;
//
//IF(ls_rucci<>ls_rucemp and is_estado = '2'   ) THEN 
//                           
//                                           num_boletos = promociones(1)
//                                           
//                                           IF num_boletos = 1 THEN 
//                                           ls_leyenda = 'RECIBE:  '+string(num_boletos)+' BOLETO para el sorteo promo Dewalt-Stanley. '
//                                                           messagebox("Entrega Boletos", "Cliente " + ls_leyenda)
//                                           ELSEIF (num_boletos > 1) THEN
//                                                           ls_leyenda = 'RECIBE:  '+string(num_boletos)+' BOLETOS para el sorteo promo Dewalt-Stanley. '
//                                                           messagebox("Entrega Boletos", "Cliente " + ls_leyenda)
//                                           END IF
//                                           
//                                           update fa_venta
//                                           set ve_leyenda = :ls_leyenda
//                                           where em_codigo = 1
//                                           and su_codigo = :str_appgeninfo.sucursal and bo_codigo = :str_appgeninfo.seccion
//                                           and es_codigo = 2           and ve_numero = :ll_num_venta; 
//                                           //COMMIT;                       
//                                           IF sqlca.sqlcode <> 0 THEN
//                                           ROLLBACK;
//                                           messageBox('Error Interno', 'No se puede insertar leyenda de obsequios en factura: ' + sqlca.sqlerrtext )
//                                           END IF
//
//END IF
// 
// 
 //***********************************************************************//

//PROMOCION PINTUCO del 5 de Julio 2013
//                                           if lc_valor_promo2 >= 30 then  
//                                                           ll_numboletos = 0
//                                                           ll_numboletos = truncate(lc_valor_promo2 / 30,0)
//
//                                                           if ll_numboletos >= 1 then
//                                                                          select stock
//                                                                          into :li_pasa2
//                                                                          from pr_premios
//                                                                          where em_codigo = :str_appgeninfo.empresa
//                                                                          and su_codigo = :str_appgeninfo.sucursal and pe_codigo = 'RASPADITA';
//                                                                          
//                                                                          if li_pasa2 >= ll_numboletos then
//                                                                                          //cambiar para promocion de PINTUCO
//                                                                                          ls_leyenda = 'RECIBE:  '+string(ll_numboletos)+' RASPADITA(S): Con Pintuco siempre ganas. '
//                                                                                          messagebox('SORTEO','' + ls_leyenda)
//                                                                                          update fa_venta
//                                                                                          set ve_leyenda = :ls_leyenda
//                                                                                          where em_codigo = 1
//                                                                                          and su_codigo = :str_appgeninfo.sucursal and bo_codigo = :str_appgeninfo.seccion
//                                                                                          and es_codigo = 2           and ve_numero = :ll_num_venta;
//                                                                                          
//                                                                                          update pr_premios
//                                                                                          set stock = stock - :ll_numboletos
//                                                                                          where em_codigo = :str_appgeninfo.empresa
//                                                                                          and su_codigo = :str_appgeninfo.sucursal and pe_codigo = 'RASPADITA';
//                                                                                          commit;                              

//                                                                          end if
//                                                           end if
//
//                                           end if 

////PROMOCION Camisteas D121-20K,D131-20K ***cc_numcamiseta   15/11/2013
//
//                                                           ll_numboletos = 0
//                                                           ll_numboletos = dw_det.GetItemNumber(1, "cc_numcamiseta") 
//                                                           if ll_numboletos >= 1 then         
//                                                                          
//                                                                          select stock
//                                                                          into :li_pasa2
//                                                                          from pr_premios
//                                                                          where em_codigo = :str_appgeninfo.empresa
//                                                                          and su_codigo = :str_appgeninfo.sucursal and pe_codigo = 'CAMISETA';            
//                                                                          
//                                                                          if li_pasa2 >= ll_numboletos then
//                                                                                          ls_leyenda =  ls_leyenda + 'RECIBE:  '+string(ll_numboletos)+' Camiseta(s) promocionales. '
//                                                                                          messagebox('SORTEO','' + ls_leyenda)
//                                                                                          
//                                                                                          update fa_venta
//                                                                                          set ve_leyenda = :ls_leyenda
//                                                                                          where em_codigo = 1
//                                                                                          and su_codigo = :str_appgeninfo.sucursal and bo_codigo = :str_appgeninfo.seccion
//                                                                                          and es_codigo = 2           and ve_numero = :ll_num_venta;
//                                                                                          
//                                                                                          update pr_premios
//                                                                                          set stock = stock - :ll_numboletos
//                                                                                          where em_codigo = :str_appgeninfo.empresa
//                                                                                          and su_codigo = :str_appgeninfo.sucursal and pe_codigo = 'CAMISETA';
//                                                                                          commit;                              
//                                                                          end if
//                                                           end if

////promocion navideña
//
//if is_numpremio <> '' then
//            ls_leyenda =  ls_leyenda + 'RECIBE:  '+string(is_prpremios) + ' por navidad.'
//            messagebox('SORTEO','' + ls_leyenda)
//            
//            update fa_venta
//            set ve_leyenda = :ls_leyenda
//            where em_codigo = 1
//            and su_codigo = :str_appgeninfo.sucursal and bo_codigo = :str_appgeninfo.seccion
//            and es_codigo = 2           and ve_numero = :ll_num_venta;
//            if sqlca.sqlcode <> 0 then
//                           rollback;
//                           messageBox('Error Interno', 'No se puede insertar leyenda de obsequios en factura: ' + sqlca.sqlerrtext )
//                           //return -1
//            end if                    
//            
//            update pr_premios
//            set stock = stock - 1
//            where em_codigo = :str_appgeninfo.empresa
//            and su_codigo = :str_appgeninfo.sucursal and pe_codigo = :is_prpremios;
//            if sqlca.sqlcode <> 0 then
//                           rollback;
//                           messageBox('Error Interno', 'No se puede actualizar el stock de los premios navideños: ' + sqlca.sqlerrtext )
//                           //return -1
//            end if                    
//            
//            insert into fa_obsequios (ce_codigo,su_codigo,ve_fecha, pe_codigo)
//            values(:is_codcli,:str_appgeninfo.sucursal, :id_now, :is_numpremio);
//            if sqlca.sqlcode <> 0 then
//                           rollback;
//                           messageBox('Error Interno', 'No se puede insertar el premio y cliente en la tabla obsequios : ' + sqlca.sqlerrtext )
//                           //return -1
//            end if                    
//            commit;                              
//            is_numpremio = ''
//            is_prpremios = ''
//end if                
////fin promocion navideña



// COMENTADO REVISAR

//**********************PROMOCION PINTULAC PRODUCTOS NAVIDAD****************/////
/////HP 27/11/2014
//long  ll_navidad
//ll_navidad = 0
//
//select em_ruc, trunc(sysdate)
//into :ls_rucemp
//from pr_empre t
//where em_codigo = :str_appgeninfo.empresa;
//
//
//
//IF(ls_rucci<>ls_rucemp and is_estado = '2'   ) THEN 
//
//                IF is_codcli <> '1'  THEN
//
//                               ll_navidad = promociones(11)
//                
//                                                 IF ll_navidad = 1 THEN 
//                                                                                ls_leyenda = ls_leyenda + "Una Camiseta Promo Pintulac|"
//                                                                                                                                                                                                                                                                                                                                           
//                                                 ELSEIF (ll_navidad = 2) THEN
//                                                                                ls_leyenda = ls_leyenda + "Un Gorra Promo Pintulac|"
//                                                                                                                            
//                                                 END IF
//																							 
//																							 update fa_venta
//																							 set ve_leyenda = :ls_leyenda
//																							 where em_codigo = 1
//																							 and su_codigo = :str_appgeninfo.sucursal and bo_codigo = :str_appgeninfo.seccion
//																							 and es_codigo = 2  and ve_numero = :ll_num_venta; 
//																							 COMMIT;                       
//																							 IF sqlca.sqlcode <> 0 THEN
//																							 ROLLBACK;
//																							 messageBox('Error Interno', 'No se puede insertar leyenda de obsequios en factura: ' + sqlca.sqlerrtext )
//																							 END IF
//
//                               END IF
//END IF
//
//gb_obsequio.visible = false
//rb_cal.visible = false
//rb_na.visible = false
//rb_cal.checked =  false
//rb_na.checked = false



//                IF is_codcli <> '1'  THEN
//
//                               ll_navidad = promociones(11)
//                
//                                                 IF ll_navidad = 1 THEN 
//                                                                                ls_leyenda = ls_leyenda + "Una Camiseta Promo Pintulac|"
//                                                                                                                                                                                                                                                                                                                                           
//                                                 ELSEIF (ll_navidad = 2) THEN
//                                                                                ls_leyenda = ls_leyenda + "Un Gorra Promo Pintulac|"
//                                                                                                                            
//                                                 END IF
//																							 
//																							 update fa_venta
//																							 set ve_leyenda = :ls_leyenda
//																							 where em_codigo = 1
//																							 and su_codigo = :str_appgeninfo.sucursal and bo_codigo = :str_appgeninfo.seccion
//																							 and es_codigo = 2  and ve_numero = :ll_num_venta; 
//																							 COMMIT;                       
//																							 IF sqlca.sqlcode <> 0 THEN
//																							 ROLLBACK;
//																							 messageBox('Error Interno', 'No se puede insertar leyenda de obsequios en factura: ' + sqlca.sqlerrtext )
//																							 END IF
//
//                               END IF
//END IF
//
//gb_obsequio.visible = false
//rb_cal.visible = false
//rb_na.visible = false
//rb_cal.checked =  false
//rb_na.checked = false


///***************************************************************************////

END IF



//*************************************************PROMOCION PINTULAC POR CADA 100 FACTURAS****************************************************************//
//Descripcion: Promoción que entrega un % del valor de la factura cuando cumple ciertas condiciones:
//						*  Gana la N Factura asignada en la base de datos (Ejm. Cada 100 Facturas )
//						*  Se cuentan las facturas que no tengas descuento 3
//						*  Se cuenta las facturas de sucursales que estan activas para la promoción
//						*  Se cuenta las facturas que no sean autoconsumos
//						*  Se cuenta las facturas que no hayan sido pagadas con Nota de Credito
//						*  El descuento se lo realiza por Nota de Credito Auxiliar como forma de pago ingresada solo en FA_RECPAG
//						*  El limite del premio esta dado po un parametro en la base de datos (por defecto 3000 como maximo)
//						*  Si la promoción se encuentra activa funciona la promoción caso contrario no

//Creado por : Henry Pinchao
//Creado: 08/08/2016

// PARTE I INGRESO DE PROMOCION E IMPRESION DE BONO EN LA PRIMERA FACTURA

//Declaracion de Variables para para la promocion

		//str_promocion.pp_parm2[]: Varible que contiene 1: Cuando no tiene descuento  0: Cuando tiene descuento
		//str_promocion.pp_parm3[]: Variable que contiene 1:Cuando no tiene nota de Credito 0:Cuando tiene Nota de Credito
		//str_promocion.pp_parm4[]: Variable que contiene el valor a pagar de la factura
		//str_promocion.pp_parm5[]: Variable que contiene 1: Cuando no es autoconsumo 0: Cuando no es autoconsumo
		//str_promocion.pp_parm6[]: Variable que contiene 1: Cuando es factura 0: Cuando no es factura
		// str_promocion.pp_parm7[]:Variable que contiene 1: Si es servicio 0: Cuando no es servicio
		//ls_varprem[1]: Contiene el secuencial que se va a insertar en la PR_VENTAPROM
		//ls_varprem[2]:Contiene 1: si es el ganador/ 0:si no gana
		//ls_varprem[3]:Contiene el estado de la sucursal 1: Si esta Activo 0: Si no esta activa
		//ls_varprem[4]:Contiene el limite en dinero para el premio que se va a entregar
		//ls_varprem[5]:Contiene el porcentaje de dinero que gana el cliente
		//ls_varprem[6]:Contiene 1:No es autoconsumo, 0: Si es autoconsumo
		//ls_varprem[7]:Contiene 1:Si es factura 0: Si no es factura
		//ls_varprem[8]:Continene 0:Si se inserta todas las facturas, 1:Solo las candidatas, 2:Solo las premiadas
		// ls_varprem[9]:Contiene 0:Si la promoción esta desactivada 1:Si se encuentra activa
		//ls_varprem[10]:Contiene 0:Si no debe insetar factura 1: Si la factura debe ser insertada
		
		
		// Actualizacion de Tarjeta cuando esta a sido canjeada
		IF is_tarj[2] = 'S' THEN
			UPDATE FA_TARJETAEMP
			SET TJ_FECHACANJE = :id_now
			WHERE TJ_CODIGO = :is_tarj[3]
			AND EP_CODIGO <> '0';
		END IF
				
		IF  is_actualiza_desc = 'S' THEN
			String ls_codmov, ls_cel
			Date ld_fecnac
			ls_codmov =dw_actuclimovi.object.cod_promo[1] 
			
			ls_cel = dw_actuclimovi.object.celular[1]
			ld_fecnac = dw_actuclimovi.object.fnac[1]
			
			UPDATE FA_TARJETAEMP
			SET TJ_FECHACANJE = :id_now
			WHERE TJ_CODIGO = :ls_codmov;
			
			
			INSERT INTO PM_DATOSEXT VALUES (:ls_codmov,:ls_cel, :ld_fecnac);
			if sqlca.sqlcode <> 0 then
					 messageBox('Error Interno', 'No se puede insertar en la tabla PM_DATOSSEXT: ' + sqlca.sqlerrtext )
			end if
			
		END IF
		
		
		if is_inprom_schools = 'S' then
			UPDATE FA_CTACLI
			SET ESTADO ='X'
			WHERE CS_NUMERO =  :is_codtarj
			AND CE_CODIGO = :is_codcli_school
			AND CS_ESTADO = 'E';
	
			end if

		
		Integer li_promocion  // Promoción Factura 100
		String ls_varprem[], ls_codprom, ls_codenc, ls_existe,ls_venumpre, ls_formatobono, ls_formatonbono
		long ll_meses
		Date ld_fecha_resultado


		//Asigancion de valores iniciales
		li_promocion = 1  //Numero de Promoción a la que afecta en la función y structura..
		str_promocion.pp_parm7[1] = '0' //Activa la impresión del bono
	
		// Body de la promocion
		
		if ls_rucci<>ls_rucemp and ls_rucci <> '1'  then //Condicion que verifica si es autoconsumo y no es consumidor final
				str_promocion.pp_parm5 [li_promocion] = '1' // No es autoconsumo, ni consumidor final
		elseif  ls_rucci = ls_rucemp then
				str_promocion.pp_parm5 [li_promocion] = '0' // Es autoconsumo
		elseif ls_rucci = '1' then
				str_promocion.pp_parm5 [li_promocion] = '0' // Es consumidor final
		end if //fin Condición autoconsumo
		
		if  is_estado = '2' then //Concicion que verifica si es factura
			str_promocion.pp_parm6[li_promocion] = '1' // Es factura
		else
			str_promocion.pp_parm6[li_promocion] = '0' // No es factura
		end if //fin condición factura
		
		if	lc_devdesc3 = 0 then	  // Condicion para llenar el parametro que controla si tiene o no descuento 3
				str_promocion.pp_parm2[li_promocion]  = '1'  //Si no tiene descuento
			else 
				 str_promocion.pp_parm2[li_promocion]  = '0' //Si tiene descuento
		end if  // fin condicion que llena parametro descuento
		
		if li_pagnota <> 1 then  //Condicion para llenar el parametro que controla que la factura se hay apagado con nota de credito o no (0 no paga con nota de credito / 1 paga con nota de credito )
								str_promocion.pp_parm3[li_promocion] = '1'  //Si no tiene nota de credito
			else 
								str_promocion.pp_parm3[li_promocion] = '0'  //Si tiene nota de credito
		end if  //fin condicion que llena parametro factura cuando paga con nota de credito
		
		str_promocion.pp_parm4[li_promocion]= String(lc_valor_pagar)  // Toma el valor a pagar de la factura con iva 
		
	
		// Ejecuta la función promociones para generar el secuencial de la factura y ademas llenar el dato si la sucursal participa o no en la promoción 
		ls_varprem = f_promociones(li_promocion,'0', str_promocion.pp_parm2[li_promocion], str_promocion.pp_parm3[li_promocion],str_promocion.pp_parm4[li_promocion],str_promocion.pp_parm5[li_promocion] ,str_promocion.pp_parm6[li_promocion] ,string(li_preimpre),'0','0','0') 
		//************************************************************************************************************//
	
		ls_minimoreq = ls_varprem[12]
	
	if(ls_varprem[9]='1' and li_promocion = 1 ) then //Condición que verifica si la promoción se encuentra activa y es la promoción actual
		// Para verificar la asignacion del Numero Bono
		dw_det.object.bono[1]= integer(ls_varprem[1])
		if ls_varprem[7] = '1' and ls_varprem[8]='0' and ls_varprem[10] = '1' then //Condición que inserta el total de facturas generadas
			// Inserta factura participante a la tabala pm_ventaprom y pone 1 en la factura que sea la premiada.
			INSERT INTO PM_VENTAPROM(PV_SECUENCIAL, VE_NUMERO, SU_CODIGO, PP_CODIGO, ES_CODIGO, VE_FECHA, PV_PREMIO, PV_PARM1, PV_PARM2, PV_PARM3 , PV_PARM4, PV_PARM5)VALUES(:ls_varprem[1],  :ll_num_venta, :str_appgeninfo.sucursal,'1','2',:id_now,:ls_varprem[2],:ls_varprem[3] ,:str_promocion.pp_parm2[li_promocion] ,:str_promocion.pp_parm3[li_promocion],:ls_varprem[4],:ls_varprem[6]) ;  //Condicioin Ganadora
			//***********************************************************************************************************//
		elseif ls_varprem[7] = '1' and ls_varprem[8]='1' and ls_varprem[10] = '1' then//Condición que inserta solo las facturas candidatas
			// Inserta factura participante a la tabala pm_ventaprom y pone 1 en la factura que sea la premiada.
			INSERT INTO PM_VENTAPROM(PV_SECUENCIAL, VE_NUMERO, SU_CODIGO, PP_CODIGO, ES_CODIGO, VE_FECHA, PV_PREMIO, PV_PARM1, PV_PARM2, PV_PARM3 , PV_PARM4, PV_PARM5)VALUES(:ls_varprem[1],  :ll_num_venta, :str_appgeninfo.sucursal,'1','2',:id_now,:ls_varprem[2],:ls_varprem[3] ,:str_promocion.pp_parm2[li_promocion] ,:str_promocion.pp_parm3[li_promocion],:ls_varprem[4],:ls_varprem[6]) ;  //Condicioin Ganadora
			//***********************************************************************************************************//
		elseif ls_varprem[7] = '1' and ls_varprem[8]='2' and ls_varprem[10] = '1' then//Condición que inserta solo las ganadoras
			// Inserta factura participante a la tabala pm_ventaprom y pone 1 en la factura que sea la premiada.
			INSERT INTO PM_VENTAPROM(PV_SECUENCIAL, VE_NUMERO, SU_CODIGO, PP_CODIGO, ES_CODIGO, VE_FECHA, PV_PREMIO, PV_PARM1, PV_PARM2, PV_PARM3 , PV_PARM4, PV_PARM5)VALUES(:ls_varprem[1],  :ll_num_venta, :str_appgeninfo.sucursal,'1','2',:id_now,:ls_varprem[2],:ls_varprem[3] ,:str_promocion.pp_parm2[li_promocion] ,:str_promocion.pp_parm3[li_promocion],:ls_varprem[4],:ls_varprem[6]) ;  //Condicioin Ganadora
			//***********************************************************************************************************//
end if //Fin condicion de inserción


		if(ls_varprem[2] = '1' and ls_varprem[11]<>'1') then //Condicion cuando es el ganador anuncia un mensaje al cajero e imprime en la factura el % del premio y su valor en dolares
			if ls_varprem[11] = '3' then   // Condicióno 3: Imprime bono 
				COMMIT;
				messagebox('Aviso','El cliente acaba de ganar '+ ls_varprem[4]+' $ para su proxima compra', Exclamation!)
				 ls_leyenda =  ls_leyenda + ' Gano '+ ls_varprem[4] +' $ para su proxima compra|| '
			end if  // Fin Condicióno 3: Imprime bono

			DO    // Verifica que el randomico no se repita en la tabla FA_BONO y sea Unico
				ls_codprom = wf_random() //Permite generar un codigo randomico para el boleto
				 ls_codenc = f_encryptacion(ls_codprom,2)
				 SELECT BN_CODIGO
				 INTO :ls_existe 
				 FROM FA_BONO 
				 WHERE BN_CODIGO =:ls_codenc
				 using sqlca;
				 
			LOOP WHILE sqlca.sqlcode<>100 //Fin ciclo de numero randomico repetido
			
			//Actualizacion del campo bn_codigo para saber que esta factura es la ganadora...
			update fa_venta
			set bn_codigo = :ls_codenc
			where em_codigo = 1
			and su_codigo = :str_appgeninfo.sucursal 
			and bo_codigo = :str_appgeninfo.seccion
			and es_codigo = 2          
			and ve_numero = :ll_num_venta;   
			
			ls_codverificador = wf_random()
			ls_codverificador = mid(ls_codverificador,2,3) 
		
			INSERT INTO FA_BONO(BN_CODIGO, CE_CODIGO, BN_FECHA, BN_VALOR, BN_VERIF) VALUES(:ls_codenc, :is_codcli, :id_now, :ls_varprem[4], :ls_codverificador);  //Inserta datos de bono en la tabla FA_BONO cuando es el ganador
			
			is_bono = ls_codenc

					//Definición de impresion de bono de regalo

					if ls_varprem[11] = '3' then  // Condicióno 3: Imprime bono
					//Configuración inicial al datawindow que contiene el reporte del bono
					dw_7.settransobject(sqlca) 
					dw_7.insertrow(0)
				
					ll_meses = 3
					
					select add_months(:id_now, :ll_meses)
					into :ld_fecha_resultado
					from dual ; 



					select ve_numpre
					into :ls_venumpre
					from fa_venta
					where em_codigo = 1
					and su_codigo = :str_appgeninfo.sucursal 
					and bo_codigo = :str_appgeninfo.seccion
					and es_codigo = 2          
					and ve_numero = :ll_num_venta;   


//	Verifica el formato en el que se va a imprimir el bono, para definir que datawindow ponerlo por defecto.
					select  cj_formatobono
					into  :ls_formatobono
					from fa_caja
					where su_codigo = :str_appgeninfo.sucursal and
					cj_caja = :caja.caja;
					if sqlca.sqlcode <> 0 then
										 li_ncopias = 1 
					end if    
		
					dw_7.dataobject = ls_formatobono 
		
					//Asignación de valores que se van a imprimir en el reporte del bono.
					dw_7.object.fecha_entrega[1] = id_now 
					dw_7.object.cliente[1] = ls_nombres
					dw_7.object.ruc_cliente[1] = is_cliruc 
					dw_7.object.ve_numpre[1] = ls_venumpre
					dw_7.object.premio[1]=  ls_varprem[4]
					dw_7.object.num_egreso[1] = ls_codprom
					dw_7.object.fecha_caducidad[1] = ld_fecha_resultado 
					//Variable que contiene 1:Si se imprime el bono 0: Si no se imprime.
					str_promocion.pp_parm7[1] = '1'

				end if // Fin condición imprime bono
					
				//Fin definicion de impresion de bono
		
	    end if //Fin condicion anuncio ganador
	
	end if //Fin condición de promoción activa
	
//	FIN PRIMERA  PARTE 
	

// PARTE II INGRESO DE NOTA DE CREDITO CUANDO SE RECLAMA EL PREMIO
String  ls_imcod, ls_cexiva, ls_succodigo, ls_secant, ls_preantfa, ls_valletras_bono,ls_codexist, ls_codencryp
Dec{2} lc_subtotal, lc_iva, lc_iva0, lc_neto, lc_valpag, lc_desciva, lc_valbono, lc_porciva, lc_porcsiniva, lc_totiva, lc_totconiva,lc_totsiniva, lc_subtotbono, lc_desciva_bono, lc_porcbono, lc_rpval
longlong ll_preant, ll_imprime_nc
integer j




ll_nreg = dw_forma_pago.rowcount()

for k = 1 to ll_nreg   //Ciclo que verifica si existe mas de una nota de bono para cobrar
	
	ls_codexist = '0'
	
	ls_fp = dw_forma_pago.GetitemString(k,'fp_codigo')
	
	if ls_fp = '315' then //Condición que verifica si tiene mas de una nota de credito para reclamar en una factura

			 j += 1	
			 lc_totiva = 0
			 lc_porciva = 0
			 lc_porcsiniva = 0
			 lc_valbono = 0
			 lc_totconiva = 0
			 lc_totsiniva = 0
			 lc_subtotbono = 0
			 lc_subtotal = 0
			 lc_neto = 0
			 lc_iva0 = 0
			 lc_iva = 0
			 lc_valpag = 0
			 
			ls_fpnumcta = dw_forma_pago.object.rp_numcta[k]
			ls_fpnumval = dw_forma_pago.object.rp_numdoc[k]  
			lc_rpval = dw_forma_pago.object.rp_valor[k]
			
			if ls_fpnumcta <> '' then //Condición que verifica si utilizo la nota de credito para reclamar el premio
				
				
			for i = 1 to 2
				
				ls_codencryp = f_encryptacion(ls_fpnumcta,i)
				  ll_imprime_nc = 0 
			
				//Consulta que verifica si alguna factura tiene el codigo del bono	
				SELECT FA_BONO.BN_CODIGO, BN_VALOR,  FA_VENTA.VE_SUBTOT, FA_VENTA.VE_NETO, FA_VENTA.VE_NETOIVA0, FA_VENTA.VE_IVA, FA_VENTA.VE_VALPAG, FA_VENTA.IM_CODIGO, FA_VENTA.CE_EXIVA, FA_VENTA.VE_DESCIVA, FA_VENTA.SU_CODIGO
				INTO :ls_bncodrec, :lc_valbono, :lc_subtotal, :lc_neto, :lc_iva0, :lc_iva, :lc_valpag, :ls_imcod,:ls_cexiva, :lc_desciva, :ls_succodigo
				FROM FA_VENTA, FA_BONO
				WHERE  FA_VENTA.BN_CODIGO = FA_BONO.BN_CODIGO 
				AND FA_VENTA.CE_CODIGO = FA_BONO.CE_CODIGO 
				AND FA_BONO.CE_CODIGO = :is_codcli
				AND FA_BONO.BN_CODIGO = :ls_codencryp;  
			
				if sqlca.sqlcode <> 0 and ls_codexist <> '1' then //Cuando no existe bono
						ls_codexist = '0'
				else 
						ls_codexist = '1'
				end if 
				
			next
				
				//Condicion que verifica que exista un bono premiado con el numero ingresado
							
				if ls_codexist = '0' then  //Condicion que verifica si tiene codigo de factura valido.
					messagebox('Aviso',"No se encontró la factura para realizar el Cruce con N/C")
					return 1
				else
					
					//Consulta que toma el valor del secuencial actual para esa caja
					SELECT CJ_NCREDITO, CJ_PEMISION
					INTO :ll_preant, :ls_secant
					FROM FA_CAJA
					WHERE SU_CODIGO = :ls_succodigo
					AND CJ_NCREDITO IS NOT NULL;
					
					//Actualiza el numero de secuencial de Nota de Credito
					UPDATE FA_CAJA 
					SET CJ_NCREDITO = :ll_preant + 1 
					WHERE SU_CODIGO = :ls_succodigo
					AND CJ_NCREDITO IS NOT NULL;
			
					ls_preantfa = ls_secant + Right(String(ll_preant),9)
					
					
					//Calculo de los valores que van a ir en la nota de credito	
					// Porcentaje valor con Iva y Valor sin Iva
					
					lc_totiva = lc_iva + lc_iva0
					lc_porciva = ((lc_iva*100)/lc_totiva)/100
					lc_porcsiniva = ((lc_iva0 * 100)/lc_totiva)/100
					
					if  ldd_total_valbono <> 0 then  //Condicion cuando el bono es mayor a la factura, la variable se le asigna el valor de la factura caso contrario es cero 
						
						//CAMBIO DESDE EL DIA 28-OCT-2016 13:22  APROBADO POR PABLO BARBA Y PACO
						//	if lc_desciva > 0 then   // Toma un valor para la compensación de iva en sectores favorecidos. aqui comente mp con pf
								
						//		lc_desciva_bono = lc_desciva * 0.5  
						//		lc_porcbono = ((ldd_total_valbono	* 100) / lc_valbono)/100    //Toma el porcentaje del bono en relacion al valor de la factura 
						//		lc_desciva_bono = lc_desciva_bono * lc_porcbono // Asigna el valor del descuento de iva al bono en relacion del porcentaje obtenido en relacion a la factura
					
						//		lc_valbono = ldd_total_valbono // Asigna el valor de la factura al bono cuando este es menor al total del bono	 
						//		lc_totconiva = ((lc_valbono * (lc_porciva))/(1.12))*(s_iva.im_valor)   //Calcula el iva en relacion al nuevo valor del bono
					
					
						//	else aqui comenta mp con pf 
								lc_valbono = lc_rpval // Asigna el valor de la factura al bono cuando este es menor al total del bono	 
								lc_totconiva = ((lc_valbono * (lc_porciva))/(1+s_iva.im_valor))*(s_iva.im_valor)
						
						//	end if aqui comnta mp	con pf
							
							lc_totsiniva =  (lc_valbono * (lc_porcsiniva)) 
							lc_subtotbono = lc_valbono - (lc_totconiva)
						
					else 
						
			//			if lc_desciva > 0 then
			//					lc_totconiva = ((lc_valbono * (lc_porciva))/(1.12))*(s_iva.im_valor)
			//					lc_desciva_bono = lc_desciva / 2 
			//			else
								lc_totconiva = ((lc_valbono * (lc_porciva))/(1+s_iva.im_valor))*(s_iva.im_valor)
						//end if
				
							lc_totsiniva =  (lc_valbono * (lc_porcsiniva))  
							lc_subtotbono = lc_valbono - (lc_totconiva)
				end if
					
				
					  f_creacion_txt(string(ls_preantfa),2) //Funcion que crea el numero de autorizacion de la Nota de Credito..
							
					UPDATE FA_BONO
					SET ES_CODIGO = '2', SU_CODIGO =:str_appgeninfo.sucursal, VE_NUMERO = :ll_num_venta,BN_FECEFEC =:id_now, VE_SUBTOT = :lc_subtotbono, VE_NETO =:lc_subtotbono, VE_NETOIVA0 = :lc_totsiniva,VE_IVA = :lc_totconiva, VE_VALPAG = :lc_valbono, IM_CODIGO = :ls_imcod, CE_IVA = :ls_cexiva, VE_DESCIVA = :lc_desciva_bono, VE_PREANT = :ls_preantfa, VE_NAUT = :ls_clave_acceso
					WHERE BN_CODIGO = :ls_bncodrec
					AND CE_CODIGO = :is_codcli;
					 
						
					ls_valletras_bono = f_numero_a_letras(lc_valbono)
					
					select  cj_formatoncb 
					into  :ls_formatonbono
					from fa_caja
					where su_codigo = :str_appgeninfo.sucursal and
					cj_caja = :caja.caja;
					
					dw_8.dataobject = ls_formatonbono
					
					dw_8.settransobject(sqlca)
					dw_8.retrieve(str_appgeninfo.sucursal, ls_preantfa, is_codcli, ls_valletras_bono)
					
					 ls_preantfac[j] = ls_preantfa
					 ls_valletrabon[j] = ls_valletras_bono 
					 
				
					ll_imprime_nc = 1	//Activa impresion para nota de Credito 1: Activa 
			
				end if //Fin Condicion que verifica si tiene codigo de factura valido.
			end if// Fin Condición que verifica si utilizo la nota de credito para reclamar el premio
	end if//Condición que verifica si tiene mas de una nota de credito para reclamar en una factura
	
	COMMIT;
next  // Fin Ciclo para verificar si existe mas de un bono para cobrar en una factura. 		
	
//FIN SEGUNDA PARTE
	
	
	
//*********************************************FIN PROMOCION PINTULAC POR CADA 100 FACTURAS*************************************************************//



//***** VERIFICAR PROMOCION PARA BORRA **/

// PROMO PINTUCO  ENTREGA PREMIOS A PARTIR DE 1 CANECA /
ls_rucci = dw_cab.GetItemString(dw_cab.GetRow(),"cliente")

IF(is_estado = '2' ) THEN 
	IF(ls_rucci<>ls_rucemp) THEN 
		Integer num_premios_pintuco
		num_premios_pintuco= promociones(12)
		IF num_premios_pintuco = 1 THEN 
		  ls_leyenda =  ls_leyenda + string(num_premios_pintuco)+' Camiseta|'
		  messagebox("Entrega Camiseta",  string(num_premios_pintuco)+' Camiseta ')
		ELSEIF (num_premios_pintuco> 1) THEN
		  ls_leyenda =  ls_leyenda + string(num_premios_pintuco)+ ' Camisetas|'
		  messagebox("Entrega Camisetas", string(num_premios_pintuco)+' Camisetas')
		END IF
	END IF
END IF
//************************************************************//
 



/////***************************** PROMOCION INTACO**********************//   ///POR VERIFICAR
//Creado por: Henry Pinchao 01/09/2015
// Por cada 35$ se entrega una raspadita
//Valida del 07/09/2015 al 31/11/2015

//ls_rucci = dw_cab.GetItemString(dw_cab.GetRow(),"cliente")
//
//select em_ruc, trunc(sysdate)
//into :ls_rucemp 
//from pr_empre t
//where em_codigo = :str_appgeninfo.empresa;
//
//IF(ls_rucci<>ls_rucemp and is_estado = '2'   ) THEN 
//	 num_boletos = promociones(10)
//	 IF num_boletos = 1 THEN 
//		  ls_leyenda = ls_leyenda +  string(num_boletos)+' Raspadita Intaco|'
//		  messagebox("Entrega Raspaditas",  + string(num_boletos)+' Raspadita Intaco')
//	  ELSEIF (num_boletos > 1) THEN
//		  ls_leyenda = ls_leyenda + string(num_boletos)+' Raspaditas Intaco|'
//		  messagebox("Entrega Raspaditas",  + string(num_boletos)+' Raspaditas Intaco')
//	  END IF
//				  
//	 update 
//	 	fa_venta
//	 set 
//	 	ve_leyenda = :ls_leyenda
//	  where
//	  	em_codigo = 1
//	  	and su_codigo = :str_appgeninfo.sucursal 
//		and bo_codigo = :str_appgeninfo.seccion
//	  	and es_codigo = 2          
//		and ve_numero = :ll_num_venta; 
//	
//	  IF sqlca.sqlcode <> 0 THEN
//	  ROLLBACK;
//	  messageBox('Error Interno', 'No se puede insertar leyenda de obsequios en factura: ' + sqlca.sqlerrtext )
//	  ELSE
//	  commit;
//	  END IF
//END IF
// 



//********************************************************************//

//ls_rucci = dw_cab.GetItemString(dw_cab.GetRow(),"cliente")
//
//select em_ruc, trunc(sysdate)
//into :ls_rucemp
//from pr_empre t 
//where em_codigo = :str_appgeninfo.empresa;
//
//IF(ls_rucci<>ls_rucemp and is_estado = '2'  ) THEN 
//											
//                                 			                                           
//                                               IF li_premiowesco = 1 THEN 
//                                               ls_leyenda =  ls_leyenda + string(li_premiowesco)+' PREMIO Wesco|'
//															  gano = 0
//                                               ELSEIF (li_premiowesco > 1) THEN
//                                                               ls_leyenda =  ls_leyenda + string(li_premiowesco)+' PREMIOS Wesco|'
//														gano = 0
//                                               END IF
//									
//									select stock
//											 into :ls_stock
//											 from pr_premios
//											 where em_codigo = :str_appgeninfo.empresa
//											 and su_codigo = :str_appgeninfo.sucursal 
//											 and pe_codigo = 'PREMIOWESCO';
//								
//									if ls_stock >= li_premiowesco then
//											update pr_premios
//											set stock = stock - :li_premiowesco
//											where em_codigo = :str_appgeninfo.empresa
//											and su_codigo = :str_appgeninfo.sucursal and pe_codigo = 'PREMIOWESCO';
//							
//									elseif    ls_stock < li_premiowesco and ls_stock > 0 then
//											update pr_premios
//											set stock = 0
//											where em_codigo = :str_appgeninfo.empresa
//											and su_codigo = :str_appgeninfo.sucursal and pe_codigo = 'PREMIOWESCO';
//									end if
//										
//                                 
//END IF
//
//////////////////*****************************************************************************///////////



  //PROMOCIO PINTUCO 27/06/2016 DE JUNIO DEL 2016 *********** ******************************//
// Creado por Henry Pinchao 27/06/2016 ********************************************//
//
ls_rucci = dw_cab.GetItemString(dw_cab.GetRow(),"cliente")

select em_ruc, trunc(sysdate)
into :ls_rucemp
from pr_empre t
where em_codigo = :str_appgeninfo.empresa;

IF(ls_rucci<>ls_rucemp and is_estado = '2'   ) THEN 
                           
                                           num_boletos = promociones(9)
	                                     
									    IF num_boletos = 1 THEN 
											  ls_leyenda = ls_leyenda +  string(num_boletos)+' Boleto Pintuco|'
											  messagebox("Entrega Boletos",  + string(num_boletos)+' Boleto Pintuco')
										 ELSEIF (num_boletos > 1) THEN
											  ls_leyenda = ls_leyenda + string(num_boletos)+' Boletos Pintuco|'
											  messagebox("Entrega Boletos",  + string(num_boletos)+' Boletos Pintuco')
										 END IF
END IF
 //***********************************************************************//



// *** PROMOCION RASPADITAS UNIDAS 15/04/2015 *********
//
//ls_rucci = dw_cab.GetItemString(dw_cab.GetRow(),"cliente")
//
//select em_ruc, trunc(sysdate)
//into :ls_rucemp 
//from pr_empre t
//where em_codigo = :str_appgeninfo.empresa;
//
//IF(ls_rucci<>ls_rucemp and is_estado = '2'   ) THEN 
//	 num_boletos = promociones(6)
//	 IF num_boletos = 1 THEN 
//		  ls_leyenda = ls_leyenda +  string(num_boletos)+' Raspadita Unidas|'
//		  messagebox("Entrega Raspaditas",  + string(num_boletos)+' Raspadita Unidas')
//	  ELSEIF (num_boletos > 1) THEN
//		  ls_leyenda = ls_leyenda + string(num_boletos)+' Raspaditas Unidas|'
//		  messagebox("Entrega Raspaditas",  + string(num_boletos)+' Raspaditas Unidas')
//	  END IF
//				  
	 update 
	 	fa_venta
	 set
	 	ve_leyenda = :ls_leyenda
	  where
	  	em_codigo = 1
	  	and su_codigo = :str_appgeninfo.sucursal 
		and bo_codigo = :str_appgeninfo.seccion
	  	and es_codigo = 2          
		and ve_numero = :ll_num_venta; 
	
	  IF sqlca.sqlcode <> 0 THEN
	  ROLLBACK;
	  messageBox('Error Interno', 'No se puede insertar leyenda de obsequios en factura: ' + sqlca.sqlerrtext )
	  ELSE
	  commit;
	  END IF

//Actualizacion de origen de la proforma
IF(ls_rucci<>ls_rucemp and is_estado = '3'  ) THEN 
//	ls_otrosor = dw_cab.object.origen_txt[1]
//	if ls_otrosor <> '' and Not IsNull(ls_otrosor) then
//		is_valprof = is_valprof +' '+ls_otrosor
//	end if
//	
//	ls_leyenda =  ls_leyenda +' '+is_valprof
	IF Not IsNull(is_valprof) and is_valprof <> '' THEN
		 update 
			fa_venta
		 set
			ve_motivo  = :is_valprof
		  where
			em_codigo = 1
			and su_codigo = :str_appgeninfo.sucursal 
			and bo_codigo = :str_appgeninfo.seccion
			and es_codigo = 3          
			and ve_numero = :ll_num_venta; 
		
			  IF sqlca.sqlcode <> 0 THEN
				  ROLLBACK;
				  messageBox('Error Interno', 'No se puede insertar leyenda de obsequios en factura: ' + sqlca.sqlerrtext )
			  ELSE
				  commit;
			  END IF
		END IF
ELSEIF (ls_rucci<>ls_rucemp and is_estado = '2'  ) THEN 
		IF Not IsNull(is_valprof) and is_valprof <> '' THEN
		 update 
			fa_venta
		 set
			ve_motivo  = :is_valprof
		  where
			em_codigo = 1
			and su_codigo = :str_appgeninfo.sucursal 
			and bo_codigo = :str_appgeninfo.seccion
			and es_codigo = 2   
			and ve_numero = :ll_num_venta; 
		
			  IF sqlca.sqlcode <> 0 THEN
				  ROLLBACK;
				  messageBox('Error Interno', 'No se puede insertar leyenda de obsequios en factura: ' + sqlca.sqlerrtext )
			  ELSE
				  commit;
			  END IF
		END IF
	
END IF


//********fin********


//messagebox('Aviso', ls_msj_cajero)

///***** PROMOCION ANIVERSARIO ********/
//
//Integer valor_factura, param
//ls_fecha_limite = Date('31/05/14')
//
//valor_factura = dw_det.object.cc_tarjeta[dw_det.GetRow()]
//ls_rucci = dw_cab.GetItemString(dw_cab.GetRow(),"cliente")
//            
//
//SELECT pr_valor 
//INTO :param
//FROM pr_param
//WHERE             pr_descri = 'MONTOPROMO';
//
//select em_ruc, trunc(sysdate)
//into :ls_rucemp, :ls_fecha_actual
//from pr_empre t
//where em_codigo = :str_appgeninfo.empresa;
//
//
//IF (ls_fecha_actual <= ls_fecha_limite ) THEN
//                                           IF(valor_factura >= param and ls_rucci<>ls_rucemp and is_estado = '2'   ) THEN  // Ingresa siempre que el valor de la factura sea mayor o igual al parametro montopromo
//                                           
//                                                                                          premio_aniversario() // Función que contiene el algoritmo para ejecutar la promoción bajo ciertos parametros internos
//                                                                                          
//                                                                                          IF(premio = 1)THEN
//                                                                                                                         
//                                                                                                                         ls_leyenda =  ls_leyenda + 'GANO 1:  '+ ls_pe_codigo
//                                                                                                                         messagebox('PREMIO','GANO 1:  '+ ls_pe_codigo)
//                                                                                          ELSEIF (premio = 2) THEN
//                                                                                                                         ls_leyenda =  ls_leyenda + 'Siga participando.'
//                                                                                                                         messagebox('PREMIO','Siga participando.')
//                                                                                          ELSEIF (premio = 3) THEN
//                                           //                                                               ls_leyenda =  ls_leyenda + 'SIN STOCK:  NO HAY PREMIO '
//                                           //                                                                          messagebox('SIN STOCK','' + ls_leyenda)
//                                                                                          END IF
//                                                                                                          
//                                                                                          UPDATE fa_venta
//                                                                                          SET ve_leyenda = :ls_leyenda
//                                                                                          WHERE em_codigo = 1
//                                                                                          AND su_codigo = :str_appgeninfo.sucursal and bo_codigo = :str_appgeninfo.seccion
//                                                                                          AND es_codigo = 2         and ve_numero = :ll_num_venta;
////                                                                                      COMMIT;                           
//                                                                                                          
//                                                                                          IF sqlca.sqlcode <> 0 THEN
//                                                                                                                         ROLLBACK;
//                                                                                                                         messageBox('Error Interno', 'No se puede insertar leyenda de obsequios en factura: ' + sqlca.sqlerrtext )
//                                                                                          END IF
//                                           


//END IF
///*********** FIN ***********/
		
//								select it_codigo, it_ki
//



update sg_acceso
set sa_numinten = 0
where em_codigo = :str_appgeninfo.empresa
and sa_login = :str_appgeninfo.username;


// FUNCION PARA FACTURACION ELECTRONICA
                               
String ls_doc_elect, ls_imprepos
SELECT FA_CAJA.CJ_TIPO
INTO :ls_doc_elect 
FROM FA_CAJA
WHERE FA_CAJA.CJ_CAJA = :CAJA.CAJA
AND FA_CAJA.SU_CODIGO = :str_appgeninfo.sucursal
AND FA_CAJA.EM_CODIGO = :str_appgeninfo.empresa;

IF  ls_doc_elect = 'E'  and is_estado = '2' THEN
			w_marco.SetMicroHelp ( "Ingresa a funcion creacion texto" )
                f_creacion_txt(string(ll_num_venta),1)
END IF

commit; 


select NVL(cj_copias,1), cj_formato, cj_imprepos
into :li_ncopias, :ls_dwprint, :ls_imprepos
from fa_caja
where su_codigo = :str_appgeninfo.sucursal and
cj_caja = :caja.caja;
if sqlca.sqlcode <> 0 then
                li_ncopias = 1 
end if    




dw_rep_ticket.dataobject = ls_dwprint 
sleep(3)
dw_rep_ticket.SettransObject(sqlca)
dw_rep_ticket.Retrieve(integer(str_appgeninfo.sucursal),integer(str_appgeninfo.seccion),integer(is_estado),ll_num_venta,tasa.iva*100, integer(ls_varprem[1]))

if ls_imprepos = '' or  isnull(ls_imprepos) then
elseif is_estado = '2' or is_estado = '3' then
	dw_rep_ticket.Object.DataWindow.Printer = ls_imprepos
	
	
end if

if ii_imprime_ticket_promo > 0  then
	
	
		dw_promcli_datos.object.cod_unico.visible = true
		dw_promcli_datos.object.t_4.visible = true
		
		
		UPDATE PR_PARAM
		 SET PR_VALOR =PR_VALOR + 1
		WHERE PR_NOMBRE = 'PROM_TICK';	
		
		SELECT  PR_VALOR 
		 INTO :ii_codunico
		 FROM PR_PARAM
		 WHERE PR_NOMBRE = 'PROM_TICK';
		
		UPDATE FA_DETVE
		SET DV_MOTOR = :ii_codunico
		WHERE 	em_codigo = 1
			and su_codigo = :str_appgeninfo.sucursal 
			and bo_codigo = :str_appgeninfo.seccion
			and es_codigo = 2          
			and ve_numero = :ll_num_venta
			and pp_codigo = '24'; 
		
								
	INSERT INTO FA_PUNTOSCLI(ce_codigo, fb_codigo, es_codigo, su_codigo, ve_numero, pc_fecha, pc_ioe, pc_cantidad, pc_premio)  
	VALUES (:is_codcli,'1',:is_estado, :str_appgeninfo.sucursal,:ll_num_venta, :ld_fecha_actual, 'I', :ii_codunico, 'SORTEO');
	
	if sqlca.sqlcode <> 0 then
		 messageBox('Error Interno', 'No se puede insertar registro en FA_PUNTOSCLI: ' + sqlca.sqlerrtext )
	else
		dw_promcli_datos.object.compute_1.visible = true
		dw_promcli_datos.object.b_1.visible = false
		if ls_imprepos = '' or  isnull(ls_imprepos) then
		elseif is_estado = '2' or is_estado = '3' then
			dw_promcli_datos.Object.DataWindow.Printer = ls_imprepos
		end if
		
		dw_promcli_datos.object.cod_unico[1] = String(ii_codunico)
		dw_promcli_datos.print()
		
	commit;
	
	end if

end if


//messagebox("Aviso", "Impresora: "+ ls_imprepos  + " La caja asignada es: "+ caja.caja )

If is_estado = '2' and  ls_dwprint <>'dw_fe_pos_trecx_term' Then  
		 dw_det.object.print[1]= integer(ls_varprem[1])	 			
		//w_marco.setmicrohelp("Bono Generado Nº. " + string( dw_det.object.bono[1]) + "  Bono Impreso No. " +  string( dw_det.object.print[1]))
		if  ls_minimoreq = '1' then   // Imprime el numero de participación en la promoción 100
			//dw_rep_ticket.object.promo100[1] =  ls_varprem[1]
			dw_rep_ticket.modify("st_cesp.visible = '0' empresa.visible = '0'  dir_empre.visible = '0' direccion.visible = '0' st_proforma.visible = '0' st_texto.visible = '0' st_validez.visible = '0' cc_promocion.visible = '1'")
//			dw_rep_ticket.modify("st_cesp.visible = '0' empresa.visible = '0'  dir_empre.visible = '0' direccion.visible = '0' st_proforma.visible = '0' st_texto.visible = '0' st_validez.visible = '0' cc_promocion.visible = '1' t_ok.visible = '1'")
		else 
                dw_rep_ticket.modify("st_cesp.visible = '0' empresa.visible = '0'  dir_empre.visible = '0' direccion.visible = '0' st_proforma.visible = '0' st_texto.visible = '0' st_validez.visible = '0' cc_promocion.visible = '0'" )
//                dw_rep_ticket.modify("st_cesp.visible = '0' empresa.visible = '0'  dir_empre.visible = '0' direccion.visible = '0' st_proforma.visible = '0' st_texto.visible = '0' st_validez.visible = '0' cc_promocion.visible = '0' t_cancel.visible = '1'" )					 
		end if
else
                dw_rep_ticket.modify("empresa.visible = '1'  dir_empre.visible = '1' direccion.visible = '1' st_proforma.visible = '1' st_texto.visible = '1' st_validez.visible = '1'")   
End if 

if ls_dwprint ='dw_fe_pos_trecx_term' and is_estado = '2'  then
    dw_rep_ticket.modify("ve_numero_1.visible = '1'  st_proforma_3.visible = 0  st_proforma_2.visible =0    st_proforma_1.visible = 0 empresa.visible = '1'  dir_empre.visible = '1' direccion.visible = '1' st_proforma.visible = '0' st_texto.visible = '0' st_validez.visible = '0'")
elseif ls_dwprint ='dw_fe_pos_trecx_term' and is_estado = '3'  then
   dw_rep_ticket.modify("ve_numero_1.visible = '0' st_proforma_1.visible = '1'  st_autsri.visible = '0' st_proforma_2.visible = '1' st_proforma_3.visible = '1'  compute_19.visible='0' compute_14.visible = '1' empresa.visible = '1'  dir_empre.visible = '1' direccion.visible = '1' st_proforma.visible = '1' st_texto.visible = '1' st_validez.visible = '1'")   

//	dw_7.dataobject = 'dw_rep_bono_term'
	
//	long ll_RetCode
//	String ls_Track, ls_Route, ls_BarCode
//
//	
//	ls_track = string('53379777234994544928') 
//	ls_route = string('51135759461')
//	
//	ll_RetCode = wf_USPSEncode(ls_Track, ls_Route, ls_BarCode)
//	If ll_RetCode = 0 Then
//		dw_rep_ticket.SetItem(1, "barcode", ls_BarCode)
//	//	dw_rep_ticket.SetItem(1, "errormsg", "")
//	Else
//	dw_rep_ticket.SetItem(1, "barcode", ls_BarCode)
//	//		dw_rep_ticket.SetItem(1, "errormsg", ls_BarCode)
//	End If

//
	 
end if

if lb_paso = true then
                dw_rep_ticket.modify("t_14.visible = '0' DataWindow.detail.Height=250")       
else
                dw_rep_ticket.modify("t_14.visible = '1' DataWindow.detail.Height=70")
end if

for i = 1 to li_ncopias
                if ls_dwprint = 'd_facpos_trecx' or ls_dwprint = 'dw_fe_pos_trecx' then
//                           dw_rep_ticket.Modify("DataWindow.Print.Paper.Size=256") 
//                           dw_rep_ticket.Modify("DataWindow.Print.CustomPage.Length=140") 
//                           dw_rep_ticket.Modify("DataWindow.Print.CustomPage.Width=214") 
                               dw_rep_ticket.Modify("DataWindow.Print.Paper.Size=256") 
                               //asigno el largo a 14.0 centimetros 
                               dw_rep_ticket.Modify("DataWindow.Print.CustomPage.Length=149") 
                               //asigno el ancho a 21.4 centimetros 
                               dw_rep_ticket.Modify("DataWindow.Print.CustomPage.Width=214") 
                               
                end if
                dw_rep_ticket.Print()
next

If  is_estado = '2' Then
                // comentado por la promocion que entra en vigencia el 17-oct-11
////        if ii_promo = 1 then
//            CHOOSE CASE str_appgeninfo.sucursal
////                       CASE '38'
////                                       if lc_valor_pagar >= 10 and li_pasa2 > 0 then
////                                                       messagebox("EL CLIENTE GANA",ls_leyenda)
////                                       end if                                                                                                  
//                           CASE '11','12','26', '37'
//                                           if lc_valor_pagar >= 15 and li_pasa3 > 0 then
//                                                           messagebox("EL CLIENTE GANA",ls_leyenda)
//                                           end if    
//                           case else
//                                           if li_pasa3 > 0 then         
//                                                          if ii_promo = 1 and lb_sino = true then
//                                                                          messagebox("EL CLIENTE GANA",ls_leyenda)                                                 
//                                                           end if
//                                           end if
//                                           
//            END CHOOSE



if str_promocion.pp_parm7[1] = '1' then 
	  //   li_res = messageBox('Confirme por Favor','Se va ha imprimir el Bono de Regalo' )
      //   If li_res = 1 then
			
			if ls_imprepos <> '' then
			dw_7.Object.DataWindow.Printer = ls_imprepos
			end if
			dw_7.print() 
			
//		end if
		
		if dw_cab.object.cliente[1] <> '1' then
		 dw_actualiza_cliente.settransobject(sqlca)
		 dw_actualiza_cliente.retrieve(is_codcli)
	 	 dw_actualiza_cliente.visible = true	
		 dw_actualiza_cliente.setfocus()
		 dw_actualiza_cliente.setcolumn("ce_fax")
		end if
end if


if is_imprimenc = 'S' then
	if ls_imprepos <> '' then
			dw_compag_nc.Object.DataWindow.Printer = ls_imprepos
			dw_vaucher_nc.Object.DataWindow.Printer = ls_imprepos
			
			dw_vaucher_nc.settransobject(sqlca)
			dw_vaucher_nc.retrieve('10',str_appgeninfo.empresa, str_appgeninfo.sucursal,ll_numnc,is_bncodigo )
			ll_random =  wf_random()
			
			dw_vaucher_nc.object.bn_codigo[1]  = ll_random
			if dw_vaucher_nc.object.ve_valotros_1[1] > 0 then
						dw_vaucher_nc.print()
			end if
			dw_compag_nc.settransobject(sqlca)
			dw_compag_nc.retrieve('10',str_appgeninfo.empresa, str_appgeninfo.sucursal,ll_numnc,is_bncodigo, lc_valotrosant)
//			dw_compag_nc.object.compute_3 =	lc_valotrosant
			dw_compag_nc.print()
			 
				
			UPDATE fa_venta
			set bn_codigo = :ll_random
			where ve_numero = :ll_numnc
			and es_codigo = '10'
			and bn_codigo = :is_bncodigo;
			 
			COMMIT;
	end if
	
end if

if ll_imprime_nc = 1 then

for i= 1 to j
  
  li_res = messageBox('Confirme por Favor','Desea imprimir la nota de Credito por Bono Pintulac ', Question!, YesNo! )

	dw_8.settransobject(sqlca)
	dw_8.retrieve(str_appgeninfo.sucursal,  ls_preantfac[i], is_codcli, ls_valletrabon[i])
	  
	If li_res = 1 then
		dw_8.print()
	end if
	next

end if


//

ldd_total_valbono = 0
//Busco Cheques y los imprimo si es necesario
                for i = 1 to dw_forma_pago.RowCount()
                               ls_fp = dw_forma_pago.GetitemString(i,'fp_codigo')
                               If  ls_fp = '1' then
                                               ld_f = date(dw_forma_pago.GetitemDateTime(i,'rp_fecven'))
                                               lc_valor = dw_forma_pago.GetitemNumber(i,'rp_valor')
                                               li_res = messageBox('Confirme por Favor','Imprimir cheque por el valor de ' + string(lc_valor,'#,##0.00'),Question!,OkCancel! )
                                               If li_res = 1 then
//                                                                 Datastore lds_prnch
//                                                                 lds_prnch = CREATE DATASTORE 
//                                                                 lds_prnch.DataObject = 'd_prn_cheque'
													//dw_cheque.reset( )
													dw_cheque.dataobject='dw_prn_cheque'
                                                                 dw_cheque.SetTransObject(SQLCA)
                                                                 dw_cheque.Retrieve(str_appgeninfo.empresa,str_appgeninfo.sucursal)
                               
                                                                 select su_ciudad
                                                                 into :ls_ciudad
                                                                 from pr_sucur
                                                                 where em_codigo = :str_appgeninfo.empresa
                                                                 and su_codigo = :str_appgeninfo.sucursal;
                                                                 
                                                                 ls_valorch = f_numero_a_letras(lc_valor)
                                                                 dw_cheque.modify("st_cantidad.text='"+ls_valorch+"'" +&
                                                                                                                                                             "st_valor.text='"+string(lc_valor,"#,##0.00")+"'"+&
                                                                                                                                                             "st_fecha.text='"+ls_ciudad+", "+string(ld_f,"yyyy/mm/dd")+"'")
//                                                                                                                                                         "st_fecha.text='"+ls_ciudad+", "+string(year(ld_f),"0000")+"/"+&
//                                                                                                                                                         +string(month(ld_f),"00")+"/"+string(day(ld_f),"00")+"'")
//                                                                                                                                                         +string(ls_meses[month(ld_f)])+"/"+string(day(ld_f))+"'") cambio por ley de cheques

                                                                 lb_cheque = true
																					  
//													//lds_prnch.Print()
//													// Aqui va la seleccion de las impresora
//													select  cj_impreposch
//													into  :ls_imprepos
//													from fa_caja
//													where su_codigo = :str_appgeninfo.sucursal and
//														cj_caja = :caja.caja;
//													
//
//													if ls_imprepos = '' or  isnull(ls_imprepos) then
//													else
//														messagebox("Aviso", "Impresora: "+ ls_imprepos  + " La caja asignada es: "+ caja.caja )
//														dw_cheque.Object.DataWindow.Printer = ls_imprepos
//														//dw_cheque.Object.DataWindow.Printer = ls_imprecheq
//														//dw_cheque.object.print[1]= integer(ls_varprem[1])
//														
//													end if
//													//
//													
//													dw_cheque.Print()													
//													////////////////////////////////////////////////
//                                                                 destroy lds_prnch
                                               End if
                               End if
                Next 
End if

////////////////////////////////////// Informac ion para Cheque /////////////////////////////////////
long ll_bien 
string ls_estado, ls_ret 


if lb_cheque then
		// Aqui va la seleccion de las impresora
		select  cj_impreposch
		into  :ls_imprepos
		from fa_caja
		where su_codigo = :str_appgeninfo.sucursal and
			cj_caja = :caja.caja;

		if ls_imprepos = '' or  isnull(ls_imprepos) then
			String ls_fullstring
			String ls_name, ls_driver, ls_port, ls_temp
			Long ll_place
			
			RegistryGet('HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Windows', 'Device', ls_fullstring)
			ll_place=pos (ls_fullstring, ",")
			
			ls_name =left(ls_fullstring, ll_place -1)
			dw_cheque.Object.DataWindow.Printer = ls_name
			ls_estado = dw_cheque.describe("datawindow.printer")
			dw_cheque.Print()
		else
			w_marco.setmicrohelp( "Impresora Parametro: "+ ls_imprepos  + " La caja asignada es: "+ caja.caja )
			sleep(2)
			//dw_cheque.Object.DataWindow.Printer 
			dw_cheque.Object.DataWindow.Printer = ls_imprepos
			ls_estado = dw_cheque.describe("datawindow.printer")
			dw_cheque.Print()
		end if
	end if
/////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Aquí terminan funciones de impresion impresoras POS.

//Impresion del Bono Factura 100

String ls_msj_cajero, ls_puntos
blob lb_msj
Decimal{2} ld_subtotal, ld_descuento, lc_neto_fact
Long ll_msj

SELECT PR_VALOR
INTO :ls_puntos
FROM PR_PARAM
WHERE PR_NOMBRE = 'PUNTOS';

lc_neto_fact = dw_cab.object.subtotal[1] - dw_cab.object.descuento[1]

if is_estado = '2' and ls_puntos = '1' then
	ls_msj_cajero =  f_do_factura('2',str_appgeninfo.empresa,str_appgeninfo.sucursal,str_appgeninfo.seccion,ll_num_venta,str_appgeninfo.codemple, date(id_now), lc_neto_fact ) 
	if ls_msj_cajero <> '' then 
		messagebox('Aviso',ls_msj_cajero)
	end if
	end if
	

			

// PONE LA CLAVE DE ACCESO PARA LA AUTORIZACION
// update 
//	fa_venta
// set
//	ve_valletras = :ls_clave_acceso
//  where0.
//	em_codigo = 1
//	and su_codigo = :str_appgeninfo.sucursal 
//	and bo_codigo = :str_appgeninfo.seccion
//	and es_codigo = 2          
//	and ve_numero = :ll_num_venta; 
// /*****************************************************////////////////////////////////////////
//commit;

//if is_accespromgen ='S' and ii_entra_porten = 1 then
//	UPDATE PR_PARAM
//	 SET PR_VALOR = PR_VALOR + 1
//	WHERE PR_NOMBRE = 'PROM_TICK';
//end if

ib_ponmensaje = false
ib_pasa_tarj = false
//ib_profafact = false
dw_det.reset()
dw_claves.reset()
dw_det.insertrow(0)
dw_det.Object.codant.Protect = false
dw_det.Object.dv_cantid.Protect = false           
dw_det.settaborder("dv_desc3",0)

IF (li_preimpre = 1 ) THEN
	If is_estado = '2' Then //Nota de Venta y Factura POS
						 dw_det.SetItem(1,'c_formato','Factura ELECTRONICA')
	else //Proforma
						 dw_det.SetItem(1,'c_formato','Proforma')
	End if
ELSEIF (li_preimpre = 2 ) THEN
	If is_estado = '2' Then //Nota de Venta y Factura POS
						 dw_det.SetItem(1,'c_formato','Factura PREIMPRESA')
	else //Proforma
						 dw_det.SetItem(1,'c_formato','Proforma') 
	End if
END IF


dw_promcli_datos.object.compute_1.visible = false
dw_promcli_datos.object.b_1.visible = true
dw_promcli_datos.object.cod_unico.visible = false
dw_promcli_datos.object.t_4.visible = false
is_valprof=''
is_valotros = ''

dw_det.object.b_5.enabled = true
sle_3.enabled = true
dw_det.object.b_4.enabled = true
sle_2.enabled = true

dw_actuclimovi.object.celular[1] = ''
dw_actuclimovi.object.fnac[1] = date('')

ls_preant=0
li_entro = 0
is_imprimenc = 'N' 
is_aceptxprom = 'O'
 is_actualiza_desc = 'N'
ii_imprime_ticket_promo = 0
is_codtarj = ''
ls_veordcomp = ''
il_num_venta = 0
sle_2.text = ''
is_tarj[2] = 'N'
is_tarj[3] = ''
dw_rep_ticket.reset()
wf_encera_pago()
setnull(is_cliruc)
setnull(is_observacion)
setnull(is_rucic)
setnull(sle_1.text)
setnull(is_codtarj)
//m_marco.m_archivo.m_cancelarpos.enabled = true
//m_marco.m_archivo.m_grabarfacturapos.enabled = false
dw_det.enabled = true
dw_det.Object.b_1.enabled=true
dw_det.setfocus()
dw_cab.enabled =true
dw_det.setcolumn('codant')
Setpointer(arrow!)



end event

event ue_recuperar();if is_estado <> '3' then 
                messagebox("Atención","Antes debe estar en modo P R O F O R M A") 
                return
end if    
ib_recuperar = true
dw_sel_recuperar.visible = true
dw_sel_recuperar.Reset()
dw_sel_recuperar.Insertrow(0)
dw_sel_recuperar.setfocus()
dw_det.enabled = false
dw_sel_recuperar.setcolumn("numero")
end event

event ue_proforma;long ll_xx, li, li_max, ll_color, ll_color2
string ls, ls_pepa, ls_valstk
decimal lc_pedido


ll_xx = Messagebox("Confirme "+str_appgeninfo.username,"¿Desea cambiar el estado de esta Caja?",Question!,YesNo!)
dw_det.enabled = true
choose case ll_xx
case 1 //si
                rollback;              
                dw_det.reset()
                dw_det.insertrow(0)
                wf_encera_pago()
			  dw_det.setfocus()
		  	 dw_det.setcolumn('codant')
                if is_estado = '2' then // Al momento es Nota de Venta
                                is_estado = '3'
										  
//                               m_marco.m_archivo.m_proforma.text = '&Factura POS                              F2'
							IF	li_preimpre = 2 THEN
								       m_marco.m_archivo.m_proforma.text = '&Factura PREIMPRESA                              F2'
							ELSE
								      m_marco.m_archivo.m_proforma.text = '&Factura ELECTRÓNICA                              F2'
							END IF
//                           m_marco.m_archivo.m_facturaranuladas.enabled = false                                        
//                           m_marco.m_archivo.m_recuperarproforma.enabled = true
//                           m_marco.m_archivo.m_facturarprofroma.enabled = false
                               dw_det.SetItem(1,'c_formato','Proforma')
                     dw_det.object.proforma.text = 'Proforma'                  
                                ll_color = rgb(ProfileInt("DynaSif.INI", "Colores","HR",150),ProfileInt("DynaPos.INI", "Colores", "HG",200),ProfileInt("DynaSif.INI", "Colores", "HB",170))
                               ll_color2 = rgb(ProfileInt("DynaSif.INI", "Colores","BR",150),ProfileInt("DynaSif.INI", "Colores", "BG",200),ProfileInt("DynaSif.INI", "Colores", "BB",170))
                               dw_det.Modify("DataWindow.Header.Color="+string(ll_color))
                               dw_det.object.barra.BackGround.Color=ll_color2

                               ll_color2 = rgb(255,255,255)
                               dw_det.object.c_formato.Color= ll_color2
                               dw_det.object.cc_tarjeta.Color = ll_color2
                               dw_det.object.cc_total.Color = ll_color2                           
                                dw_det.object.st_efec.Color = ll_color2                            
                                dw_det.object.st_siniva.Color = ll_color2                                                          
                                dw_det.object.st_tarjeta.Color = ll_color2                                                                                      
                                ll_color2 = rgb(0,0,0)
                               dw_det.object.st_1.Color = ll_color2
                               dw_det.object.st_2.Color = ll_color2
                               dw_det.object.t_3.Color = ll_color2                     
                                dw_det.object.st_3.Color = ll_color2
                               dw_det.object.st_4.Color = ll_color2
                               dw_det.object.st_5.Color = ll_color2
                                dw_det.object.st_6.Color = ll_color2
                               dw_det.object.st_7.Color = ll_color2
                               dw_det.object.st_8.Color = ll_color2
                               dw_det.object.st_9.Color = ll_color2
                               dw_det.object.st_10.Color = ll_color2
                               dw_det.object.st_11.Color = ll_color2                 
                                dw_det.object.st_12.Color = ll_color2
                               dw_det.object.st_13.Color = ll_color2
                               dw_det.object.st_14.Color = ll_color2
                               
                        		dw_det.object.b_4.enabled = false
						sle_2.enabled = false
						dw_det.object.b_5.visible = false
						sle_3.visible = false
                               // Acceso para el boton Asesor
                              String ls_rol_pos
                               
                               SELECT SG_ACCESO.SA_POS
                               INTO :ls_rol_pos                             
                               FROM SG_ACCESO
                               WHERE SG_ACCESO.RS_NOMBRE = :str_appgeninfo.rol;

                               IF(ls_rol_pos = 'D' ) THEN
                                                               cb_asesor.visible = TRUE
                                                               cb_asesor.enabled = TRUE
                                                               
                               ELSE 
                                                               cb_asesor.visible = FALSE
                                                               cb_asesor.enabled = FALSE
                                                               
                               END IF 

						dw_cab.object.origen_txt.visible = 0
						is_valprof=''
						is_valotros = ''
                               
   else // Al momento es Proforma, gs_estado = 3
                               IF (prog_asesor = 1 or  str_appgeninfo.tipo  ='3') THEN
											dw_det.SetItem(1,'c_formato','Proforma')       
                                               messagebox("Información","No puede pasar a Factura en modo Asesor/Proforma", StopSign!)
                                               return 1
                               ELSE
                                                               is_estado = '2'
                                                              m_marco.m_archivo.m_proforma.text = '&Proforma                              F2'                   
												 setnull(is_observacion)		
					       //                           m_marco.m_archivo.m_recuperarproforma.enabled = false
                               //                           m_marco.m_archivo.m_facturaranuladas.enabled = true          
                               //                           m_marco.m_archivo.m_facturarprofroma.enabled = true
                                                               if str_appgeninfo.estado = '1' Then
                                                                                              dw_det.SetItem(1,'c_formato','Nota de Venta POS')                  
                                                                                              ll_color2 = rgb(ProfileInt("DynaSif.INI", "Colores","HR",255),ProfileInt("DynaSif.INI", "Colores", "HG",255),ProfileInt("DynaSif.INI", "Colores", "HB",200))
                                                                                              ll_color = rgb(ProfileInt("DynaSif.INI", "Colores","BR",255),ProfileInt("DynaSif.INI", "Colores", "BG",255),ProfileInt("DynaSif.INI", "Colores", "BB",200))
                                                                                              dw_det.Modify("proforma.text = 'Nota de Venta POS' DataWindow.Header.Color="+string(ll_color))
                                                                                              dw_det.object.barra.BackGround.Color=ll_color2
                                                               
                                                                                              ll_color2 = rgb(128,0,0)
                                                                                              dw_det.object.c_formato.Color= ll_color2
                                                                                              dw_det.object.st_efec.Color = ll_color2                            
                                                                                               ll_color2 = rgb(0,0,128)                               
                                                                                               dw_det.object.cc_tarjeta.Color = ll_color2
                                                                                              dw_det.object.cc_total.Color = ll_color2                           
                                                                                               dw_det.object.st_siniva.Color = ll_color2                                                          
                                                                                               dw_det.object.st_tarjeta.Color = ll_color2
                                                                                              ll_color2 = rgb(128,0,0)                               
                                                                                               dw_det.object.st_1.Color = ll_color2
                                                                                              dw_det.object.st_2.Color = ll_color2
                                                                                              dw_det.object.t_3.Color = ll_color2                                                    
                                                                                               dw_det.object.st_3.Color = ll_color2
                                                                                              dw_det.object.st_4.Color = ll_color2
                                                                                              dw_det.object.st_5.Color = ll_color2
                                                                                              dw_det.object.st_6.Color = ll_color2
                                                                                              dw_det.object.st_7.Color = ll_color2
                                                                                              dw_det.object.st_8.Color = ll_color2
                                                                                              dw_det.object.st_9.Color = ll_color2
                                                                                              dw_det.object.st_10.Color = ll_color2
                                                                                              dw_det.object.st_11.Color = ll_color2 
                                                                                              dw_det.object.st_12.Color = ll_color2
                                                                                              dw_det.object.st_13.Color = ll_color2 
                                                                                              dw_det.object.st_14.Color = ll_color2 
																															 
																			// 																												 
																			dw_det.object.b_4.enabled = false
																			sle_2.enabled = false
																			dw_det.object.b_5.visible = false
																			sle_3.visible = false


                                               end if
                               
                                               if str_appgeninfo.estado = '2' Then
																
																										
															IF	li_preimpre = 2 THEN		
															  dw_det.SetItem(1,'c_formato','Factura PREIMPRESA')
															dw_det.modify(" proforma.text = 'Factura PREIMPRESA'")  
															ll_color2 = rgb(ProfileInt("Dynasif.INI", "Colores","HR",228),ProfileInt("Dynasif.INI", "Colores", "HG",255),ProfileInt("Dynasif.INI", "Colores", "HB",0))
															ll_color = rgb(ProfileInt("Dynasif.INI", "Colores","BR",228),ProfileInt("Dynasif.INI", "Colores", "BG",255),ProfileInt("Dynasif.INI", "Colores", "BB",0))
															dw_det.Modify("DataWindow.Header.Color="+string(ll_color))
															dw_det.object.barra.BackGround.Color=ll_color2
												
				
														ELSE	
															dw_det.SetItem(1,'c_formato','Factura ELECTRÓNICA')
															dw_det.modify(" proforma.text = 'Factura ELECTRÓNICA'")  
															ll_color2 = rgb(ProfileInt("Dynasif.INI", "Colores","HR",255),ProfileInt("Dynasif.INI", "Colores", "HG",196),ProfileInt("Dynasif.INI", "Colores", "HB",196))
															 ll_color = rgb(ProfileInt("Dynasif.INI", "Colores","BR",255),ProfileInt("Dynasif.INI", "Colores", "BG",196),ProfileInt("Dynasif.INI", "Colores", "BB",196))
															 dw_det.Modify("DataWindow.Header.Color="+string(ll_color))
															 dw_det.object.barra.BackGround.Color=ll_color2
															
														END IF
													
													dw_det.object.barra.BackGround.Color=ll_color2
								
                                                               ll_color2 = rgb(128,0,0)
                                                               dw_det.object.c_formato.Color= ll_color2
                                                               dw_det.object.st_efec.Color = ll_color2                            
                                                                ll_color2 = rgb(0,0,128)                               
                                                               dw_det.object.cc_tarjeta.Color = ll_color2
                                                               dw_det.object.cc_total.Color = ll_color2                           
                                                               dw_det.object.st_siniva.Color = ll_color2                                                          
                                                               dw_det.object.st_tarjeta.Color = ll_color2
                                                               ll_color2 = rgb(128,0,0)                               
                                                               dw_det.object.st_1.Color = ll_color2
                                                               dw_det.object.st_2.Color = ll_color2
                                                               dw_det.object.t_3.Color = ll_color2                                                     
                                                                dw_det.object.st_3.Color = ll_color2
                                                               dw_det.object.st_4.Color = ll_color2
                                                               dw_det.object.st_5.Color = ll_color2
                                                               dw_det.object.st_6.Color = ll_color2
                                                               dw_det.object.st_7.Color = ll_color2
                                                               dw_det.object.st_8.Color = ll_color2
                                                               dw_det.object.st_9.Color = ll_color2 
                                                               dw_det.object.st_10.Color = ll_color2
                                                               dw_det.object.st_11.Color = ll_color2                                                                               
                                                                dw_det.object.st_12.Color = ll_color2
                                                               dw_det.object.st_13.Color = ll_color2                 
                                                                dw_det.object.st_14.Color = ll_color2
													
												
													dw_det.object.b_4.enabled = true
													sle_2.enabled = true
														if is_profmovi = 'S' then
																dw_det.object.b_5.visible = true
																sle_3.visible = true
														end if
												
                               end if
                               
                               
                               END IF

                end if    
case 2 //no
                 Message.returnvalue = 1
end choose

return 1
end event

event ue_cancelar();dw_det.postevent('ue_pasadatos')

end event

event ue_delete;int li_fila
GraphicObject which_control

which_control = getfocus()
choose case which_control.ClassName()
                case 'dw_det'
					
						  li_fila = dw_det.getrow()
                               if li_fila < 1 then return
				            dw_det.deleterow(0)
                               If is_estado = '2' Then
									IF	li_preimpre = 2 THEN		
									       dw_det.SetItem(1,'c_formato','Factura PREIMPRESA')
									ELSE	
                                               dw_det.SetItem(1,'c_formato','Factura ELECTRÓNICA')
									END IF
                               else
                                               dw_det.SetItem(1,'c_formato','Proforma POS')                                             
                               End if
                               dw_det.setcolumn('codant')
                     dw_det.setfocus()

                case 'dw_forma_pago'

end choose
end event

event ue_facpro();DataWindowChild dwc_data

if is_estado <> '2' then 
                messagebox("Atención","Antes debe estar en modo F A C T U R A") 
                return
end if    
ib_facturar = true
ib_facturar_anulada = false
dw_sel_recuperar.visible = true
dw_sel_recuperar.Reset()
dw_sel_recuperar.Insertrow(0)
dw_sel_recuperar.setfocus()
dw_sel_recuperar.getchild( 'sucursal',dwc_data)
dwc_data.settransobject( sqlca)
dwc_data.retrieve()
dw_sel_recuperar.setcolumn("numero")


end event

event ue_imagen;dw_det.TriggerEvent('ue_darimagen')
end event

event ue_nuevo;long li_xx

dw_det.enabled = true
li_xx = Messagebox("Confirme "+str_appgeninfo.username,"¿Desea iniciar un nuevo ticket?",Question!,YesNo!)
choose case li_xx
case 1 //si
			dw_7.reset()
			dw_8.reset()
			is_imprimenc = 'N' 
                dw_det.reset()
                dw_det.insertrow(0)
                dw_det.settaborder("dv_desc3",0)
//            ii_intentos = 0
                if is_estado = '2' then //Factura
                  If str_appgeninfo.estado = '1' Then
                               dw_det.SetItem(1,'c_formato','Nota de Venta POS')
                  else
                               			IF	li_preimpre = 2 THEN		
									       dw_det.SetItem(1,'c_formato','Factura PREIMPRESA')
									ELSE	
                                               dw_det.SetItem(1,'c_formato','Factura ELECTRÓNICA')
									END IF
						 
                  end if
                else //Proforma
                               dw_det.SetItem(1,'c_formato','Proforma')
                end if
                wf_encera_pago()
                dw_det.object.b_1.text = 'Tarj. Descto.'
                sle_1.text = ""
			is_valprof=''
			is_valotros = ''		 
                ib_pasa_tarj = false
                setnull(is_codtarj)          
                setnull(is_rucic)
                setnull(is_observacion)
	                is_cliruc = '1'
			 is_tarj[2]   = ''
			 
			 is_tarj[3] =''
                dw_det.setfocus()
                dw_det.setcolumn('codant')     
					 
			if is_estado = '3' then
				dw_det.object.b_4.enabled = false
				sle_2.enabled = false
				
				dw_det.object.b_5.enabled = false
				sle_3.enabled = false



			else 
				dw_det.object.b_4.enabled = true
				sle_2.enabled = true
				dw_actuclimovi.object.celular[1] = ''
				dw_actuclimovi.object.fnac[1] = date('')
				dw_det.object.b_5.enabled = true
				sle_3.enabled = true
			end if
		
case 2 //no
                 return 1
end choose

end event

event ue_stock;dw_det.TriggerEvent('ue_darstk')
end event

event ue_fanuladas();if is_estado <> '2' then 
                messagebox("Atención","Antes debe estar en modo F A C T U R A") 
                return
end if    
ib_facturar_anulada = true
ib_facturar = false
dw_sel_recuperar.visible = true
dw_sel_recuperar.Reset()
dw_sel_recuperar.Insertrow(0)
dw_sel_recuperar.setfocus()
dw_det.enabled = false
dw_sel_recuperar.setcolumn("numero")
end event

event ue_movcaja();open(w_movimiento_caja)
end event

event ue_cliente();//dw_cliente.visible = true
//dw_cliente.retrieve()
//dw_cliente.setcolumn("ce_nombre")
//dw_cliente.setfocus()
end event

event ue_precio();int li_fila
li_fila = dw_det.GetRow()
if li_fila < 1 then return

dw_precio.reset()
dw_precio.insertrow(0)
if dw_det.getItemString(li_fila, "it_preparado") = 'S' then
                dw_precio.SetItem(1,'codant',dw_det.getItemString(li_fila, "codant"))
                dw_precio.SetItem(1,'nombre',dw_det.getItemString(li_fila, "nombre"))
                dw_precio.SetItem(1,'precio',dw_det.getItemdecimal(li_fila, "dv_precio"))
                dw_precio.visible = true
                dw_precio.SetFocus()
                dw_precio.SetColumn('precio')
else
                messagebox("Atención","No puede cambiar el Precio de Venta a este item")
                dw_det.setfocus()
                dw_det.SetColumn('codant')    
end if

end event

public function integer wf_actualiza_saldo_nc (string as_numnc, decimal ac_valpag);integer i
decimal lc_saldo,lc
date hoy 
string ls_fp

select sysdate
into :hoy
from dual;

if is_estado = '2'then
//            hoy = today()
                Select ve_saldevo
                  into :lc_saldo
                  from fa_detdevol
                where em_codigo = :str_appgeninfo.empresa
                               and su_codigo = :str_appgeninfo.sucursal
                               and ve_numdevol = :as_numnc;
                               
                               
                If lc <= lc_saldo and lc_saldo > 0 Then
                //Existe una verificacion (ItemChanged!) que impide que pague un valor 
                //mayor al saldo. Por lo tanto solo puede ser igual o menor
                               update fa_detdevol
                                               set ve_saldevo = ve_saldevo - :ac_valpag,
                                                               ve_fecsaldo = :hoy
                               where em_codigo = :str_appgeninfo.empresa
                                               and su_codigo = :str_appgeninfo.sucursal
                                               and ve_numdevol = :as_numnc;
                               
                               if sqlca.sqlcode <> 0 then
                                               messageBox('Error función wf_crea_nueva_nc','No se puede actualizar el saldo de la N/C')
                                               return -1
                               else
                                               return 1
                               end if
                Else
                               messageBox('Error ','No se puede actualizar el saldo de la N/C~r~nDebido a que es mayor la cantidad ingresada')
                               return -1
    End if
else
                return 1
end if
end function

public function integer wf_cambia_precio ();int li_fila
li_fila = dw_det.GetRow()

if li_fila < 1 then return -1
producto.interno = dw_det.getItemString(li_fila, "codant")
if isnull(producto.interno) or producto.interno = '' then
                beep(1)
                return -1
end if
producto.nombre = dw_det.getItemString(li_fila, "nombre")
producto.precio = dw_det.getItemNumber(li_fila, "dv_precio")
//open(w_cambiar_precio)
return 1
end function

public function integer wf_crea_actualiza_cuenta (string as_clien);string ls, ls_clien,ls_tipo, as_numero, as_banco, ls_estado
decimal ad_valor
long li_res,ll_max, li

ll_max = dw_forma_pago.rowcount()
if ll_max > 0 then
                for li = 1 to ll_max
                ls = dw_forma_pago.GetitemString(li,'if_codigo')
                               if ls <> '0' then 
         as_numero = trim(dw_forma_pago.GetitemString(li,'rp_numcta'))
         as_banco = dw_forma_pago.GetitemString(li,'if_codigo')
         ad_valor     = dw_forma_pago.GetitemNumber(li,'rp_valor')
                                               Select ce_codigo, cs_estado
                                                 into :ls, :ls_estado
                                                 from fa_ctacli
                                               where if_codigo = :as_banco
                                                               and cs_numero = :as_numero;
                                               if sqlca.sqlcode <> 0 then
                                                 //No existe, inserto la cuenta con estado N (Nueva)
                                                 INSERT INTO "FA_CTACLI"( "IF_CODIGO", "CS_NUMERO","CE_CODIGO","CS_VALCHE",   
                                                                                                                                                                                            "CS_VALPRO", "CS_NUMCHE","CS_NUMPRO","CS_ESTADO")  
                                                                               VALUES (:as_banco,:as_numero,:as_clien,:ad_valor,0,1,0,'A')  ;
                                               else
                                                               if ls_estado = 'C' then //cuenta inactiva, no se debe facturar
                                                                   messageBox('Confirme con Crédito/Cartera','La cuenta corriente o la tarjeta tiene problemas favor verificar.')
                                                                              return -1
                                                               end if
                                                               if ls_estado = 'R' then //cuenta inactiva, no se debe facturar
                                                                   messageBox('Atencion','LA CUENTA O LA TARJETA ES ROBADA, favor avisar a CARTERA.')
                                                                              return -1
                                                    end if
                                                               if ls = as_clien then
                                                                              Update fa_ctacli
                                                                              set cs_valche = cs_valche + :ad_valor,
                                                                                              cs_numche = cs_numche + 1
                                                                              where if_codigo = :as_banco
                                                                              and cs_numero = :as_numero;
                                                               end if
                                               end if                                                                                 
                               end if
                next
end if
return 1
end function

public function decimal wf_valida_valor (string as_formpag, string as_inst_finan, decimal ac_valor, ref decimal ac_resultado);decimal minimo, maximo, minif, maxif
string tipo

select fp_minimo, fp_maximo
into :minimo, :maximo
from fa_formpag
where em_codigo = :str_appgeninfo.empresa
and fp_codigo = :as_formpag;

select if_minimo, if_maximo, if_tipo
into :minif, :maxif, :tipo
from pr_instfin
where em_codigo = :str_appgeninfo.empresa
and if_codigo = :as_inst_finan;

//Validacion de minimo
if minimo > ac_valor then 
                               messagebox('Error','El valor ingresado es menor que valor mínimo ('+string(minimo) +') de la forma de pago')
                               ac_resultado = minimo
                               return ac_resultado
end if
if maximo < ac_valor then 
                               messagebox('Error','El valor ingresado es mayor que valor máximo ('+string(maximo) +')  de la forma de pago')
                               ac_resultado = maximo
                               return ac_resultado
end if

if not isnull(as_inst_finan) and as_inst_finan <> '' then
//veo si cumple para la institucion financiera
if minif > ac_valor then
                               messagebox('Error','El valor ingresado es menor que valor mínimo ('+string(minif) +')  de la Institución Financiera')
                               ac_resultado = minif
                               return   ac_resultado
end if
if maxif < ac_valor then
                               messagebox('Error','El valor ingresado es mayor que valor máximo ('+string(maxif) +')  de la Institución Financiera')
                               ac_resultado = maxif
                               return ac_resultado
end if
end if
//veo si cumple para la caja
choose case tipo
                case 'B' //banco
                if caja.ch_min > ac_valor then
                                               messagebox('Error','El valor ingresado es menor que valor mínimo para cheque ('+string(caja.ch_min) +')  que se le permite a esta caja')
                                   ac_resultado = caja.ch_min
                                               return ac_resultado
                               end if
                if caja.ch_max < ac_valor then
                                               messagebox('Error','El valor ingresado es mayor que valor máximo para cheque ('+string(caja.ch_max) +')  que se le permite a esta caja')
                                   ac_resultado = caja.ch_max
                                               return   ac_resultado
                               end if                    
                case 'T' //tarjeta
                if caja.tj_min > ac_valor then
                                               messagebox('Error','El valor ingresado es menor que valor mínimo ('+string(caja.tj_min) +')  para tarjeta que se le permite a esta caja')
                                   ac_resultado = caja.tj_min
                                               return ac_resultado
                               end if
                if caja.tj_max < ac_valor then
                                               messagebox('Error','El valor ingresado es mayor que valor máximo para tarjeta ('+string(caja.tj_max) +')  que se le permite a esta caja')
                                               ac_resultado = caja.tj_max
                                               return ac_resultado
                               end if                                                   
  end choose
return 1
end function

public function integer wf_copia_factura_anulada (longlong ai_factura, ref long ai_nuevonum);int li,li_iva,li_detfila
boolean lb_hay_stock
string ls_codigo,ls_codant,ls_nombre,ls_marca,ls_preparado,ls_chasis, ls_unibas, ls_color, ls_mrcodigo
character lch_kit,lch_valstk
long     ll_nreg
dec{2}  lc_cantid,lc_desc1,lc_desc2,lc_desc3,lc_total,lc_precio,ld_stock,lc_desc
dec{4}  lc_costo


il_num_venta = ai_factura
dw_1.settransobject(sqlca)
ll_nreg = dw_1.retrieve('10',str_appgeninfo.empresa,str_appgeninfo.sucursal,ai_factura)
                
if ll_nreg = 0 or isnull(ll_nreg) then         
                messageBox('Atención','No existe factura anulada con este número')
                return -1
end if
dw_det.reset()
for li = 1 to ll_nreg
                ls_codigo = dw_1.GetItemstring(li,"it_codigo")
                lc_cantid = dw_1.GetItemnumber(li,"dv_cantid")          
                lc_precio = dw_1.GetItemdecimal(li,"dv_precio")          
                lc_desc1 = dw_1.GetItemdecimal(li,"dv_desc1")                            
                lc_desc2 = dw_1.GetItemdecimal(li,"dv_desc2")                            
                lc_desc3 = dw_1.GetItemdecimal(li,"dv_desc3")                                           
                lc_total = dw_1.GetItemdecimal(li,"dv_total") 
                ls_preparado = dw_1.GetItemstring(li,"dv_motor")
                ls_unibas = dw_1.GetItemstring(li,"ub_codigo")                            
                ls_chasis = dw_1.GetItemstring(li,"dv_chasis")                                               
                ls_color = dw_1.GetItemstring(li,"co_codigo")                                                
                lc_costo = dw_1.GetItemdecimal(li,"it_costo")                               
                ls_nombre = dw_1.GetItemstring(li,"it_nombre")                                         
                ls_codant = dw_1.GetItemstring(li,"it_codant")                                                             
                li_iva = dw_1.GetItemnumber(li,"it_iva")      
                ls_marca = dw_1.GetItemstring(li,"ma_codigo")                                                            
                lch_kit = dw_1.GetItemstring(li,"it_kit")              
                lch_valstk = dw_1.GetItemstring(li,"it_valstk")                
                ls_mrcodigo = dw_1.GetItemstring(li,"mr_codigo")
                lb_hay_stock = f_dame_stock_sucursal_pos(ls_codigo,lc_cantid,ld_stock,lch_kit,ic_recargo,lc_desc)
                li_detfila = dw_det.insertrow(0)             
                if lb_hay_stock = true then
                               dw_det.SetItem(li_detfila,"it_codigo",ls_codigo)
                               dw_det.SetItem(li_detfila,"codant",ls_codant)
                               dw_det.SetItem(li_detfila,"nombre",ls_nombre)
                   dw_det.SetItem(li_detfila,"it_iva",li_iva)                   
                   dw_det.SetItem(li_detfila,"dv_secue",li_detfila)                                                       
                   dw_det.SetItem(li_detfila,"ma_codigo",ls_marca)                                                                    
                   dw_det.SetItem(li_detfila,"co_codigo",ls_color)                                                                                                       
                               dw_det.SetItem(li_detfila,"dv_precio",lc_precio)
                               dw_det.SetItem(li_detfila,"dv_desc1",lc_desc1)
                               dw_det.SetItem(li_detfila,"dv_desc2",lc_desc2)
                               dw_det.SetItem(li_detfila,"dv_desc3",lc_desc3)
                               dw_det.SetItem(li_detfila,"dv_total",lc_total)
                               dw_det.SetItem(li_detfila,"dv_motor",ls_preparado) 
                               dw_det.SetItem(li_detfila,"ub_codigo",ls_unibas)                                       
                               dw_det.SetItem(li_detfila,"dv_chasis",ls_chasis)                           
                               dw_det.SetItem(li_detfila,"dv_entrega","N")                 
                               dw_det.SetItem(li_detfila,"dv_cantid",lc_cantid)
                               dw_det.SetItem(li_detfila,"dv_candes",lc_cantid)        
                               dw_det.SetItem(li_detfila,"it_kit",lch_kit)         
                               dw_det.SetItem(li_detfila,"it_valstk",lch_valstk)                                           
                               dw_det.SetItem(li_detfila,"it_costo",lc_costo)
                               dw_det.SetItem(li_detfila,"mr_codigo",ls_mrcodigo)
                else
                               if ld_stock > 0 then
                                               dw_det.SetItem(li_detfila,"it_codigo",ls_codigo)
                                               dw_det.SetItem(li_detfila,"codant",ls_codant)
                                               dw_det.SetItem(li_detfila,"nombre",ls_nombre)
                                  dw_det.SetItem(li_detfila,"dv_secue",li_detfila)                                       
                                  dw_det.SetItem(li_detfila,"it_iva",li_iva)                                                                  
                                  dw_det.SetItem(li_detfila,"ma_codigo",ls_marca)                                    
                                  dw_det.SetItem(li_detfila,"co_codigo",ls_color)                                                                                                                                                      
                                               dw_det.SetItem(li_detfila,"dv_precio",lc_precio)
                                               dw_det.SetItem(li_detfila,"dv_desc1",lc_desc1)
                                               dw_det.SetItem(li_detfila,"dv_desc2",lc_desc2)
                                               dw_det.SetItem(li_detfila,"dv_desc3",lc_desc3)
                                               dw_det.SetItem(li_detfila,"dv_total",lc_total)
                                               dw_det.SetItem(li_detfila,"dv_entrega","N")                                 
                                               dw_det.SetItem(li_detfila,"dv_cantid",ld_stock)
                                               dw_det.SetItem(li_detfila,"dv_candes",ld_stock)
                                               dw_det.SetItem(li_detfila,"dv_motor",ls_preparado)                 
                                               dw_det.SetItem(li_detfila,"ub_codigo",ls_unibas)                                                                                      
                                               dw_det.SetItem(li_detfila,"dv_chasis",ls_chasis)                                          
                                               dw_det.SetItem(li_detfila,"it_kit",lch_kit)                         
                                               dw_det.SetItem(li_detfila,"it_valstk",lch_valstk)                                                                                                                         
                                               dw_det.SetItem(li_detfila,"it_costo",lc_costo)
                                               dw_det.SetItem(li_detfila,"mr_codigo",ls_mrcodigo)
                               else
                                               messageBox('Atención','No hay stock del producto: '+ls_codant)
                                               dw_det.deleterow(li_detfila)
                               end if
                end if
next
dw_det.enabled = true
return 1

end function

public function integer wf_controla_stock_sucursal (integer num_filas, ref string as_codant);//Descripcion: Funcion que controla el stock maximo disponible de un producto para que sea facturado
//fecha de creación : 05/08/2003
//Ultima revision:05/08/2003

integer i,j
string ls_item,ls,ls_codant,ls_kit,ls_valstk,ls_codigo_atomo
decimal lc_stock,lc_candes,lc_candes_aux,lc_cantidad,ld_stock_disponible

for i =1 to num_filas
                ls_item = dw_det.getitemstring(i,"it_codigo")
                lc_cantidad = dw_det.getitemdecimal(i,"dv_cantid")   
                ls_valstk = dw_det.getitemstring(i,"it_valstk")
                ls_kit = dw_det.getitemstring(i,"it_kit")              
                ls_codant = dw_det.getitemstring(i,"codant") 
                lc_candes = 0 
                If ls_valstk = 'S' Then
                     If ls_kit = 'S' then //
                                                               SELECT "IN_RELITEM"."IT_CODIGO","IN_RELITEM"."RI_CANTID"  
                                                               INTO:ls_codigo_atomo,:ld_stock_disponible
                                                               FROM "IN_RELITEM"  
                                                                WHERE ( "IN_RELITEM"."TR_CODIGO" = '1' ) AND  
                                                                                              ( "IN_RELITEM"."IT_CODIGO1" = :ls_item ) AND  
                                                                                              ( "IN_RELITEM"."EM_CODIGO" = :str_appgeninfo.empresa )   ;
                                               
                                                               SELECT FLOOR("IN_ITESUCUR"."IT_STOCK"  / :ld_stock_disponible)
                                                               INTO:lc_stock
                                                               FROM "IN_ITESUCUR"  
                                                               WHERE ( "IN_ITESUCUR"."IT_CODIGO" = :ls_codigo_atomo ) AND  
                                                                                              ( "IN_ITESUCUR"."EM_CODIGO" = :str_appgeninfo.empresa ) AND  
                                                                                              ( "IN_ITESUCUR"."SU_CODIGO" = :str_appgeninfo.sucursal )   
                                                               FOR UPDATE OF "IN_ITESUCUR"."IT_STOCK";

                               elseif ls_kit = 'C' then //combo
                                               //*****************************************************
                                               Declare kit_combo cursor for //jaic
                                                                              SELECT "IN_RELITEM"."IT_CODIGO","IN_RELITEM"."RI_CANTID"  
                                                                              //            INTO:ls_codigo_atomo,:ld_stock_disponible
                                                                                              FROM "IN_RELITEM"  
                                                                                               WHERE ( "IN_RELITEM"."TR_CODIGO" = '13' ) AND  
                                                                                                                             ( "IN_RELITEM"."IT_CODIGO1" = :ls_item ) AND  
                                                                                                                             ( "IN_RELITEM"."EM_CODIGO" = :str_appgeninfo.empresa )   ;
                                               open kit_combo;  
                                               do   
                                                               fetch kit_combo into :ls_codigo_atomo,:ld_stock_disponible   ;
                                                               if sqlca.sqlcode <> 0 then exit  
                                                               
                                                                                              SELECT FLOOR("IN_ITESUCUR"."IT_STOCK"  / :ld_stock_disponible)
                                                                                              INTO:lc_stock
                                                                                              FROM "IN_ITESUCUR"  
                                                                                              WHERE ( "IN_ITESUCUR"."IT_CODIGO" = :ls_codigo_atomo ) AND  
                                                                                                                             ( "IN_ITESUCUR"."EM_CODIGO" = :str_appgeninfo.empresa ) AND  
                                                                                                                             ( "IN_ITESUCUR"."SU_CODIGO" = :str_appgeninfo.sucursal )   
                                                                                              FOR UPDATE OF "IN_ITESUCUR"."IT_STOCK";
                                                                              
                                                                              If lc_stock < lc_cantidad then
                                                                                              as_codant = ls_codant
                                                                                              return -1
                                                                              End if
                                                                              
                                               loop while TRUE;  
                                               close kit_combo;  
                                                                              //*****************************************************
                               else // no es kit
                                                               select it_stock
                                                               into: lc_stock
                                                               from in_itesucur
                                                               where em_codigo = :str_appgeninfo.empresa
                                                               and su_codigo = :str_appgeninfo.sucursal
                                                               and it_codigo = :ls_item
                                                               for update of it_stock;
                               End If
                               if sqlca.sqlcode <> 0 then
                                               rollback;
                                               MessageBox("Error","No se pudo obtener el stock del item ",StopSign!)
                                               return -1
                               end if    
                               If lc_stock < lc_cantidad then
                                               as_codant = ls_codant
                                               return -1
                               End if
                               //Para encontrar y sumar el stock de los items que se repiten en la factura                       
                               for j = i to num_filas
                                               ls = dw_det.getitemstring(j,"it_codigo")
                                               lc_candes_aux = dw_det.getitemdecimal(j,"dv_cantid")
                                               If lc_stock >= lc_candes_aux and ls = ls_item then
                                                                              lc_candes = lc_candes + lc_candes_aux
                                                                              If lc_stock >= lc_candes then 
                                                                                              continue
                                                                              Else
                                                                                              as_codant = ls_codant
                                                                                              return -1
                                                                              End if
                                                 End if
                               next
                End if
next      
return 1
end function

public subroutine wf_insertarfila ();int li_filas,li_numli
string ls


li_filas = dw_det.rowcount()
If li_filas < 1 Then return
select cj_numlifac
into :li_numli
from fa_caja
where su_codigo = :str_appgeninfo.sucursal
and cj_caja =:str_appgeninfo.caja ;


If li_filas = li_numli - 1 Then
                messagebox("Recuerde","Sólo puede facturar hasta "+string(li_numli)+" items",exclamation!,Ok!)
End if

If li_filas >= li_numli  Then 
                dw_det.deleterow(li_filas)
                return
End if

If isnull(dw_det.getitemstring(dw_det.getrow(),"codant"))  Then 
                dw_det.deleterow(dw_det.getrow())
                return
End if

if dw_det.getitemstring(dw_det.getrow(),"it_kit") = 'V' then
                return
end if

dw_det.insertrow(0)



end subroutine

public function integer wf_proforma_a_factura (longlong ai_factura, ref long ai_nuevonum);int li,li_iva,li_detfila
boolean lb_hay_stock
string ls_codigo,ls_codant,ls_nombre,ls_observ,ls_marca,ls_preparado,ls_chasis, ls_unibas, ls_color, ls_fbcodigo, ls_clcodigo, ls_mrcodigo, ls_descue, ls_igcodigo, ls_sucprof
character lch_kit, lch_valstk, lch_desc3
long     ll_nreg
dec{2}  lc_cantid,lc_desc1,lc_desc2,lc_desc3,lc_total,lc_precio,ld_stock,lc_costo,lc_desc


il_num_venta = ai_factura

dw_sel_recuperar.setcolumn('sucursal')
ls_sucprof = dw_sel_recuperar.gettext()

dw_1.settransobject(sqlca)
ll_nreg = dw_1.retrieve('3',str_appgeninfo.empresa,ls_sucprof,ai_factura)
if ll_nreg = 0 or isnull(ll_nreg) then         
                messageBox('Atención','Proforma no existe')
                return -1
end if
dw_det.reset()

for li = 1 to ll_nreg
	  	      ls_codigo = dw_1.GetItemstring(li,"it_codigo")
                lc_cantid = dw_1.GetItemnumber(li,"dv_cantid")          
                lc_precio = dw_1.GetItemdecimal(li,"dv_precio")          
                lc_desc1 = dw_1.GetItemdecimal(li,"dv_desc1")                            
                lc_desc2 = dw_1.GetItemdecimal(li,"dv_desc2")                            
                lc_desc3 = dw_1.GetItemdecimal(li,"dv_desc3")                                           
                lc_total = dw_1.GetItemdecimal(li,"dv_total") 
                ls_preparado = dw_1.GetItemstring(li,"dv_motor")
                ls_unibas = dw_1.GetItemstring(li,"ub_codigo")
                ls_chasis = dw_1.GetItemstring(li,"dv_chasis")                
                lc_costo = dw_1.GetItemdecimal(li,"it_costo")                               
                ls_nombre = dw_1.GetItemstring(li,"it_nombre")                                         
                ls_codant = dw_1.GetItemstring(li,"it_codant")                                             
                ls_color = dw_1.GetItemstring(li,"co_codigo")          
			 li_iva = dw_1.GetItemnumber(li,"it_iva")      
                ls_marca = dw_1.GetItemstring(li,"ma_codigo")                                                            
                lch_kit = dw_1.GetItemstring(li,"it_kit")              
                lch_valstk = dw_1.GetItemstring(li,"it_valstk")
			 ls_descue = dw_1.object.it_descue[li]
  			 lch_desc3 = dw_1.object.it_desc3[li]
			  
				 select it_iva
				 into :li_itemiva
				 from in_item
				 where em_codigo = :str_appgeninfo.empresa
				 and it_codant = :ls_codant; 
						 
					 
                ls_fbcodigo = dw_1.GetItemstring(li,"fb_codigo")         
                ls_clcodigo = dw_1.GetItemstring(li,"cl_codigo")
                ls_mrcodigo = dw_1.GetItemstring(li,"mr_codigo")
			 ls_igcodigo = dw_1.GetItemstring(li,"ig_codigo")
                
                lb_hay_stock = f_dame_stock_sucursal_pos(ls_codigo,lc_cantid,ld_stock,lch_kit,ic_recargo,lc_desc)
			   li_detfila = dw_det.insertrow(0)          
                if lb_hay_stock = true then
				 dw_det.SetItem(li_detfila,"it_codigo",ls_codigo)
				 dw_det.SetItem(li_detfila,"codant",ls_codant)
				 dw_det.SetItem(li_detfila,"nombre",ls_nombre)
				 dw_det.SetItem(li_detfila,"it_iva",li_iva)                   
				 dw_det.SetItem(li_detfila,"co_codigo",ls_color)                                                        
				 dw_det.SetItem(li_detfila,"dv_secue",li_detfila)                                                       
				 dw_det.SetItem(li_detfila,"ma_codigo",ls_marca)                                                                    
				 dw_det.SetItem(li_detfila,"dv_precio",lc_precio)
				 dw_det.SetItem(li_detfila,"dv_desc1",lc_desc1)
				 dw_det.SetItem(li_detfila,"dv_desc2",lc_desc2)
				 dw_det.SetItem(li_detfila,"dv_desc3",lc_desc3)
				 dw_det.SetItem(li_detfila,"dv_total",lc_total)
				 dw_det.SetItem(li_detfila,"dv_entrega","N")                 
				 dw_det.SetItem(li_detfila,"dv_cantid",lc_cantid)
				 dw_det.SetItem(li_detfila,"dv_candes",lc_cantid)
				 dw_det.SetItem(li_detfila,"dv_motor",ls_preparado)
				 dw_det.SetItem(li_detfila,"ub_codigo",ls_unibas)                                                                       
				 dw_det.SetItem(li_detfila,"dv_chasis",ls_chasis)                                          
				 dw_det.SetItem(li_detfila,"it_kit",lch_kit)                                        
				 dw_det.SetItem(li_detfila,"it_valstk",lch_valstk)                                                                          
				 dw_det.SetItem(li_detfila,"it_costo",lc_costo)                                               
				 dw_det.SetItem(li_detfila,"fb_codigo",ls_fbcodigo)                                                                   
				 dw_det.SetItem(li_detfila,"cl_codigo",ls_clcodigo)       
				 dw_det.SetItem(li_detfila,"mr_codigo",ls_mrcodigo)
				 dw_det.SetItem(li_detfila,"it_descue", ls_descue) 	
				dw_det.SetItem(li_detfila,"it_desc3", lch_desc3)
				dw_det.SetItem(li_detfila,"ig_codigo", ls_igcodigo)
										 
							if li_itemiva	= 1 then
								dw_det.setitem(li_detfila, 'im_codigo',s_iva.im_codigo)		
							else
								dw_det.setitem(li_detfila, 'im_codigo','0')
							end if										 
		          else
                               if ld_stock > 0 then
							  dw_det.SetItem(li_detfila,"it_codigo",ls_codigo)
							  dw_det.SetItem(li_detfila,"codant",ls_codant)
							  dw_det.SetItem(li_detfila,"nombre",ls_nombre)
							 dw_det.SetItem(li_detfila,"dv_secue",li_detfila)                                       
							 dw_det.SetItem(li_detfila,"it_iva",li_iva)                                                                   
							 dw_det.SetItem(li_detfila,"ma_codigo",ls_marca)                                    
							 dw_det.SetItem(li_detfila,"co_codigo",ls_color)                                                                                                       
							  dw_det.SetItem(li_detfila,"dv_precio",lc_precio)
							  dw_det.SetItem(li_detfila,"dv_desc1",lc_desc1)
							  dw_det.SetItem(li_detfila,"dv_desc2",lc_desc2)
							  dw_det.SetItem(li_detfila,"dv_desc3",lc_desc3)
							  dw_det.SetItem(li_detfila,"dv_total",lc_total)
							  dw_det.SetItem(li_detfila,"dv_entrega","N")                                 
							  dw_det.SetItem(li_detfila,"dv_cantid",ld_stock)
							  dw_det.SetItem(li_detfila,"dv_candes",ld_stock)
							  dw_det.SetItem(li_detfila,"dv_motor",ls_preparado)                 
							  dw_det.SetItem(li_detfila,"ub_codigo",ls_unibas)                                                                                      
							  dw_det.SetItem(li_detfila,"dv_chasis",ls_chasis)                                                                                         
							  dw_det.SetItem(li_detfila,"it_kit",lch_kit)                                        
							  dw_det.SetItem(li_detfila,"it_valstk",lch_valstk)                                                                                                                         
							  dw_det.SetItem(li_detfila,"it_costo",lc_costo)                               
							  dw_det.SetItem(li_detfila,"fb_codigo",ls_fbcodigo)                                                                   
							  dw_det.SetItem(li_detfila,"cl_codigo",ls_clcodigo)       
							  dw_det.SetItem(li_detfila,"mr_codigo",ls_mrcodigo)
							  dw_det.SetItem(li_detfila,"it_descue", ls_descue) 	
							  dw_det.SetItem(li_detfila,"ig_codigo", ls_igcodigo)
									  	if li_itemiva	= 1 then
												dw_det.setitem(li_detfila, 'im_codigo',s_iva.im_codigo)		
										else
												dw_det.setitem(li_detfila, 'im_codigo','0')
										end if					
										  
                               else
                                              messageBox('Atención','No hay stock del producto: '+ls_codant)
                                               dw_det.deleterow(li_detfila)
                               end if
                end if
next
//Cambio de estado la proforma a proforma facturada
Insert Into FA_VENTA (ES_CODIGO, EM_CODIGO, SU_CODIGO, BO_CODIGO, VE_NUMERO,
                                                                                                                CJ_CAJA, CE_CODIGO, EP_CODIGO, VE_NUMPRE, VE_FECHA,
                                                                                                                VE_HORA, VE_SUBTOT, VE_DESCUE, VE_NETO, VE_IVA, VE_CARGO,
                                                                                                                VE_VALPAG, VE_OBSERV, VE_LEYENDA, VE_EFECTIVO, VE_VALOTROS,
                                                                                                                VE_CAMBIO, VE_PREANT, VE_VALLETRAS, VE_MOTIVO, CE_EXIVA, DC_CODIGO, IM_CODIGO, VE_ORDENCOMP, GV_CODIGO) 
select '7', EM_CODIGO, :str_appgeninfo.sucursal, :str_appgeninfo.seccion, VE_NUMERO,
                                                                              CJ_CAJA, CE_CODIGO, EP_CODIGO, VE_NUMPRE, VE_FECHA,
                                                                              VE_HORA, VE_SUBTOT, VE_DESCUE, VE_NETO, VE_IVA, VE_CARGO,
                                                                              VE_VALPAG, VE_OBSERV, null, VE_EFECTIVO, VE_VALOTROS,
                                                                              VE_CAMBIO, VE_PREANT, VE_VALLETRAS, VE_MOTIVO, CE_EXIVA, DC_CODIGO, IM_CODIGO, VE_ORDENCOMP, GV_CODIGO 
from FA_VENTA
where em_codigo = '1'
and su_codigo = :ls_sucprof 
and es_codigo = '3'
and ve_numero = :ai_factura;
if sqlca.sqlcode <> 0 then
                rollback;
                messageBox('Error Interno', 'Problema con el cambio de proforma a factura~r~n' +&
                                                                                                                'Por favor comuniquese con dpto. de Informática : ' + sqlca.sqlerrtext )
                return -1
end if  

select VE_OBSERV,VE_ORDENCOMP
into :ls_observa, :ls_veordcomp
from FA_VENTA
where em_codigo = '1'
and su_codigo = :ls_sucprof
and es_codigo = '7'
and ve_numero = :ai_factura;


Update fa_detve
set su_codigo=:str_appgeninfo.sucursal, bo_codigo = :str_appgeninfo.seccion,  es_codigo = '7'
where em_codigo = '1'
and su_codigo = :ls_sucprof
and es_codigo = '3'
and ve_numero = :ai_factura;

if sqlca.sqlcode <> 0 then
                rollback;
                messageBox('Error Interno', 'Problema para actualizar fa_detve a 7 : ' + sqlca.sqlerrtext )
                return -1
end if  

Update fa_recpag
set su_codigo=:str_appgeninfo.sucursal, bo_codigo = :str_appgeninfo.seccion, es_codigo = '7'
where em_codigo = '1'
and su_codigo = :ls_sucprof
and es_codigo = '3'
and ve_numero = :ai_factura;

if sqlca.sqlcode <> 0 then
                rollback;
                messageBox('Error Interno', 'Problema para actualizar fa_recpag  a 7 : ' + sqlca.sqlerrtext )
                return -1
end if  

delete fa_venta 
where em_codigo = '1'
and su_codigo = :ls_sucprof
and es_codigo = '3'
and ve_numero = :ai_factura;

if sqlca.sqlcode <> 0 then
                rollback;
                messageBox('Error Interno', 'Problema para borrar la proforma en fa_venta con es_codigo = 3 ' + sqlca.sqlerrtext )
                return -1
end if  

return 1

end function

public function integer wf_encera_pago ();dw_cab.reset()
dw_forma_pago.reset()
dw_cab.insertrow(0)
dw_cab.visible=false
dw_forma_pago.visible = false
dw_sel_recuperar.visible = false
ls_observa = ''
dw_det.setfocus()
dw_det.setcolumn("codant") 
return 1
end function

public function decimal wf_actualiza_saldos ();/*Existen formas de pago con descuento*/
Long ll_rows,ll_find,ll_nreg
Dec{2} lc_descuento,lc_neto,lc_iva,lc_valorpagar,lc_cargo,lc_valor,lc_totinter,lc_valint, ldd_poriva
char lch_estado
int li_i

dw_forma_pago.AcceptText()
ll_rows = dw_forma_pago.rowcount()
ll_nreg = dw_forma_pago.getrow()
lc_valor = 0
for li_i = 1 to ll_rows
                lc_valor = lc_valor + dw_forma_pago.getitemdecimal(li_i,"rp_valor")  
next

lc_totinter = dw_det.object.cc_tarjeta[1] - (dw_cab.object.efectivo[1] + lc_valor)
if lc_totinter > 0 then
                dw_forma_pago.setitem(ll_nreg,"rp_valor",lc_totinter)
end if
lch_estado = dw_forma_pago.getitemstring(ll_nreg,"estado")
/*Buscar si existe una fp sin descuento y con interes*/
//ll_find = dw_forma_pago.find("estado = 'I'",1,ll_rows)

if lch_estado = 'I' then
                lc_descuento = 0
//            lc_valor = 0
                lc_valint = 0
                lc_cargo = 0
//            dw_forma_pago.setitem(ll_nreg,"rp_valor",0)
                dw_forma_pago.setitem(ll_nreg,"cc_cargo",0)               
//            for li_i = 1 to ll_rows
//                           if dw_forma_pago.getitemstring(li_i,"estado") <> 'I' then
//                                           lc_valor = lc_valor + dw_forma_pago.getitemdecimal(li_i,"rp_valor")
//                           end if
//                           if dw_forma_pago.getitemstring(li_i,"estado") = 'I' then
//                                           lc_valint = lc_valint + dw_forma_pago.getitemdecimal(li_i,"rp_valor")
//                           end if
//            next
//            if lc_valint > 0 then
//                           //jaic
//                           //lc_valint = lc_valint - dw_forma_pago.Object.cc_sumcargo[1]
//                           lc_valint = lc_valint
//                           //end jaic
//            end if
//            lc_totinter = dw_det.object.cc_tarjeta[1] - (dw_cab.object.efectivo[1] + lc_valor + lc_valint)
//            lc_totinter = dw_det.object.cc_tarjeta[1] - (dw_cab.object.efectivo[1] + lc_valor)
//            dw_forma_pago.setitem(ll_nreg,"rp_valor",lc_totinter)
                lc_cargo = (ic_interes_fp / 100) * dw_forma_pago.Object.rp_valor[ll_nreg]     
                lc_neto = dw_forma_pago.Object.rp_valor[ll_nreg] / (1 + tasa.iva)                      
                dw_forma_pago.setitem(ll_nreg,"cc_subt_tconi",lc_neto)                      
                lc_iva = lc_neto * tasa.iva 					 
                dw_forma_pago.setitem(ll_nreg,"cc_iva_tconi",lc_iva)                              
                dw_forma_pago.setitem(ll_nreg,"cc_cargo",lc_cargo)                                               
                dw_forma_pago.setitem(ll_nreg,"cc_valor",lc_neto + lc_iva + lc_cargo)                                                           
//            lc_totinter = lc_totinter + lc_valint
//            dw_cab.Object.valor_otras[1] = lc_totinter
                lc_iva =  ic_iva  * ii_estado
                lc_neto = dw_cab.Object.cc_neto[1]
//            lc_cargo = dw_forma_pago.Object.cc_sumcargo[1]
                lc_valorpagar = lc_neto + (lc_iva -  dw_cab.object.desc[1]) //+ lc_cargo
                                               
//            lc_neto = ic_orig_subtotal
//            lc_iva = ic_iva
//            lc_cargo = (ic_interes_fp / 100) * (lc_iva + lc_neto) 
//            lc_valorpagar = lc_neto + lc_iva + lc_cargo
else
//            ll_find = dw_forma_pago.find("estado = 'N'",1,ll_rows)
//            if ll_find > 0 then
                if             lch_estado = 'N' then
                               lc_descuento = 0
                               lc_cargo = 0
                               lc_neto = ic_orig_subtotal
                               lc_iva = ic_iva  * ii_estado
                               lc_valorpagar = lc_neto + (lc_iva -  dw_cab.object.desc[1])
   else    
                               /*Con descuento*/
                               lc_descuento  = ic_orig_descuento
                               lc_neto = ic_orig_subtotal - lc_descuento
                               lc_iva = ic_iva * ii_estado
                               lc_valorpagar = lc_neto + (lc_iva -  dw_cab.object.desc[1])
   end if
                dw_forma_pago.setitem(ll_nreg,"cc_cargo",0)
                dw_forma_pago.setitem(ll_nreg,"cc_valor",0)                
end if

dw_cab.Object.descuento[1]= lc_descuento
dw_cab.Object.iva[1]= lc_iva
//dw_cab.Object.cargo[1]= lc_cargo
dw_cab.Object.valor_pagar[1]= lc_valorpagar
//jaic
dw_cab.Object.valor_otras[1]= dw_forma_pago.Object.cc_abono[1]
//dw_cab.Object.valor_otras[1]= dw_forma_pago.Object.cc_abono1[1]
//end jaic
return lc_valorpagar
end function

public function integer wf_validar ();//Validacion de minimo
String ls_nc,ls_venumero
Dec{2} lc_valnc,lc_sumacheques = 0.00
date ld_fecha,ld_fecven
integer li_numfp
long   i,ll_row,ll_rowcount



ll_row = dw_forma_pago.getrow()
ll_rowcount = dw_forma_pago.rowcount()

if ll_row <= 0 then return 1

//Sumar los valores de la forma de pago Cheque para validar
for i = 1 to ll_rowcount
                if dw_forma_pago.Object.fp_codigo[i] = '1' then
                               if dw_forma_pago.Object.rp_fecven[i] > dw_forma_pago.Object.rp_fecha[i] then
                                                  lc_sumacheques  = lc_sumacheques + dw_forma_pago.Object.rp_valor[i]
                               end if
     end if
next      

if lc_sumacheques > 0.00 then
                if lc_sumacheques > ic_salcre then
                               messagebox('Atención','El valor en cheques excede el cupo del cliente ',Exclamation!)
                               return 1
                end if
end if

if dw_forma_pago.Object.rp_valor[ll_row] = 0 then return 0
                
if ic_minpag > dw_forma_pago.Object.rp_valor[ll_row] then 
                messagebox('Atención','El valor ingresado es menor que el valor mínimo de la forma de pago['+string(ic_minpag) +']',Exclamation!)
                dw_forma_pago.Object.rp_valor[ll_row] = ic_minpag
                dw_cab.object.valor_otras[1] = dw_forma_pago.object.cc_abono[1] 
                return 1
end if

//Validacion de maximo                                              
if ic_maxpag < dw_forma_pago.Object.rp_valor[ll_row] then 
                messagebox('Atención','El valor ingresado es mayor que el valor máximo de la forma de pago['+string(ic_maxpag) +']',Exclamation!)
                dw_forma_pago.Object.rp_valor[ll_row] = ic_maxpag
                dw_cab.object.valor_otras[1] = dw_forma_pago.object.cc_abono[1] 
                return 1
end if


//Validar saldo de nc
if dw_forma_pago.Object.fp_codigo[ll_row] = '2' then
                ls_venumero = dw_forma_pago.Object.rp_numdoc[ll_row]
                if not isnull(ls_venumero) and trim(ls_venumero) <> "" then
                                select 'S',ve_valotros
                               into  :ls_nc,:lc_valnc
                               from fa_venta
                               where es_codigo = trim(10)
                               and em_codigo = trim(1)
                               and su_codigo = trim(:str_appgeninfo.sucursal)
                               and ve_numero = :ls_venumero;
                               
                                if ls_nc <> 'S'then
                                               messagebox('Atención','Nota de crédito no registrada',Exclamation!)
                                               dw_forma_pago.object.rp_valor[ll_row] = 0
                                               dw_forma_pago.object.rp_numdoc[ll_row] = ''
                                               return 1
                               end if
  
                                if dw_forma_pago.object.rp_valor[ll_row] > lc_valnc + 0.01 then
                                               Messagebox("Atención","El valor de la NC no debe ser mayor a "+String(lc_valnc)+"",Exclamation!)
                                               dw_forma_pago.object.rp_valor[ll_row] = lc_valnc
                                               dw_cab.object.valor_otras[1] = dw_forma_pago.object.cc_abono[1]                
                                               return 1
                               end if
                end if

                ls_venumero = dw_forma_pago.Object.rp_numcta[ll_row]                     
                if not isnull(ls_venumero) and trim(ls_venumero) <> "" then   
                               ll_rowcount = long(ls_venumero)
                               
                                select count(*)
                               into  :li_numfp
                               from fa_recpag
                               where es_codigo = trim(2)
                               and em_codigo = trim(1)
                               and su_codigo = trim(:str_appgeninfo.sucursal)
                               and ve_numero = :ll_rowcount
                               and fp_codigo = trim(1);
                               if sqlca.sqlcode <> 0 then
                                               messagebox('Ticket','Número de Ticket no existe...<Revisar>',stopsign!)
                                               dw_forma_pago.setcolumn("rp_numcta")
                                               dw_forma_pago.setfocus()
                                               return 1                                              
                               end if
                               if li_numfp > 0 then
                                               declare fechas cursor for
                                                               select rp_fecha,rp_fecven
                                                               from fa_recpag
                                                               where es_codigo = trim(2)
                                                               and em_codigo = trim(1)
                                                               and su_codigo = trim(:str_appgeninfo.sucursal)
                                                               and ve_numero = :ll_rowcount
                                                               and fp_codigo = trim(1);
                                               open fechas;
                                                               do
                                                                              fetch fechas into :ld_fecha,:ld_fecven;                
                                                                              if sqlca.sqlcode <> 0 then exit
                                                                                              if  ld_fecha < ld_fecven then dw_forma_pago.object.estado[ll_row] = 'N'
                                                               loop while true
                                               close fechas;
                               end if
                else
                               messagebox('Falta Ticket','Ingrese el número del Ticket',stopsign!)
                               dw_forma_pago.setcolumn("rp_numcta")
                               dw_forma_pago.setfocus()
                               return 1
                end if
end if

dw_cab.object.valor_otras[1] = dw_forma_pago.object.cc_abono[1]                 
return 0
end function

public function integer wf_aceptar_cheque (string as_cliente);long li,ll_dias
string ls
date ld_fecven, hoy
dec{2} lc_valcup, lc_valorcheque, lc_porcsg, lc_salmin, lc_salmax, lc_totsobregiro, lc_valchequ

select trunc(sysdate)
into :hoy
from dual; 

lc_valcup = 0

for li = 1 to dw_forma_pago.rowcount()
  ls = dw_forma_pago.GetitemString(li,'fp_codigo')
  
  If ls = '1' then
                if is_cat <> 'A' then         
                               If (is_tipcli = 'NOF' or is_facturar = 'N') then
                                               beep(1)
                                               messageBox('Atención','No se puede facturar a este cliente o esta BLOQUEADO. Confirme con Crédito/Cartera.')
                                               return -1
                               end if
                else
                               ld_fecven = date(dw_forma_pago.GetitemDateTime(li,'rp_fecven'))
                               if ld_fecven > hoy then
                                               
                                               ll_dias = DaysAfter(hoy, ld_fecven)
                                               if ll_dias > ii_plazo Then
                                                               messageBox('Atención','Fecha de vencimiento supera el plazo de este cliente. Plazo:'+string(ii_plazo)+' días')
                                                               beep(1)                                                                                                                             
                                                               return -1
                                               end if
                               end if
                               lc_valcup = lc_valcup + dw_forma_pago.GetitemNumber(li,'rp_valor')
                End if                                    
                
  End if
next

//if is_tipcli = 'CHPV' and lc_valcup > 0 then   //jaic  entra si tiene CHPV
//
//if lc_valcup > 50 then
//            //consulta para saber q porcentaje poder sobregirar
//            select  stock, pe_min, pe_max
//            into :lc_porcsg, :lc_salmin, :lc_salmax 
//            from pr_premios
//            where (pe_min <= :ic_cupcre and pe_max >= :ic_cupcre)
//            and pe_codigo = 'CLIENTE';
//            
//    lc_totsobregiro = ic_salcre + (ic_cupcre * (lc_porcsg/100)) 
//                           
//            if lc_valcup > lc_totsobregiro then //si se pasa del sobregiro no le permite continuar y enviará el mensaje
//                           rollback;                                              
//                           messagebox('Atención','El valor ingresado excede el cupo de crédito: '+string(ic_cupcre,'#,##0.00') + ' (Saldo: '+ string(ic_salcre,'#,##0.00') +') más sobregiro de: ' +string((ic_cupcre * (lc_porcsg/100)),'#,##0.00') + '...Verifique con Cartera',Exclamation!)
//                           beep(1)
//                           dw_forma_pago.reset()
//                           dw_forma_pago.visible = false
//                           dw_cab.reset()
//                           dw_cab.insertrow(0)
//                           dw_cab.visible = false
//                           dw_det.enabled = true
//                           dw_det.setfocus()
//                           return -1
//            end if
//end if
//
//            If lc_valcup > 0 then
//                           UPDATE FA_CLIEN
//                           SET CE_SALCRE = CE_SALCRE - :lc_valcup
//                           WHERE CE_CODIGO = :is_codcli
//                           AND EM_CODIGO = :str_appgeninfo.empresa;
//                           if sqlca.sqlcode <> 0 then
//                                           rollback;
//                                           beep(1)               
//                                           messageBox('Error Interno', 'Función wf_aceptar_cheque ' +sqlca.sqlerrtext)
//                                           return -1
//                           end if
//            end if
//
//end if  //end jaic

return 1

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/*
//                                           else
//                                                           lc_valcup = lc_valcup + dw_forma_pago.GetitemNumber(li,'rp_valor')
//                                                           if is_tipcli = 'CHPV' and is_estcre <> 'A' and ii_plazo = 0 then   
//                                                                          If ic_cupcre < lc_valcup then
//                                                                                          messageBox('Atención','Cupo no disponible. Saldo:'+string(ic_cupcre,'#,##0.00'))
//                                                                                          beep(1)                                                                                                                             
//                                                                                          return -1
//                                                                          End if
//                                                           end if



//                           else
//                                           lc_valcup = lc_valcup + dw_forma_pago.GetitemNumber(li,'rp_valor')
//                                                           
//                                                           if is_tipcli = 'CHPV' and is_estcre <> 'A' and ii_plazo = 0 then   
//                                                                          If ic_cupcre < lc_valcup then
//                                                                                          messageBox('Atención','Cupo no disponible. Saldo:'+string(ic_cupcre,'#,##0.00'))
//                                                                                          beep(1)                                                                                                                             
//                                                                                          return -1
//                                                                          End if
//                                                           end if*/
end function

public function integer wf_dame_stock (string as_codigo, decimal ac_cantid);dec{0} lc_stock
string ls_codigo

select it_stock 
into  :lc_stock 
from in_itesucur 
where em_codigo = :str_appgeninfo.empresa 
and su_codigo = :str_appgeninfo.sucursal 
and it_codigo = :as_codigo
for update of it_stock;
if lc_stock < ac_cantid then
                rollback;
                select it_codant 
                into :ls_codigo 
                from in_item 
                where em_codigo = :str_appgeninfo.empresa 
                and it_codigo = :as_codigo;
                messagebox("Error","El stock en sucursal del producto ["+ls_codigo+"] = "+string(lc_stock)+"~r~n"+&
                               "Es menor que la cantidad ingresada por el contenido de la fórmula = "+string(ac_cantid)+"...<Verifíque su stock>",stopsign!)
                return -1
end if                    
return 1
end function

public function integer wf_inv_formulas (string as_pepa, decimal ac_pedido, longlong al_num_venta);long ll_num_movim, ll_fila
dec{4} lc_costo 

ll_num_movim = f_dame_sig_numero('NUM_MINV')
if ll_num_movim = -1 then
                rollback;
                messagebox('ERROR¡','Problemas con el secuencial del movimiento de inventario')     
                return -1
end if

select it_costo 
into :lc_costo
from in_item
where em_codigo = :str_appgeninfo.empresa
and it_codigo = :as_pepa;

//ingresa el atomo (pequeño)
ll_fila = dw_movim.insertrow(0)
dw_movim.setitem(ll_fila,"tm_codigo",'2')
dw_movim.setitem(ll_fila,"tm_ioe",'E')
dw_movim.setitem(ll_fila,"it_codigo",as_pepa)
dw_movim.setitem(ll_fila,"su_codigo",str_appgeninfo.sucursal)           
dw_movim.setitem(ll_fila,"bo_codigo",str_appgeninfo.seccion)           
dw_movim.setitem(ll_fila,"mv_numero",string(ll_num_movim))          
dw_movim.setitem(ll_fila,"mv_cantid",ac_pedido)                      
dw_movim.setitem(ll_fila,"mv_costo",lc_costo)            
dw_movim.setitem(ll_fila,"mv_fecha",id_now)             
dw_movim.setitem(ll_fila,"em_codigo",str_appgeninfo.empresa)       
dw_movim.setitem(ll_fila,"mv_observ",'Ticket de Venta No. '+string(al_num_venta))                              
dw_movim.setitem(ll_fila,"mv_usado",'N')                      
dw_movim.setitem(ll_fila,"ve_numero",al_num_venta)                           
dw_movim.setitem(ll_fila,"es_codigo",is_estado)       
dw_movim.setitem(ll_fila,"gv_codigo",ls_grupoven) 	

update in_itebod
set ib_stock = ib_stock - :ac_pedido
where it_codigo = :as_pepa
and em_codigo = :str_appgeninfo.empresa
and su_codigo = :str_appgeninfo.sucursal
and bo_codigo = :str_appgeninfo.seccion;
if sqlca.sqlcode <> 0 then
                rollback using sqlca;       
                MessageBox("ERROR","No puedo actualizar el stock en la bodega.");
                return -1
end if

update in_itesucur
set it_stock = it_stock - :ac_pedido,
                it_stkreal = it_stkreal - :ac_pedido,
                it_stkdis = it_stkdis - :ac_pedido 
where it_codigo = :as_pepa
and em_codigo = :str_appgeninfo.empresa
and su_codigo = :str_appgeninfo.sucursal;
if sqlca.sqlcode <> 0 then
                rollback using sqlca;
                MessageBox("ERROR ","No puedo actualizar el stock en la sucursal.");
                return -1
end if

return 1
end function

public function integer premio_aniversario ();//Recolección de datos necesarios para ejecutar el algoritmo
Integer num_premio, contador// Sirve para verificar el stock de cada producto
Integer prem_tod_ent
String fecha
contador = 0
ls_fecha_limite = Date('31/05/14')
String ti_premio1, ti_premio2, ti_premio3, ti_premio4

ti_premio1 = 'GORRA30'
ti_premio2 = 'LIBRETA30'
ti_premio3 = 'GORRZAF30'
ti_premio4 = 'CAMISETA30'


DECLARE  PREMIO  CURSOR FOR

SELECT PR_SUCUR.SU_CODIGO,  PR_PREMIOS.PE_CODIGO, PR_PREMIOS.STOCK, PE_MIN,PE_MAX, FECHA_PREMIO, trunc(SYSDATE)
                                                                                                                                             FROM PR_PREMIOS, PR_SUCUR 
                                                                                                                                             WHERE PR_SUCUR.SU_CODIGO = PR_PREMIOS.SU_CODIGO
                                                                                                                                             AND PR_PREMIOS.SU_CODIGO = :str_appgeninfo.sucursal
                                                                                                                                             AND (PE_CODIGO in( :ti_premio1, :ti_premio2, :ti_premio3, :ti_premio4) );
OPEN PREMIO;
DO 
FETCH   PREMIO               INTO :ls_su_codigo,   :ls_pe_codigo, :ls_stock, :ls_premios_dia, :ls_premios_entregados, :ls_fecha_ul_premio, :ls_fecha_actual;

                               if sqlca.sqlcode <> 0 then exit  
                                                
                                IF(DaysAfter(ls_fecha_actual,ls_fecha_ul_premio) <> 0 or IsNull(ls_fecha_ul_premio) )  THEN // Resetea los premios cuando llega un nuevo dia
                
                                                               
                                                                                                                                                             //Genera el randomico para verificar si gana o no el premio 
                                                                                                                                                             //                            messagebox("FECHA","RESETEADO CON EXITO: "+ls_pe_codigo)
                                                                                                                                                                                            // Actualiza en la base el stock de premios //
                                                                                                                                                                            
                                                                                                                                                                                            UPDATE PR_PREMIOS
                                                                                                                                                                                            SET PR_PREMIOS.PE_MAX = 0,  PR_PREMIOS.PE_MIN = 0, FECHA_PREMIO = SYSDATE
                                                                                                                                                                                            WHERE PR_PREMIOS.SU_CODIGO = :ls_su_codigo
                                                                                                                                                                                            AND (PE_CODIGO in( :ls_pe_codigo) ); 
                                                                                                                                                                                            ls_premios_dia = 0 // resetea la variable de regalos diarios para recalcular 
                                                                                                                                                                             //********************************************/                  
                                                                                                                                                             
                                                                                                                                                                             //***************************************///
                                                                                              
                               END IF

                IF(ls_fecha_actual <= ls_fecha_limite ) THEN
                               IF( IsNull(ls_premios_dia) or ls_premios_dia = 0)  THEN  // Actualiza los premios diarios a entregar en factor al stock actual
                               
                                                               ls_premios_dia = ROUND(ls_stock / dias_restantes(ls_su_codigo,ls_fecha_limite, ls_fecha_actual),0)        // Calcula los premios por dia y por la cantidad de días restantes.
                                                               
                                                               
                                                                              if (ls_premios_dia < 1 ) THEN  //Permite entregar por lo menos un premio diario si la operación de calculo es menor a 1
                                                                                              ls_premios_dia = 1
                                                                              END IF
                                                                              if (ls_premios_dia = 0) THEN
                                                                                              ls_premios_dia = 0 
                                                                              END IF
                                                               
                                                               UPDATE PR_PREMIOS
                                                               SET PR_PREMIOS.PE_MIN = :ls_premios_dia
                                                                              WHERE PR_PREMIOS.SU_CODIGO = :ls_su_codigo
                                                               AND (PE_CODIGO in( :ls_pe_codigo) );
                                               
                               
                               END IF
                END IF
                               
LOOP WHILE TRUE;
//commit; //Realiza la actualizacion del stock de regalos diarios
CLOSE PREMIO;



IF(ls_fecha_actual <= ls_fecha_limite) THEN


                                                               num_premio = numeros_randomicos(4)
                                                               
                                                               IF(num_premio = 0) THEN
                                                                              num_premio = 1
                                                               END IF
                                                               
                                                               DO WHILE contador < 4
                                                               
                                                               IF (num_premio = 1) THEN
                                                                              
                                                                              SELECT PR_PREMIOS.PE_CODIGO, PR_PREMIOS.STOCK, PE_MIN,PE_MAX, FECHA_PREMIO
                                                                                              INTO   :ls_pe_codigo, :ls_stock, :ls_premios_dia, :ls_premios_entregados, :ls_fecha_ul_premio
                                                                                              FROM PR_PREMIOS, PR_SUCUR 
                                                                                              WHERE PR_SUCUR.SU_CODIGO = PR_PREMIOS.SU_CODIGO
                                                                                              AND PR_PREMIOS.SU_CODIGO = :str_appgeninfo.sucursal
                                                                                              AND (PE_CODIGO in( :ti_premio1) );
                                                                                              
                                                                                              IF ls_premios_entregados = ls_premios_dia THEN
                                                                                                              contador = contador +1
                                                                                                              num_premio = 2
                                                                                              ELSE
                                                                                                              contador = 4
                                                                                              END IF
                                                               END IF
                                                               
                                                               IF (num_premio = 2 ) THEN
                                                                              
                                                                                              SELECT PR_PREMIOS.PE_CODIGO, PR_PREMIOS.STOCK, PE_MIN,PE_MAX, FECHA_PREMIO
                                                                                              INTO   :ls_pe_codigo, :ls_stock, :ls_premios_dia, :ls_premios_entregados, :ls_fecha_ul_premio
                                                                                              FROM PR_PREMIOS, PR_SUCUR 
                                                                                              WHERE PR_SUCUR.SU_CODIGO = PR_PREMIOS.SU_CODIGO
                                                                                              AND PR_PREMIOS.SU_CODIGO = :str_appgeninfo.sucursal
                                                                                              AND (PE_CODIGO in( :ti_premio2) );
                                                               
                                                                                              IF ls_premios_entregados = ls_premios_dia THEN
                                                                                                              contador = contador +1
                                                                                                              num_premio = 3
                                                                                              ELSE
                                                                                                              contador = 4
                                                                                              END IF
                                                               
                                                               END IF
                                                               
                                                               IF (num_premio = 3 ) THEN  //and prem_tod_ent < (ls_premios_dia)
                                                                              
                                                                                              SELECT PR_PREMIOS.PE_CODIGO, PR_PREMIOS.STOCK, PE_MIN,PE_MAX, FECHA_PREMIO
                                                                                              INTO   :ls_pe_codigo, :ls_stock, :ls_premios_dia, :ls_premios_entregados, :ls_fecha_ul_premio
                                                                                              FROM PR_PREMIOS, PR_SUCUR 
                                                                                              WHERE PR_SUCUR.SU_CODIGO = PR_PREMIOS.SU_CODIGO
                                                                                              AND PR_PREMIOS.SU_CODIGO = :str_appgeninfo.sucursal
                                                                                              AND (PE_CODIGO in( :ti_premio3) );
                                                                                              
                                                                                              IF ls_premios_entregados = ls_premios_dia THEN
                                                                                                              contador = contador +1
                                                                                                              num_premio = 4
                                                                                              ELSE
                                                                                                              contador = 4
                                                                                              END IF
                                                                              
                                                               END IF
                                                               
                                                               IF (num_premio = 4 ) THEN  //and prem_tod_ent < (ls_premios_dia)
                                                                              
                                                                                              SELECT PR_PREMIOS.PE_CODIGO, PR_PREMIOS.STOCK, PE_MIN,PE_MAX, FECHA_PREMIO
                                                                                              INTO   :ls_pe_codigo, :ls_stock, :ls_premios_dia, :ls_premios_entregados, :ls_fecha_ul_premio
                                                                                              FROM PR_PREMIOS, PR_SUCUR 
                                                                                              WHERE PR_SUCUR.SU_CODIGO = PR_PREMIOS.SU_CODIGO
                                                                                              AND PR_PREMIOS.SU_CODIGO = :str_appgeninfo.sucursal
                                                                                              AND (PE_CODIGO in( :ti_premio4) );
                                                                                              
                                                                                              IF ls_premios_entregados = ls_premios_dia THEN
                                                                                                             contador = contador +1
                                                                                                              num_premio = 1
                                                                                              ELSE
                                                                                                              contador = 4
                                                                                              END IF
                                                                              
                                                               END IF
                                                               
                                                               
                                                               LOOP


///
                                               IF(DaysAfter(ls_fecha_actual,ls_fecha_ul_premio) = 0 or IsNull(ls_fecha_ul_premio)) THEN
                                               
                                               
                                                                              
                                                                                              IF(ls_stock > 0 and  ls_premios_entregados < (ls_premios_dia) ) THEN 
                                                                                                                             
                                                                                                                             //Genera el randomico para verificar si gana o no el premio 
                                                                                                                                             num_premio = numeros_randomicos(4)
                                                                                                                                             
                                                                                                                                             if(num_premio = 1 ) THEN
                                                                                                                                             
                                                                                                                                                             premio = 1
                                                                                                                                                             // Actualiza en la base el stock de premios //
                                                                                                                                             
                                                                                                                                                             UPDATE PR_PREMIOS
                                                                                                                                                             SET PR_PREMIOS.PE_MAX = :ls_premios_entregados + 1, PR_PREMIOS.FECHA_PREMIO = SYSDATE, PR_PREMIOS.STOCK = :ls_stock - 1
                                                                                                                                                             WHERE PR_PREMIOS.SU_CODIGO = :ls_su_codigo
                                                                                                                                                             AND (PE_CODIGO in( :ls_pe_codigo) );
//                                                                                                                                                         commit;
                                                                                                                                             //********************************************/                  
                                                                                                                                             else 
                                                                                                                                                             premio = 2
                                                                                                                                             END IF
                                                                                                                             //***************************************///
                                                                                              ELSE
                                                                                                                             premio = 3
                                                                                                              
                                                                              END IF                  
                                                               
                                                                              return premio
                                               
                                               END IF

END IF

end function

public function integer numeros_randomicos (integer limite);Integer li_premio2
li_premio2 = rand(limite)
return li_premio2
end function

public function integer entrega_promo_regalo (integer cant_premio, integer stock_in_premio, integer prem_entregados, date fecha_ul_premio);return 1
end function

public function integer dias_restantes (string f_sucursal, date f_fecha_limite, date f_fecha_actual);//IF (f_sucursal = '1') THEN
                               ls_premios_dia = DaysAfter(f_fecha_actual, f_fecha_limite) +1 
//            ELSE 
//                           ls_premios_dia = DaysAfter(f_fecha_actual, f_fecha_limite) - 3 // Se resta los dias que no se trabajan al mes - 1 para que tome la diferencias entre dias
//END IF

return ls_premios_dia
end function

public function integer actualiza_leyenda (string leyenda, integer num_fact);update fa_venta
set ve_leyenda = :leyenda
where em_codigo = 1
and su_codigo = :str_appgeninfo.sucursal and bo_codigo = :str_appgeninfo.seccion
and es_codigo = 2           and ve_numero = :num_fact; 
//COMMIT;                       
IF sqlca.sqlcode <> 0 THEN
ROLLBACK;
messageBox('Error Interno', 'No se puede insertar leyenda de obsequios en factura: ' + sqlca.sqlerrtext )
END IF
Return 1

  
end function

public function integer promociones (integer num_promo);//Creacion de Promocion Intaco 
//Modificado Por: Henry Pinchao
//Fecha Modificacion: 26/07/2016
      
		
		//PROMOCION PARA ENTREGA DE BOLETOS POR MARCA******************************//
num_promocion = num_promo // Permite desplegar el mensaje dependiendo de la promoción

IF (num_promo = 1) THEN

                               Integer ll_fila, li_i
                               Double  cantidad,  suma
                               String ls_mrcodigo
                               
                               
                               select stock
                               into :ls_stock
                               from pr_premios
                               where em_codigo = :str_appgeninfo.empresa
                               and su_codigo = :str_appgeninfo.sucursal and pe_codigo = 'BOLETO';
                               
                               
                               
                               IF ls_stock > 0 THEN
                               
                                               ll_fila = dw_det.rowcount( )
                                               suma = 0
                                               FOR  li_i = 1 to ll_fila 
                                                                                              
                                                                                              ls_mrcodigo = dw_det.getitemstring(li_i,"mr_codigo")               
                                                                                              cantidad = dw_det.getitemnumber(li_i,"desc3")
                               
                                                                                              if (ls_mrcodigo = '225' or ls_mrcodigo = '93') then
                                                                                                              suma = suma + cantidad                                                             
                                                                                                              end if
                                               NEXT 
                                               
                                               IF suma >= 20 THEN
                                                                                                              
                                                                                                              num_boletos = suma / 20

                                                                                                              IF( ls_stock >= num_boletos) THEN
                               
                                                                                                                                             update pr_premios
                                                                                                                                             set stock = stock - :num_boletos
                                                                                                                                             where em_codigo = :str_appgeninfo.empresa
                                                                                                                                             and su_codigo = :str_appgeninfo.sucursal and pe_codigo = 'BOLETO';
                                                                                                                                             
                                                                                                                                             return num_boletos
                                                                                                                             ELSE
                                                                                                                                             return 0
                                                                                                              END IF
                                                                                              ELSE 
                                                                                                              return 0
                                               END IF

                               END IF

                
END IF



// Promocion para los productos de latex US--- ************************///
                
IF(num_promo = 2) THEN
                               
                                               Long Contador_Galones
                                               
                                               SELECT IN_ITESUCUR.IT_STOCK
                                               INTO :ls_stock_producto           
                                               FROM IN_ITEM, IN_ITESUCUR
                                               WHERE (IN_ITEM.IT_CODIGO = IN_ITESUCUR.IT_CODIGO)
                                               AND IN_ITESUCUR.EM_CODIGO = IN_ITEM.EM_CODIGO
                                               AND IN_ITESUCUR.EM_CODIGO = :str_appgeninfo.empresa
                                               AND IN_ITESUCUR.SU_CODIGO = :str_appgeninfo.sucursal
			                                AND (IN_ITEM.IT_CODIGO = '30816');

                                               IF ls_stock_producto > 0 THEN 
                                                                                                                                                             // Cursor que recorre los productos que participan en la promoción para la entrega de US1000P-CU
                                                                                                                                                                            Contador_Galones = 0
                                                                                                                                                                            
                                                                                                                                                                            Declare items_promo cursor for  
                                                                                                                                                                            SELECT IN_ITEM.IT_CODANT
                                                                                                                                                                                                              FROM IN_ITEM
                                                                                                                                                                                                            WHERE     (IN_ITEM.IT_STKINI > 0)
                                                                                                                                                                                                            AND (IN_ITEM.IT_CODANT LIKE 'US1%GL')
                                                                                                                                                                                                            AND (IN_ITEM.IT_NOMBRE LIKE 'LATEX%');
                                                                                                                                                                                                                           
                                                                                                                                                                                            open items_promo;  
                                                                                                                                                                                                            do  
                                                                                                                                                                                                                           fetch items_promo into  :ls_item_promo;
                                                                                                                                                                                                                           if sqlca.sqlcode <> 0 then exit 
                                                                                                                                                                                                                           
                                                                                                                                                                                                                           ll_fila = dw_det.rowcount( )
                                                                                                                                                                                                                           
                                                                                                                                                                                                                           FOR  li_i = 1 to ll_fila 
                               
                                                                                                                                                                                                                                                           ls_cod_producto = dw_det.object.codant[li_i]
                                                                                                                                                                                                                                                           ls_cantidad_prod = dw_det.object.dv_cantid[li_i]
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
                                                                                                                                                                                                                                                           IF(ls_item_promo = ls_cod_producto ) THEN
                                                                                                                                                                                                                                                                          Contador_Galones = Contador_Galones + ls_cantidad_prod
                                                                                                                                                                                                                                                           END IF
                               
                                                                                                                                                                                                                           NEXT
                                                                                                                                                                                                                           
                                                                                                                                                                                                                           
                                                                                                                                                                                                                            IF(Contador_Galones >= 2) THEN
                                                                                                                                                                                                                                           
                                                                                                                                                                                                                                           num_prod_promo = Contador_Galones/2
                                                                                                                                                                                                                                           
                                                                                                                                                                                                                           END IF
                                                                                                                                                                                                                           
                                                                                                                             
                                                                                                                                                                                                                                           
                                                                                                                                                             loop while TRUE;  
                                                                                                                                                             close items_promo;  
                                                                                                                                                             
                                                                                                                                                             Integer  filas_factura
                                                                                                                                                             filas_factura = dw_det.rowcount( )
                                                                                                                                                             IF (filas_factura < 12) THEN
                                                                                                                                                                            IF Contador_Galones >= 2          THEN
                                                                                                                                                                                            
                                                                                                                                                                                            IF paso_producto_promocional('US1000P-CU', Integer(num_prod_promo), '30816' ) <> 1   THEN
                                                                                                                                                                                                            rollback;
                                                                                                                                                                                                            messageBox('Revise Información','No se puede grabar información del articulo de promociòn.')
                                                                                                                                                                                                            return -1
                                                                                                                                                                            
                                                                                                                                                                                            End if
                                                                                                                                                                                            
                                                                                                                                                                                                           prod_promo = prod_promo + 1
                                                                                                                                                                             END IF
                                                                                                                                                             ELSE
                                                                                                                                                                                                                            IF(num_prod_promo = 1)THEN
                                                                                                                                                                                                                                           messagebox("Alerta","El Cliente Gano " + String(num_prod_promo) + " Litro del US1000P-CU" + ", por favor divida~rlos productos en dos facturas para aplicar la promoción")
                                                                                                                                                                                                                                           ELSEIF(num_prod_promo >1)THEN
                                                                                                                                                                                                                                           messagebox("Alerta","El Cliente Gano " + String(num_prod_promo) + " Litros del US1000P-CU" + ", por favor divida~rlos productos en dos facturas para aplicar la promoción")
                                                                                                                                                                                                                           END IF
                                                                                                                                                                                            
                                                                                                                                                                                                                           return 1
                                                                                                                                                             END IF
                                                                                                              END IF
END IF



// Promocion para los productos EVANS para ganar mochila--- ************************///
                
IF(num_promo = 3) THEN

                               Long Contador_Sprites
                               int sucursales_promo
                               Integer existe_tarjeta
                                               
                                SELECT PS_VALOR
                               INTO :sucursales_promo
                               FROM PR_NUMSUC
                               WHERE SU_CODIGO = :str_appgeninfo.sucursal
                               AND PR_NOMBRE = 'PROMO';
                               
                               IF sucursales_promo = 1 THEN 
                                               
                                                SELECT IN_ITESUCUR.IT_STOCK
                                               INTO :ls_stock_producto           
                                               FROM IN_ITEM, IN_ITESUCUR
                                                WHERE (IN_ITEM.IT_CODIGO = IN_ITESUCUR.IT_CODIGO)
                                               AND IN_ITESUCUR.EM_CODIGO = IN_ITEM.EM_CODIGO
                                               AND IN_ITESUCUR.EM_CODIGO = :str_appgeninfo.empresa
                                               AND IN_ITESUCUR.SU_CODIGO = :str_appgeninfo.sucursal
                                   AND (IN_ITEM.IT_CODIGO = '31336');

                                               IF ls_stock_producto > 0 THEN 
                                                                                                                                                             // Cursor que recorre los productos que participan en la promoción para la entrega de US1000P-CU
                                                                                                                                                                            Contador_Sprites = 0
                                                                                                                                                                            
                                                                                                                                                                            Declare items_promo_mochila cursor for  
                                                                                                                                                             
                                                                                                                                                                            SELECT IN_ITEM.IT_CODANT
                                                                                                                                                                            FROM IN_ITEM
                                                                                                                                                                            WHERE (IN_ITEM.MR_CODIGO = '141')
                                                                                                                                                                            AND(  (IN_ITEM.IT_NOMBRE LIKE '%SPRAY EVANS%[12]')
                                                                                                                                                                  OR ((IN_ITEM.IT_NOMBRE LIKE '%SPRAY STREET%')));
                                                                                                                                             
                                                                                                                                                                            open items_promo_mochila;  
                                                                                                                                                                                                            do  
                                                                                                                                                                                                                           fetch items_promo_mochila into  :ls_item_promo;
                                                                                                                                                                                                                           if sqlca.sqlcode <> 0 then exit 
                                                                                                                                                                                                                           
                                                                                                                                                                                                                           ll_fila = dw_det.rowcount( )
                                                                                                                                                                                                                           
                                                                                                                                                                                                                           FOR  li_i = 1 to ll_fila 
                               
                                                                                                                                                                                                                                                           ls_cod_producto = dw_det.object.codant[li_i]
                                                                                                                                                                                                                                                           ls_cantidad_prod = dw_det.object.dv_cantid[li_i]
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
                                                                                                                                                                                                                                                           IF(ls_item_promo = ls_cod_producto ) THEN
                                                                                                                                                                                                                                                                          Contador_Sprites = Contador_Sprites + ls_cantidad_prod
                                                                                                                                                                                                                                                           END IF
                               
                                                                                                                                                                                                                           NEXT
                                                                                                                                                                                                                           

                                                                                                                                                                                                                           existe_tarjeta = verificar_tarjeta()
                                                                                                                                                                                            
                                                                                                                                                                                                                            
                                                                                                                                                                                                                            IF(Contador_Sprites >= 24 AND existe_tarjeta = 1) THEN
                                                                                                                                                                                                                                           
                                                                                                                                                                                                                                           num_prod_promo = 1
                                                                                                                                                                                                                           
                                                                                                                                                                                                                           ELSEIF (Contador_Sprites >= 36 AND existe_tarjeta = 0) THEN
                                                                                                                                                                                                                                           
                                                                                                                                                                                                                                           num_prod_promo = 1
                                                                                                                                                                                                                                           
                                                                                                                                                                                                                           END IF
                                                                                                                                                                                                                           
                                                                                                                             
                                                                                                                                                                                                                                           
                                                                                                                                                             loop while TRUE;  
                                                                                                                                                             close items_promo_mochila;  
                                                                                                                                                             
                                                                                                                                                             filas_factura = dw_det.rowcount( )
                                                                                                                                                             
                                                                                                                                             
                                                                                                                                                             IF (filas_factura < 12) THEN
                                                                                                                                                                            IF num_prod_promo = 1 THEN

                                                                                                                                                                                                                          
                                                                                                                                                                                                            IF                 messagebox("PROMOCION EVANS", "Su Cliente se hizo acreedor al precio especial de la Mochila Evans,~r¿Desea ingresar el valor de la misma en la factura para llevarsela...?", Question!, YesNo!, 2  ) =  1 THEN
                                                                                                                                                                                                                                                           IF paso_producto_promocional('MEP', Integer(num_prod_promo), '31932') <> 1   THEN
                                                                                                                                                                                                                                                                          rollback;
                                                                                                                                                                                                                                                                          messageBox('Revise Información','No se puede grabar información del articulo de promoción.')
                                                                                                                                                                                                                                                                          return -1
                                                                                                                                                                                                                                                           ELSE
                                                                                                                                                                                                                                                                                          prod_promo = prod_promo + 1
                                                                                                                                                                                                                                                                          return 3 // Retorna 3 si Gana Promo, sirva para verificar si el cliente gano y acepto el premio al momento de insertar promocion en fa_obsequios
                                                                                                                                                                                                                                                           End if
                                                                                                                                                                                                                                                           
                                                                                                                                                                                                            ELSE
                                                                                                                                                                                                                                                           ls_promociones = ls_promociones + ', 31932'
                                                                                                                                                                                                            END IF
                                                                                                                                                             END IF
                                                                                                                                             ELSEIF (filas_factura = 12 and num_prod_promo = 1) THEN

                                                                                                                                                                                                                                           messagebox("Alerta","El Cliente se hizo acreedor al precio especial de la Mochila EVANS,~rpor favor dividir en dos facturas para ingresar el producto")
                                                                                                                                                                                                                                           return 3
                                                                                                                                             END IF
                                                                                                                                                             
                                                                                                                             
                                                                                                                                             
                                                                              
                                                               END IF

                               END IF // Cierra sucursal promo

END IF
                               
//************************************************************************************//////////////

/////PROMOCION DE BOLETOSTREX PARA UNA SUCURSAL EN ESPECIAL  ***************///

IF (num_promo = 4) THEN
                
                                                                               
                                                                               
                                                               num_boletos = 0
                                                                                                                                                                                              lc_valor_pintulac = dw_det.GetItemdecimal(1, "cc_tarjeta")

                                                                                                                                                                                                            select stock
                                                                                                                                                                                                            into :ls_stock
                                                                                                                                                                                                            from pr_premios
                                                                                                                                                                                                            where em_codigo = :str_appgeninfo.empresa
                                                                                                                                                                                                            and su_codigo = :str_appgeninfo.sucursal
                                                                                                                                                                                                            and pe_codigo = 'BOLETOTRECX';            
                                                                                                                                                                                                                           
                                             
                                                               
                                                               IF ls_stock>0 and lc_valor_pintulac>=10 THEN
                                                                    
                                                                                                                                                                                                                                           lc_valor_pintulac = dw_det.GetItemdecimal(1, "cc_tarjeta")
                                                                                                                             num_boletos = truncate(lc_valor_pintulac / 10,0) 
                               
                                               
                                                                              IF ls_stock >= num_boletos THEN
                                                                                              
                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                                                                              SELECT SU_NOMBRE
                                                                                              INTO :ls_nom_sucursal_envio
                                                                                              FROM PR_SUCUR
                                                                                              WHERE SU_CODIGO = :ls_cod_sucursal_envio;
                                                                              
                                                                                              messagebox('SORTEO','Gano ' + string(num_boletos)+' BOLETO(S) para sorteo  de inauguración.')
                                                                                                                                                             
                                                                                              update pr_premios
                                                                                              set stock = stock - :num_boletos
                                                                                              where em_codigo = :str_appgeninfo.empresa
                                                                                              and su_codigo = :str_appgeninfo.sucursal and pe_codigo = 'BOLETOTRECX';
                                                               
                                                                                              return num_boletos
                                                                              
                                                                                                                                                                                                                                           ELSEIF  ls_stock <= num_boletos THEN

                                                                                                                                                                                                                                                                          messagebox('SORTEO','Gano ' + string(ls_stock)+' BOLETO(S) para sorteo  de inauguración. STOCK AGOTADO')
                                                                                                                                                                                                                                                                                                                                         
                                                                                                                                                                                                                                                                                             update pr_premios
                                                                                              set stock = 0
                                                                                              where em_codigo = :str_appgeninfo.empresa
                                                                                              and su_codigo = :str_appgeninfo.sucursal and pe_codigo = 'BOLETOTRECX';
                                                                                                              Return ls_stock
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
                                                                                                                                                                                                                                           ELSE
                                                                                                                                                                                                                                                                                                          Return 0
                                                                            END IF
                                                               END IF

    END IF
                


//**********************************************************************///


//PROMOCION PARA ENTREGA DE BOLETOS POR GRUPO DE MARCA******************************//


IF (num_promo = 5) THEN

                               String ls_grmcodigo
						 long ll_stock_1
                               num_boletos = 0 
                               cantidad = 0
                                                               
						select it_stock
						into :ls_stock
						from in_itesucur
						where su_codigo = :str_appgeninfo.sucursal
						and it_codigo = '2071';  //Stock Producto Camiseta Wesco CPW

						select it_stock
						into :ll_stock_1
						from in_itesucur
						where su_codigo = :str_appgeninfo.sucursal
						and it_codigo = '22204';  //Stock Producto Gorra Wesco GPW

                                                            
                               IF ls_stock > 0 or ll_stock_1>0 THEN
                               
                                               ll_fila = dw_det.rowcount( )
                                               suma = 0
                                                               
                                               
                                               FOR  li_i = 1 to ll_fila 
                                                                                              
                                                                                              ls_mrcodigo = dw_det.getitemstring(li_i,"mr_codigo")               
                                                                                              cantidad = dw_det.getitemnumber(li_i,"cc_coniva")
                                                                                              
                                                                                              SELECT GM_CODIGO 
                                                                                              INTO :ls_grmcodigo
                                                                                              FROM IN_MARCAS																												
                                                                                              WHERE MR_CODIGO = :ls_mrcodigo;
                                                                                              
                                                                                              
                                                                                              if (ls_grmcodigo = '14' ) then
                                                                                                              suma = suma + cantidad                                                             
                                                                                              end if
                                               NEXT 
                                               
                                              				 IF suma >= 50 THEN
                                                                                                              
                                                                                                              num_boletos = suma / 50
                                                                                                              
                                                                                                              IF( (ls_stock + ll_stock_1) >= num_boletos) THEN
																										             return num_boletos   
                                                                                                                
																						ELSEIF( (ls_stock + ll_stock_1) < num_boletos and (ls_stock + ll_stock_1) >0 ) THEN
																											       return ls_stock
                                                                                                              END IF
		                                                           ELSE 
																								
                                               													     return 0
                                         END IF
							ELSE
									return 0
                               END IF
END IF




// Promocio para los productos de latex US entrega de boletos--- ************************///
                
IF(num_promo = 6) THEN
                               
		Long Contador_Galones_Latex, Contador_Galones_Satin, Contador_Canecas_Latex, Contador_Canecas_Satin
		Integer Boletos_Satin, Boletos_Latex, Boletos_Total, Boletos_Latex_Ca, Boletos_Satin_Ca
		String ls_nom_producto
		
		select stock
		into :ls_stock_producto
		from pr_premios
		where em_codigo = :str_appgeninfo.empresa
		and su_codigo = :str_appgeninfo.sucursal and pe_codigo = 'RASPADITA';
		
		IF ls_stock_producto > 0 THEN 
				// Cursor que recorre los productos que participan en la promoción para la entrega de US1000P-CU
				Contador_Galones_Latex = 0
				Contador_Galones_Satin= 0
				Contador_Canecas_Latex = 0
				Contador_Canecas_Satin = 0
				
				Declare items_promo_unidas cursor for  
				SELECT IN_ITEM.IT_CODANT
				FROM IN_ITEM
				WHERE     (IN_ITEM.IT_STKINI > 0) AND
				(  (IN_ITEM.IT_CODANT LIKE 'US1%GL') 
				OR (IN_ITEM.IT_CODANT LIKE 'USS%GL')
				OR (IN_ITEM.IT_CODANT LIKE 'U3%GL'))
				AND (IN_ITEM.IT_CODANT NOT LIKE 'US1016-GL')
				AND (IN_ITEM.IT_CODANT NOT LIKE 'US1018-GL')
				AND (IN_ITEM.IT_CODANT NOT LIKE 'US1019-GL')
				AND  ( (IN_ITEM.IT_NOMBRE LIKE 'LATEX%')
				OR (IN_ITEM.IT_NOMBRE LIKE 'SUPREMO%'))  
				OR  (IN_ITEM.IT_CODANT LIKE 'U300%CA')
				OR   (IN_ITEM.IT_CODANT LIKE 'US1%CA')
				OR   (IN_ITEM.IT_CODANT LIKE 'USS1%CA') ;
																																																																																																																																																																																																																																																																																																																																																										 
				open items_promo_unidas;  
				do  
					fetch items_promo_unidas into  :ls_item_promo;
					if sqlca.sqlcode <> 0 then exit 
					ll_fila = dw_det.rowcount( )
					FOR  li_i = 1 to ll_fila 
					
						  ls_cod_producto = dw_det.object.codant[li_i]
						  ls_nom_producto = dw_det.object.nombre[li_i]
						  ls_cantidad_prod = dw_det.object.dv_cantid[li_i]
																																																																										 
						IF(ls_item_promo = ls_cod_producto ) THEN
								IF POS(ls_nom_producto ,'SATIN') > 0  and  POS(ls_cod_producto ,'-CA')=0 THEN
										Contador_Galones_Satin = Contador_Galones_Satin + ls_cantidad_prod  // Satin Supremo Galon
								ELSEIF POS(ls_nom_producto  ,'LATEX') >0  and  POS(ls_cod_producto ,'-CA')=0  THEN
										Contador_Galones_Latex = Contador_Galones_Latex + ls_cantidad_prod //Latex Supremo Galon
								ELSEIF POS(ls_nom_producto  ,'LATEX') >0  and  POS(ls_cod_producto ,'-CA')>0  THEN
										Contador_Canecas_Latex = Contador_Canecas_Latex + ls_cantidad_prod //Latex Supremo Canecas
								ELSEIF POS(ls_nom_producto ,'SATIN') > 0  and  POS(ls_cod_producto ,'-CA')>0 THEN
										Contador_Canecas_Satin = Contador_Canecas_Satin + ls_cantidad_prod //Satin Supremo Canecas                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   Contador_Canecas_Latex = Contador_Canecas_Latex + ls_cantidad_prod                  
								END IF
						END IF
					
					NEXT
				loop while TRUE;  
				close items_promo_unidas;  
				
				Boletos_Satin = Contador_Galones_Satin *  2
				Boletos_Latex = Contador_Galones_Latex  
				Boletos_Latex_Ca =       Contador_Canecas_Latex * 5                                                                                                                                                                                                                                               
				Boletos_Satin_Ca = Contador_Canecas_Satin * 10
				Boletos_Total = Boletos_Satin + Boletos_Latex + Boletos_Latex_Ca + Boletos_Satin_Ca
																																				
				IF ls_stock_producto >= Boletos_Total and Boletos_Total > 0 THEN
					 update pr_premios
					 set stock = stock - :Boletos_Total
					 where em_codigo = :str_appgeninfo.empresa
					  and su_codigo = :str_appgeninfo.sucursal and pe_codigo = 'RASPADITA';
					 return Boletos_Total
				ELSEIF    ls_stock_producto < Boletos_Total and Boletos_Total > 0  THEN
					Return ls_stock_producto
				ELSE                                                                                                                                                                                                                                                                                                                                                
					Return 0
				END IF
		END IF
END IF



// Promocion entrega productos para navidad por montos de precio

IF(num_promo = 7) THEN


                                                                                                                                                              
                                               Decimal  cantidad_total
                                               Integer ll_stock_producto1
  
                                               //Integer Boletos_Satin, Boletos_Latex, Boletos_Total
                                               //String ls_nom_producto
                                               //
															  
						                    select stock
                                               into :ls_stock_producto
                                               from pr_premios
                                               where em_codigo = :str_appgeninfo.empresa
                                               and su_codigo = :str_appgeninfo.sucursal and pe_codigo = 'PREMIODEWALT';

                                               cantidad_total = dw_det.getitemnumber(dw_det.getrow(),"cc_tarjeta")
															  
                                                                                                                                                                                                              
                                               IF(cantidad_total >= 10 and cantidad_total<= 29.99  ) THEN
                                               
                                                               
                                                                                              select stock
                                                                                              into :ls_stock_producto
                                                                                              from pr_premios
                                                                                              where em_codigo = :str_appgeninfo.empresa
                                                                                              and su_codigo = :str_appgeninfo.sucursal and pe_codigo = 'NAIPEP';
                                                                                              
                                                                                               select stock
                                                                                              into :ll_stock_producto1
                                                                                              from pr_premios
                                                                                              where em_codigo = :str_appgeninfo.empresa
                                                                                              and su_codigo = :str_appgeninfo.sucursal and pe_codigo = 'CALENDARIOP';
                                                                                              
                                                               
                                                                                                                             IF ls_stock_producto > 0 AND ll_stock_producto1 > 0  and li_premio = 0 THEN 
                                                                                                                                                             gb_obsequio.visible = true
                                                                                                                                                             rb_cal.visible = true
                                                                                                                                                             rb_na.visible = true
                                                                                                                                                             dw_cab.enabled = false
                                                                                                                                                                                                                                                                                                                         
                                                                                                                             ELSEIF(ls_stock_producto > 0 AND ll_stock_producto1 = 0) THEN
                                                                                                                                                             gb_obsequio.visible = false
                                                                                                                                                             rb_cal.visible = false
                                                                                                                                                             rb_na.visible = false
                                                                                                                                                             li_premio = 1
                                                                                                                             ELSEIF(ls_stock_producto = 0 AND ll_stock_producto1 > 0)                THEN
                                                                                                                                                                            gb_obsequio.visible = false
                                                                                                                                                                            rb_cal.visible = false
                                                                                                                                                                            rb_na.visible = false
                                                                                                                                                                            li_premio = 2
                                                                                                                             ELSEIF(ls_stock_producto = 0 AND ll_stock_producto1 = 0) THEN
                                                                                                                                                                            gb_obsequio.visible = false
                                                                                                                                                                            rb_cal.visible = false
                                                                                                                                                                            rb_na.visible = false
                                                                                                                                                                            li_premio = 0
                                                                                                                                                                            
                                                                                                                              END IF              
                                                                              
                                                                                                                             
                                                                                                                             IF li_premio = 1 THEN
                                                                                                                                             
                                                                                                                                                             messagebox('PREMIO','Gano un naipe por promoción de navidad.')
                                                                                                                                                          
                                                                                                                                                              update pr_premios
                                                                                                                                                             set stock = stock - 1
                                                                                                                                                             where em_codigo = :str_appgeninfo.empresa
                                                                                                                                                             and su_codigo = :str_appgeninfo.sucursal and pe_codigo = 'NAIPEP';
                                                                                                                                                             
                                                                                                                             ELSEIF li_premio = 2 THEN
                                                                                                                                                                            messagebox('PREMIO','Gano un Calendario por promoción de navidad.')
                                                                                                                                                                                                                                                                                                                            update pr_premios
                                                                                              set stock = stock - 1
                                                                                              where em_codigo = :str_appgeninfo.empresa
                                                                                              and su_codigo = :str_appgeninfo.sucursal and pe_codigo = 'CALENDARIOP';
                                                                                                                             END IF
                                                                                                                             
                                                                                              
                                               ELSEIF(cantidad_total >= 30 and cantidad_total <= 50) THEN
                                                               li_premio = 0
                                                               select stock
                                                               into :ls_stock_producto
                                                               from pr_premios
                                                               where em_codigo = :str_appgeninfo.empresa
                                                               and su_codigo = :str_appgeninfo.sucursal and pe_codigo = 'CUADERNO';
                                                               
                                                               IF(ls_stock_producto > 0 ) THEN
                                                                              li_premio = 3
                                                                              messagebox('PREMIO','Gano un Cuaderno por promoción de navidad.')
                                                                              update pr_premios
                                                                              set stock = stock - 1
                                                                              where em_codigo = :str_appgeninfo.empresa
                                                                              and su_codigo = :str_appgeninfo.sucursal and pe_codigo = 'CUADERNO';
                                                               ELSE
                                                                              li_premio = 0
                                                               END IF
                                                               
                                               ELSEIF(cantidad_total > 50 ) THEN
                                                               
                                                               li_premio = 0
                                                               select stock
                                                               into :ls_stock_producto
                                                               from pr_premios
                                                               where em_codigo = :str_appgeninfo.empresa
                                                               and su_codigo = :str_appgeninfo.sucursal and pe_codigo = 'CAMISETAP';
                                                               
                                                                 IF(ls_stock_producto > 0 ) THEN
                                                                              li_premio = 4
                                                                              messagebox('PREMIO','Gano una Camiseta por promoción de navidad.')
                                                                              update pr_premios
                                                                              set stock = stock - 1
                                                                              where em_codigo = :str_appgeninfo.empresa
                                                                              and su_codigo = :str_appgeninfo.sucursal and pe_codigo = 'CAMISETAP';
                                                               ELSE
                                                                              li_premio = 0
                                                               END IF
                                                               
                                                                
                                               END IF
                                               
                                               return li_premio
                                               
END IF
                                              


// Promocion DEWALT por cada 50 dolares en compra un premio de la promo hasta un maximo de 5 premios o 250$ 


IF (num_promo = 8) THEN

                               num_boletos = 0
                               cantidad = 0
							ls_stock = 0
                                                               
                               select stock
                               into :ls_stock
                               from pr_premios
                               where em_codigo = :str_appgeninfo.empresa
                               and su_codigo = :str_appgeninfo.sucursal 
                               and pe_codigo = 'PREMIODEWALT';
                               
                               
                               
                               IF ls_stock > 0 THEN
                               
                                               ll_fila = dw_det.rowcount( )
                                               suma = 0
                                                               
                                               
                                               FOR  li_i = 1 to ll_fila 
                                                                                              
                                                                                              ls_mrcodigo = dw_det.getitemstring(li_i,"mr_codigo")               
                                                                                              cantidad = dw_det.getitemnumber(li_i,"cc_coniva")
                                                                                              
//                                                                                              SELECT GM_CODIGO 
//                                                                                              INTO :ls_grmcodigo
//                                                                                              FROM IN_MARCAS
//                                                                                              WHERE MR_CODIGO = :ls_mrcodigo;
//                                                                                              
                                                                                              
                                                                                              if (ls_mrcodigo = '93' ) then
                                                                                                              suma = suma + cantidad                                                             
                                                                                              end if
                                               NEXT 
                                               
                                               IF suma >= 50.00 THEN
                                                                                                              
                                                                                                              num_boletos = suma / 50
                                                                                                              
																								  IF 	num_boletos > 5 THEN
																										num_boletos =5
																								   END IF
																								  
																								  
                                                                                                              IF( ls_stock >= num_boletos) THEN
                               
                                                                                                                                             update pr_premios
                                                                                                                                             set stock = stock - :num_boletos
                                                                                                                                             where em_codigo = :str_appgeninfo.empresa
                                                                                                                                             and su_codigo = :str_appgeninfo.sucursal 
																															  and pe_codigo = 'PREMIODEWALT';
                                                                                                                                             
                                                                                                                                             return num_boletos
																																															
																								 ELSEIF( ls_stock <= num_boletos and ls_stock>0) THEN
																								   							   update pr_premios
                                                                                                                                             set stock = 0
                                                                                                                                             where em_codigo = :str_appgeninfo.empresa
                                                                                                                                             and su_codigo = :str_appgeninfo.sucursal 
																															  and pe_codigo = 'PREMIODEWALT';
																															  
																								 							messagebox("Aviso", "El Stock de los Premios se ha terminado.. Se entregaran los premios que quedan")
																															return ls_stock
																								END IF
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                               ELSE 
                                                                                                              return 0 // retorna si es menor a 50 Dolares
                                               END IF

      					   ELSE 
                                                                                                              return 0 // retorna si no existe stock
                              END IF

                
END IF

// Promo que entrega premio por compra de productos

IF (num_promo = 9) THEN
	
String ls_fbcodigo, ls_clcodigo
decimal suma_unidas, ll_doble

		num_boletos = 0
		
		select stock
		into :ls_stock_producto
		from pr_premios
		where em_codigo = :str_appgeninfo.empresa
		and su_codigo = :str_appgeninfo.sucursal and pe_codigo = 'BOLETO';
		
		IF ls_stock_producto > 0 THEN

				  ll_fila = dw_det.rowcount( )
				  suma_unidas = 0
				  FOR  li_i = 1 to ll_fila 
						 ls_fbcodigo = dw_det.getitemstring(li_i,"fb_codigo")               
						 cantidad = dw_det.getitemnumber(li_i,"cc_coniva")
  		 				ls_cod_producto = dw_det.object.codant[li_i]
						 if (ls_fbcodigo = '2' ) then
							
								Select cl_codigo 
								into  :ls_clcodigo
								from in_item
								where it_codant = :ls_cod_producto;
								
								choose case  ls_clcodigo
								case 'A305', 'A101', 'A102', 'A501', 'A201'
									  suma_unidas = suma_unidas + cantidad   	
								end choose
						end if
				  NEXT 
				  
				ll_doble = 0					  
                                               
				IF suma_unidas >= 25.00 THEN
						num_boletos = int(suma_unidas / 25)
				END IF
	
																																								
				IF ls_stock_producto >= num_boletos and num_boletos > 0 THEN
					 update pr_premios
					 set stock = stock - :num_boletos
					 where em_codigo = :str_appgeninfo.empresa
					  and su_codigo = :str_appgeninfo.sucursal and pe_codigo = 'BOLETO';
					 return num_boletos
				ELSEIF    ls_stock_producto < num_boletos and num_boletos > 0  THEN
					 update pr_premios
					 set stock = 0
					 where em_codigo = :str_appgeninfo.empresa
					  and su_codigo = :str_appgeninfo.sucursal and pe_codigo = 'BOLETO';
					  Return ls_stock_producto
				ELSE                                                                                                                                                                                                                                                                                                                                                
					Return 0
				END IF
	END IF
	
END IF	
	
IF (num_promo = 10) THEN
	
String ls_codprod
integer numboletos, suma_intaco

		select stock
		into :ls_stock_producto
		from pr_premios
		where em_codigo = :str_appgeninfo.empresa
		and su_codigo = :str_appgeninfo.sucursal and pe_codigo = 'BOLETO';

		IF ls_stock_producto > 0 THEN
			
				                               
				  ll_fila = dw_det.rowcount( )
				  numboletos = 0
				  suma_intaco = 0
				  FOR  li_i = 1 to ll_fila 
						 ls_fbcodigo = dw_det.getitemstring(li_i,"fb_codigo")               
						 cantidad = dw_det.getitemnumber(li_i,"cc_coniva")
						 ls_codprod = dw_det.object.codant[li_i]
						 
						 if (ls_fbcodigo = '16' and ls_codprod<>'CBT-25K' and ls_codprod<>'CBT-50K' and ls_codprod<>'CBT-5K') then
											  suma_intaco = suma_intaco + cantidad   	
						end if
				  NEXT 
				  
					  
			IF suma_intaco >= 35.00 THEN
				
				num_boletos = int(suma_intaco/35)
			
			END IF		
																																								
				IF ls_stock_producto >= num_boletos and num_boletos > 0 THEN
					 update pr_premios
					 set stock = stock - :num_boletos
					 where em_codigo = :str_appgeninfo.empresa
					  and su_codigo = :str_appgeninfo.sucursal and pe_codigo = 'BOLETO';
					 return num_boletos
				ELSEIF    ls_stock_producto < num_boletos and num_boletos > 0  THEN
					 update pr_premios
					 set stock = 0
					 where em_codigo = :str_appgeninfo.empresa
					  and su_codigo = :str_appgeninfo.sucursal and pe_codigo = 'BOLETO';
					Return ls_stock_producto
					
				ELSE                                                                                                                                                                                                                                                                                                                                                
					Return 0
				END IF
				
			END IF                      
		
	END IF
	



// Promocion entrega productos para navidad por montos de precio

IF(num_promo = 11) THEN

  //Integer Boletos_Satin, Boletos_Latex, Boletos_Total
                                               //String ls_nom_producto
                                               //
															  
						                   cantidad_total = dw_det.getitemnumber(dw_det.getrow(),"cc_tarjeta")
															  
                                                                                                                                                                                                              
                                               IF(cantidad_total >= 10 and cantidad_total<= 20  ) THEN
                                                                                                             
                                                                                              select stock
                                                                                              into :ls_stock_producto
                                                                                              from pr_premios
                                                                                              where em_codigo = :str_appgeninfo.empresa
                                                                                              and su_codigo = :str_appgeninfo.sucursal and pe_codigo = 'CAMISETAP';
                                                                                      
																					IF ls_stock_producto > 0  THEN 
																							li_premio = 1                                                                                                                                                                                       
																							messagebox('PREMIO','Gano una Camiseta por promoción Pintulac.')
																							update pr_premios
																							set stock = stock - 1
																							where em_codigo = :str_appgeninfo.empresa
																							and su_codigo = :str_appgeninfo.sucursal and pe_codigo = 'CAMISETAP';
																					ELSEIF(ls_stock_producto = 0 )   THEN
																							li_premio = 0
																													 
																					END IF              
																                                              
                                               ELSEIF(cantidad_total >20) THEN
                                                               li_premio = 0
                                                               select stock
                                                               into :ls_stock_producto
                                                               from pr_premios
                                                               where em_codigo = :str_appgeninfo.empresa
                                                               and su_codigo = :str_appgeninfo.sucursal and pe_codigo = 'GORRA';
                                                               
                                                               IF(ls_stock_producto > 0 ) THEN
                                                                              li_premio = 2
                                                                              messagebox('PREMIO','Gano una Gorra por promoción Pintulac.')
                                                                              update pr_premios
                                                                              set stock = stock - 1
                                                                              where em_codigo = :str_appgeninfo.empresa
                                                                              and su_codigo = :str_appgeninfo.sucursal and pe_codigo = 'GORRA';
                                                               ELSE
                                                                              li_premio = 0
                                                               END IF
                                                               
                                               
                                                                
                                               END IF
                                               
                                               return li_premio
                                               
END IF
                                              
															 
// Promo que entrega premio por compra de productos

IF (num_promo = 12 ) THEN
	
		num_boletos = 0
	
		select stock
		into :ls_stock_producto
		from pr_premios
		where em_codigo = :str_appgeninfo.empresa
		and su_codigo = :str_appgeninfo.sucursal and pe_codigo = 'CAMISETA';
		
		
		
		IF ls_stock_producto > 0 THEN
			
						
				Declare items_promo_pintulac cursor for  
				SELECT IT_CODANT
				FROM IN_ITEM
				WHERE IT_CODANT IN('P17200-CA','P17200C-CA','P17200S-CA','P17202-CA','P17203-CA','P17274P-CA','P17275T-CA','P17276D-CA','P17277A-CA','P17239-CA');
																											  
				open items_promo_pintulac;  
				do  
				fetch items_promo_pintulac into  :ls_item_promo;
				if sqlca.sqlcode <> 0 THEN
					exit
				END IF
				ll_fila = dw_det.rowcount( )
				FOR  li_i = 1 to ll_fila 
				
						ls_cod_producto = dw_det.object.codant[li_i]
						ls_nom_producto = dw_det.object.nombre[li_i]
						ls_cantidad_prod = dw_det.object.dv_cantid[li_i]
																																																																								 
						IF(ls_item_promo = ls_cod_producto ) THEN
							num_boletos = num_boletos + ls_cantidad_prod 
						
						END IF
				
				NEXT
				loop while TRUE;  
				close items_promo_pintulac;  
			END IF		
																																								
				IF ls_stock_producto >= num_boletos and num_boletos > 0 THEN
					 update pr_premios
					 set stock = stock - :num_boletos
					 where em_codigo = :str_appgeninfo.empresa
					  and su_codigo = :str_appgeninfo.sucursal and pe_codigo = 'CAMISETA';
					 return num_boletos
				ELSEIF    ls_stock_producto < num_boletos and num_boletos > 0  THEN
					Return ls_stock_producto
				ELSE                                                                                                                                                                                                                                                                                                                                                
					Return 0
				END IF
	END IF
	
	// Promo que entrega premio por compra de productos igual a la anterior
	
	IF (num_promo = 13 ) THEN
	
						ls_cod_producto = ''
						ls_nom_producto = ''
						ls_cantidad_prod = 0
						num_boletos = 0
	
		select stock
		into :ls_stock_producto
		from pr_premios
		where em_codigo = :str_appgeninfo.empresa
		and su_codigo = :str_appgeninfo.sucursal and pe_codigo = 'PARAGUAS';
		
		
		
		IF ls_stock_producto > 0 THEN
				
				Integer li_mod
						
				Declare items_promo_permaseal cursor for  
				SELECT IT_CODANT
				FROM IN_ITEM
				WHERE IT_CODANT IN('W1150-CA','W1160-CA');
																			  
				open items_promo_permaseal;  
				do  
				fetch items_promo_permaseal into  :ls_item_promo;
				if sqlca.sqlcode <> 0 THEN
					exit
				END IF
				ll_fila = dw_det.rowcount( )
				FOR  li_i = 1 to ll_fila 
				
						ls_cod_producto = dw_det.object.codant[li_i]
						ls_nom_producto = dw_det.object.nombre[li_i]
					

																																																																					 
						IF(ls_item_promo = ls_cod_producto  ) THEN
									ls_cantidad_prod  = ls_cantidad_prod + dw_det.object.dv_cantid[li_i]
						END IF 
				
				NEXT
				loop while TRUE;  
				close items_promo_permaseal;  
				
				if	ls_cantidad_prod > 1 then
									li_mod = ls_cantidad_prod / 2
									num_boletos = num_boletos + li_mod
				end if
				
			END IF		
																																								
				IF ls_stock_producto >= num_boletos and num_boletos > 0 THEN
					 update pr_premios
					 set stock = stock - :num_boletos
					 where em_codigo = :str_appgeninfo.empresa
					  and su_codigo = :str_appgeninfo.sucursal and pe_codigo = 'PARAGUAS';
					 return num_boletos
				ELSEIF    ls_stock_producto < num_boletos and num_boletos > 0  THEN
					Return ls_stock_producto
				ELSE                                                                                                                                                                                                                                                                                                                                                
					Return 0
				END IF
	END IF
	
	




// Promocion para los productos productos PINTUCO--- ************************///
                
IF(num_promo = 14) THEN   //1

	Integer  i

//num_promocion = num_promo // Permite desplegar el mensaje dependiendo de la promoción
//Integer num_boletos
//String ls_prod_promo, ls_prod_fabricante, ls_stock_promo, ls_cod_producto, ls_codant_producto
//Dec{2} ldd_cant_total_promo
//
			ls_codant_producto = ''
			ls_nom_producto = ''
			ls_cantidad_prod = 0
			ls_cod_producto = ''
			ls_cod_fabricante = ''
			ldd_cant_total_promo = 0
			ldd_val_total_promo = 0
			i = 1
			
		

			ll_fila = dw_det.rowcount( )
				FOR  li_i = 1 to ll_fila 
				
						ls_cod_producto = dw_det.object.it_codigo[li_i]
						
						ls_codant_producto = dw_det.object.codant[li_i]
						ls_nom_producto = dw_det.object.nombre[li_i]
						ls_cantidad_prod = dw_det.object.dv_cantid[li_i]
																																																																								 
						SELECT fb_codigo, it_stock
						INTO :ls_cod_fabricante, : ldd_stock_unit
						FROM IN_ITEM, IN_ITESUCUR
						WHERE     (IN_ITEM.IT_CODIGO = IN_ITESUCUR.IT_CODIGO)
					     AND (IN_ITEM.EM_CODIGO = IN_ITESUCUR.EM_CODIGO)
   					     AND  IN_ITESUCUR.SU_CODIGO = :str_appgeninfo.sucursal  
						 AND IN_ITEM.IT_CODIGO = :ls_cod_producto
						 AND IN_ITEM.IT_CODANT IN('P10011-GL',
																'P10039-CU',
																'P12421-CU',
																'P12421-GL',
																'P12422-CU',
																'P12422-GL',
																'P12424-CU',
																'P12425-GL',
																'P17175T-CA',
																'P17177A-CA',
																'P17203S-CU',
																'P17300S-CU',
																'P17300S-GL',
																'P17301S-CU',
																'P17301S-GL',
																'P17302S-CU',
																'P17302S-GL',
																'P17303S-CU',
																'P17303S-GL',
																'P17304S-CU',
																'P17304S-GL',
																'P17352-GL',
																'P17357-GL',
																'P17366-GL',
																'P17375-GL',
																'P17376-GL',
																'P17377-CA',
																'P17377-GL',
																'P17385-GL',
																'P17386-GL',
																'P17387-GL',
																'P17393-GL',
																'P17395-GL',
																'P27128-GL',
																'P27135-CU',
																'P27138-CU',
																'P27167-GL',
																'P27411-GL',
																'P27414-GL',
																'P27443-GL',
																'P27444-GL',
																'P27493-GL',
																'P27495-GL'
																);
						 
				
					
					
						CHOOSE CASE ls_cod_fabricante 
							CASE	'2'
								ldd_cant_total_promo = ldd_cant_total_promo +  ls_cantidad_prod
								ldd_val_total_promo = ldd_val_total_promo + dw_det.getitemnumber(li_i,"cc_coniva")
								
						END CHOOSE
				NEXT
				
				 
		IF ldd_val_total_promo >  70 THEN   //2
					
				  DECLARE items_regalo CURSOR FOR
				  SELECT IT.IT_CODANT, ITS.IT_STOCK, IT.IT_CODIGO
                    FROM IN_ITEM IT, IN_ITESUCUR ITS
                    WHERE IT.IT_CODIGO = ITS.IT_CODIGO AND
                     ITS.SU_CODIGO = :str_appgeninfo.sucursal  AND
                    IT.IT_CODANT IN('IMP-GL','IP-GL','ISP-GL','KP-GL','VSP-GL');
 					
				  OPEN  items_regalo;
				  	fetch items_regalo into :ls_codant_producto,:ldd_stock_unit, :ls_cod_producto; 			  
				  DO
					
					ls_stock_premio[i] = ls_codant_producto
					ldd_stock_promo[i] = ldd_stock_unit
					ls_cod_prods[i]	=	ls_cod_producto
				
					fetch items_regalo into :ls_codant_producto,:ldd_stock_unit,:ls_cod_producto; 			
					i =i+1
	
        			  LOOP WHILE i<=5
				  CLOSE items_regalo;
				  
				
					FOR i =1 to 5
							IF ldd_stock_promo[i] <> 0 THEN 
								ls_codant_producto = ls_stock_premio[i]
								ldd_stock_unit = ldd_stock_promo[i]
								ls_cod_producto =  ls_cod_prods[i] 
								i = 5		
							ELSEIF ldd_stock_promo[5] =  0 THEN 
								ls_codant_producto = 'sin stock'
							END IF
					NEXT
	
	
			filas_factura = dw_det.rowcount( )
																	 

		IF (filas_factura < 12 and ls_codant_producto<> 'sin stock' ) THEN  //3
			  messagebox("PROMOCION EVANS", "Su Cliente se hizo acreedor a un galon de pintura Blanca," ) 
			  paso_producto_promocional(ls_codant_producto, 1 , ls_cod_producto) 
			  gana_promo = 3
			  ya_gano = 1

		ELSEIF (filas_factura = 12 and  ls_codant_producto<> 'sin stock') THEN  //4
				 messagebox("Alerta","El Cliente se hizo acreedor un Galon de Pintura Blanca,~rpor favor dividir en dos facturas para ingresar el producto")
					 return 1
		END IF //-4
														 
						  
											

		END IF//-3

END IF //-2
                

IF(num_promo = 15) THEN


//num_promocion = num_promo // Permite desplegar el mensaje dependiendo de la promoción
//Integer num_boletos
//String ls_prod_promo, ls_prod_fabricante, ls_stock_promo, ls_cod_producto, ls_codant_producto
//Dec{2} ldd_cant_total_promo
//
			ls_codant_producto = ''
			ls_nom_producto = ''
			ls_cantidad_prod = 0
			ls_cod_producto = ''
			ls_cod_fabricante = ''
			ldd_cant_total_promo = 0
			ldd_val_total_promo = 0
			i = 1
			


			ll_fila = dw_det.rowcount( )
				FOR  li_i = 1 to ll_fila 
					
						ls_cod_fabricante = ''
						ldd_stock_unit =0
				
						ls_cod_producto = dw_det.object.it_codigo[li_i]
						
						ls_codant_producto = dw_det.object.codant[li_i]
						ls_nom_producto = dw_det.object.nombre[li_i]
						ls_cantidad_prod = dw_det.object.dv_cantid[li_i]
																																																																								 
						SELECT fb_codigo, it_stock
						INTO :ls_cod_fabricante, : ldd_stock_unit
						FROM IN_ITEM, IN_ITESUCUR
						WHERE     (IN_ITEM.IT_CODIGO = IN_ITESUCUR.IT_CODIGO)
					     AND (IN_ITEM.EM_CODIGO = IN_ITESUCUR.EM_CODIGO)
  					    AND  IN_ITESUCUR.SU_CODIGO = :str_appgeninfo.sucursal   
						 AND IN_ITEM.IT_CODIGO = :ls_cod_producto
						 AND IN_ITEM.IT_CODANT IN( 'W2000-CA',
																'W2000-CU',
																'W2000-GL',
																'W2002-CA',
																'W2002-CU',
																'W2002-GL',
																'W2004-CA',
																'W2004-CU',
																'W2004-GL',
																'W2006-CU',
																'W2006-GL',
																'W2008-CU',
																'W2008-GL',
																'W2010-CU',
																'W2010-GL',
																'W2015-CU',
																'W2015-GL',
																'W2020-CU',
																'W2020-GL',
																'W2025-CU',
																'W2025-GL',
																'W2030-CU',
																'W2030-GL',
																'W2035-CU',
																'W2035-GL',
																'W2040-CU',
																'W2040-GL',
																'W2045-CU',
																'W2045-GL',
																'W2050-CU',
																'W2050-GL',
																'W2055-CU',
																'W2055-GL',
																'W2060-CU',
																'W2060-GL',
																'W2065-CU',
																'W2065-GL',
																'W2070-CU',
																'W2070-GL',
																'W2075-CU',
																'W2075-GL',
																'W2080-CU',
																'W2080-GL',
																'W2085-CU',
																'W2085-GL',
																'W31-CU',
																'W31-GL',
																'W32-CU',
																'W32-GL',
																'W33-CU',
																'W33-GL',
																'W35-CU',
																'W35-GL',
																'W40-CU',
																'W40-GL',
																'W31-CA',
																'W32-CA',
																'W33-CA',
																'W35-CA',
																'W40-CA',
																'W40-TN',
																'W41-CA',
																'W50-TN',
																'W10-CU',
																'W10-GL',
																'W11-CU',
																'W11-GL',
																'W12-CU',
																'W12-GL',
																'W16-CA',
																'W16-CU',
																'W16-GL',
																'W1-CU',
																'W23-CA',
																'W23-CU',
																'W23-GL',
																'W2-CU',
																'W2-GL',
																'W34-CU',
																'W34-GL',
																'W37-CU',
																'W37-GL',
																'W38-CU',
																'W38-GL',
																'W39-CU',
																'W39-GL',
																'W3-CU',
																'W3-GL',
																'W4-CU',
																'W4-GL',
																'W5-CA',
																'W5-CU',
																'W6-CU',
																'W6-GL',
																'W7-CU',
																'W7-GL',
																'W8-CU',
																'W8-GL',
																'M95-CU',
																'M95-GL',
																'M95-CA'
																);
																						 
						 
				
					
					
						CHOOSE CASE ls_cod_fabricante 
							CASE	'12'
								ldd_cant_total_promo = ldd_cant_total_promo +  ls_cantidad_prod
								ldd_val_total_promo = ldd_val_total_promo + dw_det.getitemnumber(li_i,"cc_coniva")
								
						END CHOOSE
				NEXT
				 
				
		IF ldd_val_total_promo >  100 THEN
					
				  SELECT IT.IT_CODANT, ITS.IT_STOCK, IT.IT_CODIGO
				  INTO :ls_codant_producto,:ldd_stock_unit, :ls_cod_producto 
                    FROM IN_ITEM IT, IN_ITESUCUR ITS
                    WHERE IT.IT_CODIGO = ITS.IT_CODIGO AND
                     ITS.SU_CODIGO = :str_appgeninfo.sucursal  AND
				   IT.IT_CODANT IN('P5-KIT');   
//                    IT.IT_CODANT IN('KPW-KIT');   
 					
				
				
					IF ldd_stock_unit =  0 THEN 
									ls_codant_producto = 'sin stock'
					END IF
					
		
				filas_factura = dw_det.rowcount( )
																	 

				IF (filas_factura < 12 and ls_codant_producto<> 'sin stock' ) THEN
					  messagebox("PROMOCION EVANS", "Su Cliente se hizo acreedor a un Kit para Pintar," ) 
					  paso_producto_promocional(ls_codant_producto, 1 , ls_cod_producto) 
					  gana_promo_wesco = 3
					  ya_gano_wesco = 1
		
				ELSEIF (filas_factura = 12 and  ls_codant_producto<> 'sin stock') THEN
						 messagebox("Alerta","El Cliente se hizo acreedor un Kit para Pintar,~rpor favor dividir en dos facturas para ingresar el producto")
							 return 1
				END IF
														 
						  
											

	END IF

END IF


// Promocion Intaco, entrega de puntos por compra de sacos '1680-20k' - 1 punto y '1679-20k'- 2 puntos 

IF (num_promo = 16) THEN
	
		suma_intaco = 0
		num_boletos = 0

		 ll_fila = dw_det.rowcount( )
				  suma_intaco = 0
				  FOR  li_i = 1 to ll_fila 

						 ls_cod_producto = dw_det.object.codant[li_i]
  						 ls_cantidad_prod = dw_det.object.dv_cantid[li_i]
								
						choose case  ls_cod_producto
						case '1680-20K'
								suma_intaco = suma_intaco +  ls_cantidad_prod
						case '1679-20K'
								suma_intaco =  suma_intaco  +( ls_cantidad_prod * 2)
						end choose
	
				  NEXT 

		IF suma_intaco > 0 THEN 
				return suma_intaco
			ELSE 
				return 0
		END IF
		
	
END IF	
	

	
	

end function

public function integer busca_cliente (string ls_cod_cliente);///Funcion para buscar un cliente dentro de la promoción para verificar que no se le entregue mas de una mochila por cliente.

String ruc_cliente, cod_cliente

SELECT FA_CLIEN.CE_CODIGO
into :cod_cliente
FROM FA_CLIEN, FA_OBSEQUIOS
WHERE (FA_CLIEN.CE_CODIGO = FA_OBSEQUIOS.CE_CODIGO) AND
(FA_CLIEN.CE_RUCIC = :ls_cod_cliente)
AND (FA_CLIEN.CE_CODIGO <> '1');


If sqlca.sqlcode <> 0      Then
                               return 0
                else
                               return 1
end if


end function

public function integer borra_fila_promo (integer ls_contador_borra);                                                              Integer fila_promo, i, fila_borrar_pintuco, fila_borra_wesco
                                                              String codigo_promo, ls_codant_promo, ls_codant_detail, ls_prodprom, ls_coditem
                                                           
															dw_promcli_datos.reset()
															dw_cantitem_gen.reset()
															dw_itemspremios.reset()
															dw_cant_prodxprom.reset()
														  dw_promcli_datos.visible = false
														 dw_cantitem_gen.visible = false
														 dw_itemspremios.visible = false
														 dw_cant_prodxprom.visible = false
														 ii_imprime_ticket_promo = 0				  
																			  
												ls_promociones = ls_cod_producto
                                                                              ls_contador_borra = ls_contador_borra -1
                                                                              prod_promo = prod_promo -1
																	    fila_promo = dw_det.RowCount()					  		

																		is_entro[7] = 'N' //Encera la variable de promoción 7 para que vuelva a ingresar a verificar si cumple con la promoción 
																		is_entro[5] = 'N' //Encera la variable de promoción 5 para que vuelva a ingresar a verificar si cumple con la promoción 
																		is_entro[4] = 'N' //Encera la variable de promoción 4 para que vuelva a ingresar a verificar si cumple con la promoción 
																		is_entro[2] = 'N'//Encera la variable de promoción 2 para que vuelva a ingresar a verificar si cumple con la promoción 
																		is_entro[3] = 'N'//Encera la variable de promoción 3 para que vuelva a ingresar a verificar si cumple con la promoción 
																		is_entro[8] = 'N'//Encera la variable de promoción 8 para que vuelva a ingresar a verificar si cumple con la promoción 
																	     is_entro[9] = 'N'//Encera la variable de promoción 9 para que vuelva a ingresar a verificar si cumple con la promoción 
																		is_entro[11] = 'N'//Encera la variable de promoción 11 para que vuelva a ingresar a verificar si cumple con la promoción 
																		is_entro[12] = 'N'//Encera la variable de promoción 12 para que vuelva a ingresar a verificar si cumple con la promoción 
																		is_entro[13] = 'N'//Encera la variable de promoción 13 para que vuelva a ingresar a verificar si cumple con la promoción 
																		is_entro[14] = 'N'//Encera la variable de promoción 14 para que vuelva a ingresar a verificar si cumple con la promoción 
																		is_entro[15] = 'N'//Encera la variable de promoción 15 para que vuelva a ingresar a verificar si cumple con la promoción 
																		is_entro[16] = 'N'//Encera la variable de promoción 15 para que vuelva a ingresar a verificar si cumple con la promoción
																		is_entro[19] = 'N'//Encera la variable de promoción 15 para que vuelva a ingresar a verificar si cumple con la promoción
																		 is_entro[24] = 'N'
																		//Variables Promociones Bigboss
																		is_entro[501] = 'N'
																		is_entro[502] = 'N'
																		is_entro[503] = 'N'
																		is_entro[504] = 'N'
																		is_entro[505] = 'N'
																		is_entro[506] = 'N'
																		
																		
																		dw_cant_prodxprom.visible = false
																		dw_cantitem_gen.visible =false
																		 is_accespromgen = 'O'
																		 is_aceptxprom = 'O'
																		 
																	for i= fila_promo to 1 step -1
																		
																		ls_codant_detail = dw_det.object.codant[i]
																		ls_prodprom = dw_det.object.prodpromo[i]
																		ls_coditem = dw_det.object.it_codigo[i]
																																	
																			CHOOSE	CASE ls_coditem
																			CASE   '2071','22204','40207'   //Promocion 2
																				if(ls_prodprom = 'P') then
																					fila_borrar_pintuco = i
																					dw_det.deleterow(fila_borrar_pintuco) 
																				end if	
																			CASE  '39671', '39672'   //Promocion 3
																				if(ls_prodprom = 'P') then
																					fila_borrar_pintuco = i
																					dw_det.deleterow(fila_borrar_pintuco) 
																				end if
																			CASE  '40262'   //Promocion 4
																				if(ls_prodprom = 'P') then
																					fila_borrar_pintuco = i
																					dw_det.deleterow(fila_borrar_pintuco) 
																				end if	
																			CASE  '38361'   //Promocion 5
																				if(ls_prodprom = 'P') then
																					fila_borrar_pintuco = i
																					dw_det.deleterow(fila_borrar_pintuco) 
																				end if
																			CASE  '16690','29438'   //Promocion 7
																				if(ls_prodprom = 'P') then
																					fila_borrar_pintuco = i
																					dw_det.deleterow(fila_borrar_pintuco) 
																				end if
																		
																			CASE  '36038','36035','36036','36039'   //Promocion 8
																				if(ls_prodprom = 'P') then
																					fila_borrar_pintuco = i
																					dw_det.deleterow(fila_borrar_pintuco) 
																					
																				end if
																			CASE  '37852'   //Promocion 9
																				if(ls_prodprom = 'P') then
																					fila_borrar_pintuco = i
																					dw_det.deleterow(fila_borrar_pintuco) 
																				end if	
																		
																			CASE '35308','35315','29481','29482','29484','28753','28754','36127','28757','36128','35314','35307'   //Promocion 11
																					if(ls_prodprom = 'P') then
																					fila_borrar_pintuco = i
																					dw_det.deleterow(fila_borrar_pintuco) 
																				end if	
																			CASE '24460','27573','33546','40482','40486','40497','38821','38692' //Promocion 12
																					if(ls_prodprom = 'P') then
																					fila_borrar_pintuco = i
																					dw_det.deleterow(fila_borrar_pintuco) 
																					end if	
																			CASE '41162' //Promocion 13   //CAMBIAR ITEMS A CAMISETA CPD QUE TIENE OTRO ITEM
																					if(ls_prodprom = 'P') then
																						fila_borrar_pintuco = i
																						dw_det.deleterow(fila_borrar_pintuco)  
																					end if	
																			CASE '35067' //Promocion 14   //CAMBIAR ITEMS A CAMISETA CPD
																					if(ls_prodprom = 'P') then
																						fila_borrar_pintuco = i
																						dw_det.deleterow(fila_borrar_pintuco) 
																					end if	
																			CASE '8979','8981' //Promocion 15 Y 16   //PROMO ARTE CARTULINA
																					if(ls_prodprom = 'P') then
																						fila_borrar_pintuco = i
																						dw_det.deleterow(fila_borrar_pintuco) 
																					end if	
		
																			CASE '10099','15208','3135','4547' //Promocion 19   //PROMO PINTUCO
																					if(ls_prodprom = 'P') then
																						fila_borrar_pintuco = i
																						dw_det.deleterow(fila_borrar_pintuco) 
																					end if	
																	
																	// PROMOCIONES BIGBOSS
																			
																			CASE '50373', '50919','50867'//Promocion 501-502-503  
																					if(ls_prodprom = 'P') then
																						fila_borrar_pintuco = i
																						dw_det.deleterow(fila_borrar_pintuco) 
																					end if	
																			CASE '25978', '41487' //Promocion 504 - 505 - 506//
																					if(ls_prodprom = 'P') then
																						fila_borrar_pintuco = i
																						dw_det.deleterow(fila_borrar_pintuco) 
																					end if	
																			END CHOOSE
																	next
																										
                                                                        
                                             
                                             //                  END IF
																				 	
																					
													
																					
																					
											
                                               
                                     return 1									
                                                                                 
end function

public function integer paso_producto_promocional (string ls_cod_prod, integer ls_num_prod, string ls_it_codigo);                  //  Inserta el producto promocional en el detalle de la factura automaticamente en la promocion 2.........
                               
                               integer li_itgarant, ll_pos, pos_ini
                               string ls_pepa,ls_nombre, ls_marca,ls_base,ls_promocion,ls_unibas, ls_marcas, ls_fbcodigo, ls_clcodigo, ls_tipo_desc
                               dec{2} lc_prefab, ld_desc1,ld_desc2,ld_desc3, ld_desc
                               dec{4} lc_costo
                               char lch_kit,lch_valstk,lch_prepa
                               dec{2} lc_subtotal, lc_descuento, lc_iva, lc_valor_pagar,  lc_valor_otras,lc_vuelto,lc_interes, lc_val_neto                               

                               ll_pos = dw_det.InsertRow(0)
                               dw_det.ScrollTorow(ll_pos)
                               dw_det.SetColumn('dv_cantid')

                               
                               select co_codigo,ma_codigo,it_iva,it_codigo, it_nombre, it_prefab, it_valstk,it_kit,it_costo,it_codant,it_base,it_preparado,ub_codigo, it_garant,mr_codigo, fb_codigo, substr(cl_codigo,1,2)
                               into :ls_promocion,:ls_marca,:li_itemiva,:ls_pepa, :ls_nombre, :lc_prefab, :lch_valstk,:lch_kit,:lc_costo,:ls_cod_producto,:ls_base,:lch_prepa,:ls_unibas,:li_itgarant,:ls_marcas, :ls_fbcodigo, :ls_clcodigo
                               from in_item
                               where em_codigo = :str_appgeninfo.empresa
                               and it_codant = :ls_cod_prod;  
                                                               
                                               
                                                               dw_det.setitem(ll_pos,'em_codigo', str_appgeninfo.empresa)
                                                               dw_det.setitem(ll_pos,'su_codigo', str_appgeninfo.sucursal)
                                                               dw_det.setitem(ll_pos,'bo_codigo', str_appgeninfo.seccion)  
                                                               dw_det.setitem(ll_pos,'es_codigo', is_estado)
                                                               dw_det.setitem(ll_pos,'ve_numero', ls_num_factura)
                                                               dw_det.setitem(ll_pos,'dv_secue', ll_pos )
                                                               dw_det.setitem(ll_pos,'dv_descue', 0)
                                                               dw_det.setitem(ll_pos,'codant',ls_cod_producto)
                                                               dw_det.setitem(ll_pos, 'dv_cantid', ls_num_prod)
                                                               dw_det.setitem(ll_pos, 'nombre',ls_nombre)
                                                               dw_det.setitem(ll_pos, 'dv_precio', lc_prefab)
                                                               dw_det.setitem(ll_pos, 'it_codigo',ls_pepa)
                                                               dw_det.setitem(ll_pos, 'it_costo',lc_costo)
                                                               dw_det.setitem(ll_pos, 'ma_codigo',ls_marca)                                                              
                                                               dw_det.setitem(ll_pos, 'co_codigo',ls_promocion)
                                                               dw_det.setitem(ll_pos, 'mr_codigo',ls_marcas)
                                                               dw_det.SetItem(ll_pos,"it_preparado",lch_prepa)                                                      
                                                               dw_det.setitem(ll_pos, 'it_kit',lch_kit)                                                                                                               
                                                               dw_det.SetItem(ll_pos,"it_valstk",lch_valstk)
                                                               dw_det.setitem(ll_pos, 'fb_codigo',ls_fbcodigo)
                                                               dw_det.setitem(ll_pos, 'cl_codigo',ls_clcodigo)
                                                               dw_det.setitem(ll_pos, 'it_base',ls_base)
                                                               dw_det.setitem(ll_pos, 'dv_precio', lc_prefab)
                                                               
                                                               
                                                               
                                                               li_det_pedido = dw_det.getitemnumber(ll_pos,'dv_cantid')
                                                               
                                                               dw_det.setitem(ll_pos,'dv_candes',li_det_pedido)
                //Busco los descuentos
                
                select td_codigo
                into :ls_tipo_desc
                from in_descitem
                where em_codigo = :str_appgeninfo.empresa
                and it_codigo = :ls_pepa
                and es_codigo = '2'         
                and di_vigente = 'S';

                
                select td_desc1,td_desc2,td_desc3
                into :ld_desc1,:ld_desc2,:ld_desc3
                from in_tippre
                where em_codigo = :str_appgeninfo.empresa
                and td_codigo = :ls_tipo_desc
                and td_vigente = 'S';
                
                If sqlca.sqlcode <> 0      Then
                               ld_desc1 = 0
                               ld_desc2 = 0
                               ld_desc3 = 0
                end if

                ld_desc3 = ld_desc3 + ld_desc
                
                
                pos_ini = dw_det.object.dv_desc2[1]
                
                dw_det.setitem(ll_pos, 'dv_desc1',ld_desc1)
                IF pos_ini = 0 THEN 
                               dw_det.setitem(ll_pos, 'dv_desc2', 0)
                ELSE
                               dw_det.setitem(ll_pos, 'dv_desc2', 5)
                END IF
                dw_det.setitem(ll_pos, 'dv_desc3',ld_desc3)
                dw_det.setitem(ll_pos, 'it_iva',li_itemiva)
                dw_det.setitem(ll_pos, 'it_base',ls_base)
  			  dw_det.SetItem(ll_pos,"ub_codigo",ls_unibas)          
                dw_det.SetItem(ll_pos,"it_garant",li_itgarant)
                dw_det.setitem(ll_pos,'dv_total', dw_det.GetItemDecimal(ll_pos,'desc3'))

                //***** Recalcula la información y actualiza el stock del producto de promoción
                
                
                                                               UPDATE IN_ITESUCUR  
                                                               SET IT_STOCK = IT_STOCK - :ls_num_prod          
                                                               WHERE IN_ITESUCUR.EM_CODIGO = :str_appgeninfo.empresa
                                                               AND IN_ITESUCUR.SU_CODIGO = :str_appgeninfo.sucursal
                                                              AND (IN_ITESUCUR.IT_CODIGO = :ls_it_codigo);
                       
                                                               messagebox("Alerta"," El Cliente Gano " + String(ls_num_prod) + " Galon de Pintura Blanca " + String(ls_cod_producto) )
                                                            
                                                               ls_promociones = ls_promociones +','+ ls_it_codigo
                

                return 1 





end function

public function integer verificar_tarjeta ();SELECT CE_CODIGO
into :ls_co_cliente
FROM FA_CLIEN
WHERE CE_RUCIC = :ls_rucci;



SELECT IF_CODIGO
into :ls_if_codigo
FROM FA_CTACLI
WHERE CE_CODIGO = :ls_co_cliente
AND IF_CODIGO = '101';

IF SQLCA.SQlcode <> 0 THEN
                return 0
ELSE
                return 1
END IF
end function

public function boolean wf_edit ();

Return True

end function

public function integer manejo_txt (string path);
int li_arch,li_fila_txt, long_archivo
string ls_fila, cadena
cadena = ''
li_arch= FileOpen(path)
DO WHILE FileRead(li_arch,ls_fila) <> -100 
li_fila_txt=li_fila_txt + 1 
cadena = cadena + ls_fila
LOOP
FileClose(li_arch) 


li_arch= FileOpen(path, StreamMode!, Write!, LockWrite!, Replace!)

long_archivo = len(cadena) - 1
cadena = mid(cadena, 1,long_archivo)
cadena = manejo_comas_txt(cadena)

FileWrite(li_arch, cadena)

FileClose(li_arch) 


return 1



end function

public function integer envio_ftp (string ls_path, string ls_path_bat, string ls_path_envio);integer li_File
String ls_dosCommand, ls_servidor, ls_user, ls_pass, ls_dir_carga

SELECT PR_LETRAS
INTO :ls_servidor
FROM PR_PARAM
WHERE PR_NOMBRE = 'FE_SRVFTP';

SELECT PR_LETRAS
INTO :ls_user
FROM PR_PARAM
WHERE PR_NOMBRE = 'FE_USUARIO';

SELECT PR_LETRAS
INTO :ls_pass
FROM PR_PARAM
WHERE PR_NOMBRE = 'FE_PASSWRD';


SELECT PR_LETRAS
INTO :ls_dir_carga
FROM PR_PARAM
WHERE PR_NOMBRE = 'FE_PATHFTP';


//Se crea archivo bat que descarga los archivos
li_File = FileOpen(ls_path_bat, LineMode!, Write!, LockWrite!, Replace!)


FileWrite(li_File, '@echo off') //Para que no aparezca la ventana negra
FileWrite(li_File, 'open '+ls_servidor)
FileWrite(li_File, 'user '+ls_user+' '+ls_pass) //Usuario y Pass
//que debes ir navegando
FileWrite(li_File, 'cd '+ ls_dir_carga) //abre directorio
//después de cada acción(si/no)
FileWrite(li_File, 'binary')
FileWrite(li_File, 'mput ' + ls_path)
FileWrite(li_File, 'bye')
FileClose(li_File)

li_File = FileOpen(ls_path_envio, LineMode!, Write!, LockWrite!, Replace!)
FileWrite(li_File, '@echo off') //Para que no aparezca la ventana negra
FileWrite(li_File, 'ftp -niv <' + ls_path_bat )
FileClose(li_File)


hilo1= create hilo_
SharedObjectRegister("hilo_", "hilo1") 
SharedObjectGet("hilo1",hilo1)
hilo1.post envio_ftp( ls_path_envio)
SharedObjectUnRegister('hilo1') 




return 1
end function

public function integer wf_crear_nueva_factura (ref longlong al_num_venta);dec{2} lc_subtotal, lc_descuento, lc_iva, lc_valor_pagar, lc_valor_otras,lc_vuelto,lc_interes, lc_noniva
decimal{2} lc_desciva
char  lch_motivo
integer li_count
string ls_leyenda_new, ls_obs, ls_numpre,ls_preant1,ls_pemision, ls_codautor, ls_autorizsri //cod. de clave
longlong ll_num_venta
string ls_arrmens[] = { "Que tenga un buen día", &
                                                                                                              "Gracias por su compra", &
                                                                                                              "Fue un placer atenderle", &
                                                                                                              "Vuelva pronto!", &
                                                                                                              "Ud. es importante para nosotros" }


SELECT sysdate
INTO   :id_now
FROM   dual;

setpointer(hourglass!)

ls_leyenda_new = ls_arrmens[mod(second(now()), 5) + 1]
lc_subtotal = dw_cab.GetItemNumber(1, "subtotal")
lc_descuento = dw_cab.GetItemNumber(1, "descuento")


if ls_ceexiva = '1' then 
lc_iva = dw_cab.GetItemNumber(1, "iva")
else
lc_iva = 0
end if


lc_valor_pagar = dw_cab.GetItemNumber(1, "valor_pagar") 
lc_efectivo = dw_cab.GetItemNumber(1, "efectivo")
lc_desciva = dw_cab.GetItemNumber(1,"desc")
lc_valor_otras = dw_cab.GetItemNumber(1, "valor_otras")
lch_motivo = dw_cab.GetItemString(1, "ve_motivo")
ls_preant1 = dw_cab.GetItemString(1, "ve_preant")
ls_obs =  dw_cab.GetItemString(1, "observacion") 
lc_vuelto = dw_cab.GetItemNumber(1, "vuelto")


if isNull(ls_obs) or ls_obs = '' then
	ls_obs =  ls_observa
else
	ls_obs =  ls_observa +' ' +ls_obs
end if
//jaic

//lc_interes = dw_cab.GetItemNumber(1, "cargo")
//lc_valor_otras = lc_valor_otras - lc_interes
//lc_valor_pagar = lc_valor_pagar - lc_interes
//lc_interes = 0
//end jaic

If dw_cab.Object.descuento.Visible = '0' Then
                lc_descuento = 0
End if

//If dw_cab.Object.cargo.Visible = '0' Then
                lc_interes = 0
//End if

If lch_motivo = 'N' Then
                setnull(lch_motivo)
End if
If ib_pasa_tarj = true Then
                lch_motivo = 'P'
End if


//Todo validado, poner secuenciales
if is_estado = '2' then
                //Busco y actualizo el número de ticket
                select cj_ticket, cj_pemision, cj_naut
     into :ll_num_venta, :ls_pemision, :ls_autorizsri
     from fa_caja
                where cj_caja = :caja.caja
                and em_codigo = :str_appgeninfo.empresa
     and su_codigo = :str_appgeninfo.sucursal
     FOR UPDATE OF cj_ticket; 
     if sqlca.sqlcode <> 0 then
                   messageBox('Error Interno', 'No se puede encontrar el siguiente número de ticket para la caja ' + &
                              caja.caja + 'Por favor reporte a sistemas el siguiente error : ' + sqlca.sqlerrtext )
                   return -1
                 end if  

                update fa_caja
                set cj_ticket = cj_ticket + 1
                where cj_caja = :caja.caja
                and em_codigo = :str_appgeninfo.empresa
                and su_codigo = :str_appgeninfo.sucursal; 
					 
			if Not Isnull(il_num_venta) or il_num_venta <> 0 then
				ls_autorizsri = String(il_num_venta)
			end if		 
else
                ll_num_venta = f_dame_sig_numero('TK_PROFOR')
  			 ls_autorizsri =String(ll_num_venta)
end if

li_count = dw_claves.rowcount() 
if li_count > 0 then
                ls_codautor = dw_claves.getitemstring(1,"ep_codigo")
end if
if is_estado = '2' then //jaic
                ls_numpre = ls_pemision +  right(string(ll_num_venta),7)
else //jaic
                ls_numpre = string(ll_num_venta)
end if //jaic

//dw_master.SetItem(li_filact,"ve_numpre",ls_pemision + right(string(ll_factura),7))

INSERT INTO FA_VENTA 
( es_codigo, em_codigo, su_codigo, ve_numero, cj_caja,   
ce_codigo, ep_codigo, ve_numpre,  ve_fecha, ve_hora,   
ve_subtot, ve_descue, ve_neto, ve_iva, ve_cargo,   
ve_valpag, ve_observ, ve_leyenda, bo_codigo, ve_efectivo, 
ve_valotros, ve_cambio, ve_preant , ve_motivo, ep_codautor, ve_netoiva0, ve_direntrega, gv_codigo, ce_exiva, dc_codigo, im_codigo, ve_desciva,
ve_ordencomp, tj_codigo)  
VALUES ( :is_estado,:str_appgeninfo.empresa,:str_appgeninfo.sucursal,:ll_num_venta,:caja.caja,
:is_codcli,:str_appgeninfo.codemple,:ls_numpre, :id_now, :id_now,   
:lc_subtotal,:lc_descuento, :lc_subtotal - :lc_descuento, :lc_iva,:lc_interes,   
:lc_valor_pagar + :lc_desciva, :ls_obs,:ls_leyenda_new, :str_appgeninfo.seccion, :lc_efectivo,:lc_valor_otras,:lc_vuelto, :ls_autorizsri, :lch_motivo, :ls_codautor, :ic_tarifa0, :is_dir_entrega, :ls_grupoven, :ls_ceexiva, :ls_dccodigo, :s_iva.im_codigo,:lc_desciva, 
:ls_veordcomp, :is_tarj[3]);
if sqlca.sqlcode <> 0 then
                MessageBox("ERROR","Por favor reporte a sistemas el siguiente error : " + &
                            "~n" + sqlca.sqlerrtext)
                return -1
end if
al_num_venta = ll_num_venta
return 1
end function

public function boolean wf_mov_inventario (string as_item, decimal ad_cantidad, datetime ad_fecha, longlong al_factura, string as_estado, decimal ac_costo, character ach_kit, string as_atomo, decimal ac_costo_atomo, decimal ac_cantatomo);//Funcion           inserta los movimientos de inventario del item, si es kit también de sus componentes 
//Modifica          03/02/2004
// Nota.- En in_relitem, tr_codigo=1 para kit
//                                           En in_timov, tm_codigo=2, tm_ioe='E' es egreso por ventas

long ll_num_movim,ll_contador = 0,li_i,ll_max,ll_fila
//decimal ld_costo,ld_cantidad
string ls_num_movim, ls_factura,ls_es_kit,ls_componente,ls_codant, ls_codigo_kit
boolean lb_exito = TRUE

ls_factura = string(al_factura)
// busca si el item es kit o no 


SELECT IT_CODANT
INTO :ls_codant
FROM IN_ITEM
WHERE it_codigo = :as_item;
                
if ach_kit = 'S' then
                // es un kit
                // inserto el movimiento del item
                ll_num_movim = f_dame_sig_numero('NUM_MINV')
                if ll_num_movim = -1 then
                               messagebox('ERROR¡','No se puede grabar movimiento de inventario')             
                               return FALSE
                end if
                ls_num_movim = string(ll_num_movim)
                //ingresa el atomo (pequeño)
                ll_fila = dw_movim.insertrow(0)
                dw_movim.setitem(ll_fila,"tm_codigo",'2')
                dw_movim.setitem(ll_fila,"tm_ioe",'E')
                dw_movim.setitem(ll_fila,"it_codigo",as_atomo)
                dw_movim.setitem(ll_fila,"su_codigo",str_appgeninfo.sucursal)           
                dw_movim.setitem(ll_fila,"bo_codigo",str_appgeninfo.seccion)           
                dw_movim.setitem(ll_fila,"mv_numero",ls_num_movim)        
                dw_movim.setitem(ll_fila,"mv_cantid",ad_cantidad * ac_cantatomo)                                
                dw_movim.setitem(ll_fila,"mv_costo",ac_costo_atomo)           
                dw_movim.setitem(ll_fila,"mv_fecha",id_now)             
                dw_movim.setitem(ll_fila,"em_codigo",str_appgeninfo.empresa)       
                dw_movim.setitem(ll_fila,"mv_observ",'Venta de Kit '+ls_codant+ ' Ticket de Venta No. '+ls_factura)                       
                dw_movim.setitem(ll_fila,"mv_usado",'N')                      
                dw_movim.setitem(ll_fila,"ve_numero",al_factura)                    
                dw_movim.setitem(ll_fila,"es_codigo",as_estado)       
                dw_movim.setitem(ll_fila,"gv_codigo",ls_grupoven)      
		      dw_movim.setitem(ll_fila,"it_codrel", as_item)
                // inserta el movimiento del kit (grande)
                ll_num_movim = f_dame_sig_numero('NUM_MINV')
                if ll_num_movim = -1 then
                               messagebox('ERROR¡','No se puede grabar movimiento de inventario')             
                               return FALSE
                end if
                ls_num_movim = string(ll_num_movim)
                // ingresa el Kit
                ll_fila = dw_movim.insertrow(0)
                dw_movim.setitem(ll_fila,"tm_codigo",'2')
                dw_movim.setitem(ll_fila,"tm_ioe",'E')
                dw_movim.setitem(ll_fila,"it_codigo",as_item)
                dw_movim.setitem(ll_fila,"su_codigo",str_appgeninfo.sucursal)           
                dw_movim.setitem(ll_fila,"bo_codigo",str_appgeninfo.seccion)           
                dw_movim.setitem(ll_fila,"mv_numero",ls_num_movim)        
                dw_movim.setitem(ll_fila,"mv_cantid",ad_cantidad)                  
                dw_movim.setitem(ll_fila,"mv_costo",ac_costo)           
                dw_movim.setitem(ll_fila,"mv_fecha",id_now)             
                dw_movim.setitem(ll_fila,"em_codigo",str_appgeninfo.empresa)       
                dw_movim.setitem(ll_fila,"mv_observ","Venta de Kit "+ls_codant+" Ticket. No."+ls_factura)                               
                dw_movim.setitem(ll_fila,"mv_usado",'N')                      
                dw_movim.setitem(ll_fila,"ve_numero",al_factura)                    
                dw_movim.setitem(ll_fila,"es_codigo",as_estado)                       
			 dw_movim.setitem(ll_fila,"gv_codigo", ls_grupoven)       
            	 dw_movim.setitem(ll_fila,"it_codrel", '')	

elseif  ach_kit =  'C' then
                
            	
			  // inserto el movimiento del item
                ll_num_movim = f_dame_sig_numero('NUM_MINV')
                if ll_num_movim = -1 then
                               messagebox('ERROR¡','No se puede grabar movimiento de inventario')             
                               return FALSE
                end if
                ls_num_movim = string(ll_num_movim)
                //ingresa el atomo (pequeño)
                ll_fila = dw_movim.insertrow(0)
                dw_movim.setitem(ll_fila,"tm_codigo",'2')
                dw_movim.setitem(ll_fila,"tm_ioe",'E')
                dw_movim.setitem(ll_fila,"it_codigo",as_atomo)
                dw_movim.setitem(ll_fila,"su_codigo",str_appgeninfo.sucursal)           
                dw_movim.setitem(ll_fila,"bo_codigo",str_appgeninfo.seccion)           
                dw_movim.setitem(ll_fila,"mv_numero",ls_num_movim)        
                dw_movim.setitem(ll_fila,"mv_cantid",ad_cantidad * ac_cantatomo)
                dw_movim.setitem(ll_fila,"mv_costo",ac_costo_atomo)           
                dw_movim.setitem(ll_fila,"mv_fecha",id_now)          
                dw_movim.setitem(ll_fila,"em_codigo",str_appgeninfo.empresa)       
                dw_movim.setitem(ll_fila,"mv_observ","Venta de Kit "+ls_codant+" Ticket. No."+ls_factura)                     
                dw_movim.setitem(ll_fila,"mv_usado",'N')                      
                dw_movim.setitem(ll_fila,"ve_numero",al_factura)                      
                dw_movim.setitem(ll_fila,"es_codigo",is_estado)         
                dw_movim.setitem(ll_fila,"gv_codigo",ls_grupoven)         
                dw_movim.setitem(ll_fila,"it_codrel",as_item)               
                if(ii_contador = 0) then 
                                                               ll_num_movim = f_dame_sig_numero('NUM_MINV')
                                                               if ll_num_movim = -1 then
                                                                              rollback;
                                                                              messagebox('ERROR¡','No se puede grabar movimiento de inventario')             
                                                                              return FALSE
                                                               end if
                                                               ls_num_movim = string(ll_num_movim)
                                                               // ingresa el Kit
                                                               ll_fila = dw_movim.insertrow(0)
                                                               dw_movim.setitem(ll_fila,"tm_codigo",'2')
                                                               dw_movim.setitem(ll_fila,"tm_ioe",'E')
                                                               dw_movim.setitem(ll_fila,"it_codigo",as_item)
                                                               dw_movim.setitem(ll_fila,"su_codigo",str_appgeninfo.sucursal)           
                                                               dw_movim.setitem(ll_fila,"bo_codigo",str_appgeninfo.seccion)           
                                                               dw_movim.setitem(ll_fila,"mv_numero",ls_num_movim)        
                                                               dw_movim.setitem(ll_fila,"mv_cantid",ad_cantidad)                  
                                                               dw_movim.setitem(ll_fila,"mv_costo",ac_costo)            
                                                               dw_movim.setitem(ll_fila,"mv_fecha",ad_fecha)          
                                                               dw_movim.setitem(ll_fila,"em_codigo",str_appgeninfo.empresa)       
                                                               dw_movim.setitem(ll_fila,"mv_observ","Venta de Kit "+ls_codant+" Ticket. No."+ls_factura)                    
                                                               dw_movim.setitem(ll_fila,"mv_usado",'N')                      
                                                               dw_movim.setitem(ll_fila,"ve_numero",al_factura)                      
                                                               dw_movim.setitem(ll_fila,"es_codigo",is_estado)
                                                               dw_movim.setitem(ll_fila,"gv_codigo",ls_grupoven)
                                                               dw_movim.setitem(ll_fila,"it_codrel",'')             
                                               ii_contador = 1   
			end if 


else
                // inserto el movimiento del item
                ll_num_movim = f_dame_sig_numero('NUM_MINV')
                if ll_num_movim = -1 then
                               messagebox('ERROR¡','No se puede grabar movimiento de inventario')             
                               return FALSE
                end if
                ls_num_movim = string(ll_num_movim)
                ll_fila = dw_movim.insertrow(0)
                dw_movim.setitem(ll_fila,"tm_codigo",'2')
                dw_movim.setitem(ll_fila,"tm_ioe",'E')
                dw_movim.setitem(ll_fila,"it_codigo",as_item)
                dw_movim.setitem(ll_fila,"su_codigo",str_appgeninfo.sucursal)           
                dw_movim.setitem(ll_fila,"bo_codigo",str_appgeninfo.seccion)           
                dw_movim.setitem(ll_fila,"mv_numero",ls_num_movim)        
                dw_movim.setitem(ll_fila,"mv_cantid",ad_cantidad)                  
                dw_movim.setitem(ll_fila,"mv_costo",ac_costo)           
                dw_movim.setitem(ll_fila,"mv_fecha",id_now)             
                dw_movim.setitem(ll_fila,"em_codigo",str_appgeninfo.empresa)       
                dw_movim.setitem(ll_fila,"mv_observ",'Ticket de Venta No. '+ls_factura)                       
                dw_movim.setitem(ll_fila,"mv_usado",'N')                      
                dw_movim.setitem(ll_fila,"ve_numero",al_factura)                    
                dw_movim.setitem(ll_fila,"es_codigo",as_estado)      
			  dw_movim.setitem(ll_fila,"gv_codigo", ls_grupoven)      
		        dw_movim.setitem(ll_fila,"it_codrel", '')
end if
return(TRUE)

end function

public function integer lf_validamail (string ls_email);IF ls_email <> "" THEN
                                                                                                      
																		IF POS(ls_email,'..')>0 or POS(ls_email,';')>0  or POS(ls_email,' ')>0 or POS(ls_email,',')>0  or POS(ls_email,'@@')>0  or POS(ls_email,'ñ')>0 or POS(ls_email,'Ñ')>0 or POS(ls_email,char('á'))>0 or POS(ls_email,char('é'))>0  or POS(ls_email,char('í'))>0 or POS(ls_email,char('ó'))>0 or POS(ls_email,char('ú'))>0    or POS(ls_email,'/')>0       THEN     
                                                                       
																					return 2
																		END IF	
																																		
                                                                                              IF match(ls_email,'^[a-zA-Z0-9][a-zA-Z\0-9\-_\.]*[^.]\@[^.][a-zA-Z\0-9\-_\.]+\.[a-zA-Z\0-9\-_\.]*[a-zA-Z\0-9][^..]+$')  THEN
                               
										 														return 1
//                                                                                             
                                                                                              
                                                                                              ELSE
                                                                                                                                                                                                                                              
																											       return 2
                               
                                                                                              END IF
END IF
                                                               

                               
                               

end function

public function string manejo_comas_txt (string as_cadena);string as_anterior, as_sustituto

integer i

FOR i= 0 to 9  
as_anterior = String(i)+','
as_sustituto = String(i)+'.'

//string fx_sustituir(string {Value} as_cadena,string {ReadOnly} as_anterior,string {ReadOnly} as_sustituto)
/////////
DO WHILE POS(as_cadena,as_anterior)<>0
		IF POS(as_cadena,as_anterior)<>0 THEN
		 as_cadena=mid(as_cadena,1,POS(as_cadena,as_anterior)-1)+ &
									as_sustituto+mid(as_cadena,POS(as_cadena,as_anterior)+ &
									len(as_anterior),len(as_cadena))
		END IF
LOOP

NEXT

return as_cadena
end function

public function integer lf_valida_telefono (string ls_telefono);string as_anterior, as_sustituto

integer i
//string fx_sustituir(string {Value} as_cadena,string {ReadOnly} as_anterior,string {ReadOnly} as_sustituto)
/////////

IF  len(ls_telefono) > 6 and len(ls_telefono)<11  and ls_telefono<>'0'THEN
	

		IF  Match(ls_telefono, "[^[0-9]")= False THEN
			return 1
		ELSE

			return 2
		END IF

ELSE
			return 2
END IF

end function

public function integer wf_stock_sucursal (string as_item, string ach_kit);decimal ld_stock_disponible
integer ad_stock
string   ls_codigo_kit

If ach_kit = 'S' then	
	//Es kit
	select r.it_codigo,trunc(min(s.it_stock / r.ri_cantid))//,nvl(y.it_recargo,0),nvl(y.it_desc,0)
	into :ls_codigo_kit, :ad_stock// ,:ac_recargo, :ac_desc
	from in_item x, in_itesucur y,in_itesucur s,in_relitem r
	where x.it_codigo = y.it_codigo
	and x.em_codigo = y.em_codigo
	and s.em_codigo = r.em_codigo
	and s.it_codigo = r.it_codigo
	and r.tr_codigo = '1'
	and r.it_codigo1 = :as_item
	and s.em_codigo = :str_appgeninfo.empresa
	and s.su_codigo = :str_appgeninfo.sucursal
	and y.em_codigo = :str_appgeninfo.empresa
	and y.su_codigo = :str_appgeninfo.sucursal
	and y.it_codigo = :as_item
	group by y.it_recargo,y.it_desc,r.it_codigo;

elseif ach_kit = 'C' then	
	
	  select trunc(min(s.it_stock / r.ri_cantid))
	  into :ad_stock
	  from in_item x, /*in_itesucur y,*/in_itesucur s,in_relitem r
	  where x.it_codigo = s.it_codigo
	  and s.em_codigo = r.em_codigo
	  and s.it_codigo = r.it_codigo
	  and r.tr_codigo = '13'
	  and r.it_codigo1 = :as_item
	  and s.em_codigo = 1
	  and s.su_codigo = :str_appgeninfo.sucursal;

else
	
	select it_stock//,nvl(it_recargo,0),nvl(it_desc,0)
	into  :ad_stock//,:ac_recargo, :ac_desc
	from in_itesucur
	where em_codigo = :str_appgeninfo.empresa
	and su_codigo = :str_appgeninfo.sucursal
	and it_codigo = :as_item;

end if


return ad_stock
end function

public function integer wf_asigna_cupo (decimal ld_valfact);decimal ldd_num, ldd_tot, li_decimales
integer li_entero


ldd_tot = ld_valfact/100

li_entero = truncate(ldd_tot, 0) 
li_decimales = ldd_tot -   li_entero


if  li_decimales = 0 then
		li_entero = li_entero * 100
else 		
		li_entero = (li_entero + 1) *100
end if


return li_entero




end function

public function integer wf_retorno_iva (decimal lc_valor);
						
return 1
end function

public function string wf_random ();ULong lul_random
String ls_random

//Genera un Random para encryptar
lul_random = in_crypto.of_Random()
ls_random = String(lul_random)

return ls_random
end function

public function integer f_creacion_txt (string lf_numero_factura, integer if_clave_doc);String ls_sociedad, ls_numpre,  ls_establecimiento, ls_punto_emision, ls_secuencial, ls_dia, ls_mes, ls_anio, ls_hora, ls_minuto,ls_segundo, path, ls_numve, path_bath,ftp_p, ls_path_envio, ls_path_service, ls_pat_bath, ls_usuario_pos, ls_pat_bath_descarga
String ls_fecha_clave,  ls_tipo_comprobante, ls_tipo_ambiente, ls_serie, ls_numcomprobante, ls_codnum, ls_tipoemision, ls_digitover //HPinchao 04/12/2015 Variables para manejo de clave de acceso 
Datetime ld_fecha
Integer conexion_ftp, li_digitover

ls_sociedad = left(gs_empresa,4)


if  if_clave_doc = 1 then
			
		//DATOS DEL NOMBRE DE LA FACTURA CVS
		SELECT FA_VENTA.VE_NUMERO, FA_VENTA.VE_NUMPRE, FA_VENTA.VE_FECHA
		into :ls_numve,  :ls_numpre, :ld_fecha 
		FROM FA_VENTA
		WHERE (FA_VENTA.SU_CODIGO = :str_appgeninfo.sucursal
		AND FA_VENTA.VE_NUMERO =:lf_numero_factura)
		AND FA_VENTA.EM_CODIGO = :str_appgeninfo.empresa
		AND FA_VENTA.ES_CODIGO = '2'
		AND  FA_VENTA.VE_FECHA >= '01-JAN-15';
		
		
		ls_establecimiento = left(ls_numpre,3)
		ls_punto_emision = mid(ls_numpre, 4,3 )
		
		
		ls_secuencial = ls_numve
		ls_secuencial = right('000000000' + right(ls_numve,7), 9)
		
else 
		SELECT BN_FECHA 
		INTO :ld_fecha
		FROM FA_BONO
		WHERE BN_CODIGO = :ls_bncodrec;
		
		ls_establecimiento = left(lf_numero_factura,3)
		ls_punto_emision = mid(lf_numero_factura, 4,3 )
		ls_secuencial = mid(lf_numero_factura, 7,9 )
		
end if	


ls_dia = string(day(date(ld_fecha)) )
ls_mes = string(month(date(ld_fecha)) )
ls_anio = string(year(date(ld_fecha)))

//ls_hora = string(Hour(time(ld_fecha)))
//ls_minuto = string(minute(time(ld_fecha)))
//ls_segundo = string(second(time(ld_fecha)))
//
//IF(integer(ls_dia) <10 ) THEN
//                               ls_dia = '0' + ls_dia
//END IF
//
IF(integer(ls_mes) <10 ) THEN
                               ls_mes = '0' + ls_mes
END IF


IF(integer(ls_hora) <10 ) THEN
                               ls_hora = '0' + ls_hora
END IF
//
//IF(integer(ls_minuto) <10 ) THEN
//                               ls_minuto = '0' + ls_minuto
//END IF
//
//IF(integer(ls_segundo) <10 ) THEN
//                               ls_segundo = '0' + ls_segundo
//END IF

//Integer li_fila, cont_formas
//String  ls_forma_pago, ls_descri, ls_fec_ven, ls_val_pago
//
//
//
//dw_5.settransobject(sqlca) 
//dw_5.retrieve(str_appgeninfo.sucursal, str_appgeninfo.seccion, str_appgeninfo.empresa, string(lf_numero_factura))
//
//
//
//ls_val_pago =String(dw_5.object.rp_valor[1])
//ls_descri = String(dw_5.object.fp_descri[1])
////ls_fec_ven =  String(date(dw_5.object.rp_fecven[1]))
//
//
//
//li_fila = dw_5.rowcount()
//ls_forma_pago =  ls_descri +':' + ls_val_pago //+' fv= '+ ls_fec_ven
//
//
//IF(li_fila > 1) THEN
//                               for cont_formas = 2 to li_fila
//                                               ls_forma_pago = ls_forma_pago + '|' +dw_5.object.fp_descri[cont_formas] +':'+ string(dw_5.object.rp_valor[cont_formas] ) //+' fv= '+ string(dw_5.object.rp_fecven[cont_formas])
//                               next
//
//END IF
//
//
//dw_4.settransobject( sqlca)
//dw_4.retrieve(string(lf_numero_factura), ls_forma_pago, str_appgeninfo.sucursal,  str_appgeninfo.empresa,  str_appgeninfo.seccion, caja.caja, ic_tarifa0)
//

//
//SELECT PR_LETRAS
//INTO :ftp_p
//FROM PR_PARAM
//WHERE PR_NOMBRE = 'FE_FTPPATH';  // //192.168.90.70/DocElec/
//
//SELECT PR_LETRAS
//INTO :path_bath
//FROM PR_PARAM
//WHERE PR_NOMBRE = 'FE_BAT'; //\\192.168.90.70\DocElec\Bat\
//
//
//SELECT PR_LETRAS
//INTO :path
//FROM PR_PARAM
//WHERE PR_NOMBRE = 'FE_TXT'; // \\192.168.90.70\DocElec\
//
//
//SELECT SA_POS
//INTO  :ls_usuario_pos
//FROM SG_ACCESO
//WHERE SA_LOGIN = :str_appgeninfo.username
//AND SU_CODIGO =:str_appgeninfo.sucursal
//AND EM_CODIGO =:str_appgeninfo.empresa;
//
//IF ( = 'M') THEN
//                path = 'C:\Pintulac\Archivos\'+ls_sociedad+ "_01_"+ls_establecimiento+ls_punto_emision+"_"+ls_secuencial+"_"+ls_dia+ls_mes+ls_anio+"_"+ls_hora+ls_minuto+ls_segundo+".TXT"
//                ftp_p = 'C:/Pintulac/Archivos/'+ls_sociedad+ "_01_"+ls_establecimiento+ls_punto_emision+"_"+ls_secuencial+"_"+ls_dia+ls_mes+ls_anio+"_"+ls_hora+ls_minuto+ls_segundo+".TXT"
//                
//                ls_pat_bath_descarga = 'C:\Pintulac\Archivos\'+'descargaftp_'+ls_numpre + ".bat" // Permite crear la cadena de conexion al servidor FTP
//                ls_path_envio =  'C:\Pintulac\Archivos\'+'envia_' +ls_numpre + ".bat" // Ejecuta el proceso FTP de la cadena anterior
//
//                dw_4.SaveAsFormattedText(path , EncodingUTF16LE!,";","","",true)
//ELSE
//                //dw_Quarter.("H:\Q2\RESULTS.TXT", EncodingUTF16LE!, "&", "'")
//                path = path+ls_sociedad+ "_01_"+ls_establecimiento+ls_punto_emision+"_"+ls_secuencial+"_"+ls_dia+ls_mes+ls_anio+"_"+ls_hora+ls_minuto+ls_segundo+".TXT" // Se utiliza para crear el archivo de texto
//                ftp_p = ftp_p+ls_sociedad+ "_01_"+ls_establecimiento+ls_punto_emision+"_"+ls_secuencial+"_"+ls_dia+ls_mes+ls_anio+"_"+ls_hora+ls_minuto+ls_segundo+".TXT" // se utiliza para el envio al servidor FTP
//
// 
//                ls_pat_bath_descarga = path_bath+'descargaftp_'+ls_numpre + ".bat" // Permite crear la cadena de conexion al servidor FTP
//                ls_path_envio =  path_bath+'envia_' +ls_numpre + ".bat" // Ejecuta el proceso FTP de la cadena anterior
//			
//			
//                dw_4.SaveAsFormattedText(path , EncodingUTF16LE!,";","","",true)
// 			
//                //dw_4.SaveAsAscii("F\"+ls_sociedad+ " _"+ls_establecimiento+ls_punto_emision+"_"+ls_secuencial+"_"+ls_dia+ls_mes+ls_anio+"_"+ls_hora+ls_minuto+ls_segundo+".cvs",";","", "", true)
//END IF
//

//
//manejo_txt(path) // funcion para quitar punto y coma del final del archivo
//
//ls_path_service = ls_sociedad+ "_01_"+ls_establecimiento+ls_punto_emision+"_"+ls_secuencial+"_"+ls_dia+ls_mes+ls_anio+"_"+ls_hora+ls_minuto+ls_segundo+".TXT" //Se utiliza para el envio al webservice
//
//
//ls_numve=Right('000000000'+ ls_numve,9)
//
//
//
//INSERT INTO DINAMIC.SRI_DOCELEC VALUES ('1', :str_appgeninfo.sucursal, :ls_numve,'P', :ls_punto_emision,:ls_establecimiento, :ls_path_service, '' );
//COMMIT;
//
//



// DATOS PARA CONEXION FTP

//envio_ftp(ftp_p,  ls_pat_bath_descarga, ls_path_envio)
if  if_clave_doc = 1 then

// Datos para generar la clave y autorización de la factura
//01-Abril HPinchao

SELECT EM_RUC
INTO :ls_rucic
FROM PR_EMPRE
WHERE EM_CODIGO = :str_appgeninfo.empresa ;


ls_fecha_clave = ls_dia+ls_mes+ls_anio
ls_tipo_comprobante = '01'  // 01:Factura  04:Nota_Credito  05:Nota_Debito 06:Guia_Remision 07:Comprobante de Retención
ls_tipo_ambiente = '2'  //// 1: Prueba  2:Producción
ls_serie = ls_establecimiento+ls_punto_emision //Union de Codigo Sucursal con Caja
ls_numcomprobante = ls_secuencial
ls_codnum = right(ls_secuencial, 8)
ls_tipoemision = '1' // 1:Emision_Normal  2:Emision_Contingente

li_digitover=f_digito_verificador(ls_fecha_clave,ls_tipo_comprobante,ls_rucic,ls_tipo_ambiente,ls_serie, ls_numcomprobante,ls_codnum,ls_tipoemision)

ls_clave_acceso = ls_fecha_clave+ls_tipo_comprobante+ls_rucic+ls_tipo_ambiente+ls_serie+ls_numcomprobante+ls_codnum+ls_tipoemision+String(li_digitover)
//messagebox("Advertencia",ls_clave_acceso)

UPDATE FA_VENTA
SET VE_NAUT = :ls_clave_acceso
WHERE (FA_VENTA.SU_CODIGO = :str_appgeninfo.sucursal
AND FA_VENTA.VE_NUMERO =:lf_numero_factura)
AND FA_VENTA.EM_CODIGO = :str_appgeninfo.empresa
AND FA_VENTA.ES_CODIGO = '2'
AND  FA_VENTA.VE_FECHA >= '01-JAN-15';



elseif  if_clave_doc = 2 then
	
	
// Datos para generar la clave y autorización de la factura
//01-Abril HPinchao
SELECT EM_RUC
INTO :ls_rucic
FROM PR_EMPRE
WHERE EM_CODIGO = :str_appgeninfo.empresa ;

ls_fecha_clave = ls_dia+ls_mes+ls_anio
ls_tipo_comprobante = '01'  // 01:Factura  04:Nota_Credito  05:Nota_Debito 06:Guia_Remision 07:Comprobante de Retención
ls_tipo_ambiente = '2'  //// 1: Prueba  2:Producción
ls_serie = ls_establecimiento+ls_punto_emision //Union de Codigo Sucursal con Caja
ls_numcomprobante = ls_secuencial
ls_codnum = right(ls_secuencial, 8)
ls_tipoemision = '1' // 1:Emision_Normal  2:Emision_Contingente

li_digitover=f_digito_verificador(ls_fecha_clave,ls_tipo_comprobante,ls_rucic,ls_tipo_ambiente,ls_serie, ls_numcomprobante,ls_codnum,ls_tipoemision)
ls_clave_acceso = ls_fecha_clave+ls_tipo_comprobante+ls_rucic+ls_tipo_ambiente+ls_serie+ls_numcomprobante+ls_codnum+ls_tipoemision+String(li_digitover)


end if


////Envio WebService clave de acceso
//
//String ls_pass, ls_user, ls_servbd
//comunicador1 = create comunicador 
// hilo1= create hilo_
//
//
//ls_pass = str_appgeninfo.password
//ls_user = str_appgeninfo.username
//ls_servbd = str_appgeninfo.servername
//
//
//SharedObjectRegister("hilo_", "hilo1") 
//SharedObjectGet("hilo1",hilo1)
//hilo1.post  obtener_actfact_unica('1', comunicador1, ls_pass, ls_user, ls_servbd, String(ld_fecha),str_appgeninfo.sucursal,ls_numve,'P',ls_punto_emision, ls_establecimiento,ls_path_service )
//SharedObjectUnRegister('hilo1') 
			 
			 
			 
	




return 1

end function

public function long wf_uspsencode (string as_tracking, string as_routing, string as_barcode);Blob lblb_Track, lblb_Route


lblb_Track = Blob(Trim(as_Tracking)+Space(21), EncodingAnsi!)
lblb_Route = Blob(Trim(as_Routing)+Space(12), EncodingAnsi!)

as_BarCode = Space(65)

Return USPSEncode(lblb_Track, lblb_Route, as_BarCode)
   
end function

public function decimal wf_entregar_cambio (string ls_fpcodigo, decimal lc_fpval, string ls_chcambio);Decimal{2} lc_valor_pagar, lc_porcdeccambio, lc_valcambio, lc_valfpsc, lc_valtotfp
Long ll_filas, i
String ls_getcam


lc_valor_pagar=   dw_cab.GetItemdecimal(1, "valor_pagar") 
lc_efectivo = dw_cab.GetItemdecimal(1, "efectivo")
ll_filas = dw_forma_pago.rowcount()

for i = 1 to ll_filas
	lc_valfpsc = lc_valfpsc + dw_forma_pago.object.rp_valor[i]
next

lc_valtotfp = lc_efectivo + lc_valfpsc 

if lc_valtotfp > lc_valor_pagar then
	lc_valcambio = lc_valtotfp - lc_valor_pagar
	
	CHOOSE CASE  ls_chcambio
		CASE 'S'
				select fp_porccambio
				into :ic_porccambio
				from fa_formpag
				where em_codigo = :str_appgeninfo.empresa 
				and fp_codigo = :ls_fpcodigo
				and fp_utiliza = 'S';	
				
				ic_valtotcambio = lc_valor_pagar * (ic_porccambio /100)
				
				if (lc_valcambio > ic_valtotcambio) then
					return -1
				elseif lc_fpval < ic_valtotcambio then
					return -1
				else
					return lc_valcambio 
				end if
				
		CASE 'N'
				return -2
				
	END CHOOSE	
		
end if
													

end function

public function integer f_recupera_items (string ls_codigo, string ls_desci_prom);// Insertar productos cruzados y promociones 
//Creado por: Henry Pinchao
//Modificado el : 05/05/2017
dw_6.visible = true  //----------------------------------Se muestra el datawindow de productos cruzados
dw_6.settransobject( sqlca)//-------------------------Comienza la comunicación con el datawindow y base de datos
dw_6.retrieve(ls_codigo)//-----------------------------Se recupera la información de la tabla FA_ITEMREL
dw_6.object.t_prom.text = ls_desci_prom//--------Se asigna a un campo texto la promoción en la que participa el item.
return 1 
end function

event open;//Modificado Por: Henry Pinchao
//Fecha Modificacion: 31/08/2016

//Desactivacion de promoción Wesco
 
long ll_color2,ll_color
longlong ll_ticket
datawindowchild ldwc_fp,ldwc_if,ldwc_autoriza
string datos[3], ll_null[]

int	li_Count , contador
window lw_Sheet 
String titulo, ls_nombre_ventana 

ulong l_handle
ulong hWnd

 

/* Permite controlar cuando la ventana activa ya esta abierta una vez ya que pone en getfirsheet el valor de la pagina
si no esta abierta pone el valor del mdi fondo.*/

lw_Sheet = this.getfirstsheet( )

ls_nombre_ventana = lw_Sheet.title
IF(POS(ls_nombre_ventana,"DynaPOS - Punto de Venta (POS) TINTES")>0 ) THEN
	hWnd = Handle(lw_Sheet)
	contador += 1 		
END IF

// Recorre las ventanas abiertas en busca de la pantalla actual si la encuentra suma 1 a la variable contador y no permite entrar otra vez. 
if IsValid (lw_Sheet) then 
do 
li_Count += 1
lw_Sheet = this.GetNextSheet (lw_Sheet) 
IF isValid(lw_Sheet) THEN
ls_nombre_ventana = lw_Sheet.title
	IF(POS(ls_nombre_ventana,"DynaPOS - Punto de Venta (POS) TINTES")>0 ) THEN
	IF(contador < 1)	THEN //Toma el valor del primer window que se abrio para captarlo al momento de ponerlo al frente de las otras ventanas.
		hWnd = Handle(lw_Sheet)
	END IF
	contador += 1 		
	END IF
END IF
loop while IsValid (lw_Sheet) 
end if 


If contador > 1 Then 
	

	OpenIcon(hWnd) 
	SetForegroundWindow( hWnd )
	BringWindowToTop(hWnd) 


Messagebox('ERROR', 'La Ventana Ya esta Abierta, no es posible activarlo nuevamente') 
Close(This) 

RETURN 
END IF

	

IF str_appgeninfo.tipo  <> String(3) THEN 
	
		li_preimpre=messagebox("FACTURACION", "Desea realizar FACTURACIÓN ELECTRÓNICA",  Question!,YesNo!,1)
		
		IF(li_preimpre = 2) THEN 
			dw_preim.visible = true
			gs_caja = caja.caja
			gs_nombre =caja.nombre
			gd_feccad =	caja.feccad
			gl_chmax=caja.ch_max 
			gl_chmin=caja.ch_min 
			gl_ch_vuelto=	caja.ch_vuelto 
			gl_tjmax=caja.tj_max
			gl_tjmin=caja.tj_min
		
		END IF
END IF

//messagebox("FACTURACION", "gs_caja:"+ String(gs_caja))

//run ('NET USE Q: \\192.168.90.70\Docelec /user:Personal Pintu.14',Minimized!)

gs_pos = 'Abierto'
gi_count ++
datos[1] = str_appgeninfo.empresa
datos[2] = 'VP'
datos[3] = str_appgeninfo.sucursal
dw_2.settransobject(sqlca)
f_recupera_datos(dw_2,"supervisor",datos,3)

dw_forma_pago.getchild("fp_codigo",ldwc_fp)
dw_forma_pago.getchild("if_codigo",ldwc_if)

ldwc_fp.settransobject(sqlca)
ldwc_fp.retrieve(str_appgeninfo.empresa)
ldwc_fp.SetFilter("( fp_codigo <> '0' ) and ( fp_string like '%V%' ) and ( rp_tipo <> 'A' )")
ldwc_fp.Filter()

ldwc_if.settransobject(sqlca)
ldwc_if.retrieve(str_appgeninfo.empresa)


dw_forma_pago.getchild("rp_numcta",idwc_ctas)
idwc_ctas.settransobject(sqlca)
idwc_ctas.insertrow(0)

dw_cliente.settransobject(sqlca)
dw_det.Settransobject(sqlca)
dw_forma_pago.SetTransObject(sqlca)

dw_movim.settransobject(sqlca)
dw_rep_ticket.settransobject(sqlca)
dw_stock_sucur.SetTransObject(sqlca)

IF (li_preimpre=1) THEN

dw_preim.visible = false
select nvl(cj_nombre,' '),cj_feccad
into :caja.nombre,:caja.feccad
from fa_caja
where cj_caja = :caja.caja
and em_codigo = :str_appgeninfo.empresa
and su_codigo = :str_appgeninfo.sucursal
and bo_codigo = :str_appgeninfo.seccion;



this.title = this.title + "         " +gs_empresa+"/"+ gs_su_nombre + "/" + gs_bo_nombre+"/ Caja: "+&
                                                                              caja.caja+" "+caja.nombre+" "+gs_empleado
																										
END IF

dw_det.insertrow(0)
dw_cab.insertrow(0)
dw_det.setfocus()

dw_3.settransobject(sqlca)

select pr_valor
into :ii_promo
from pr_param
where em_codigo = :str_appgeninfo.empresa
and pr_nombre = 'PROMO';
if sqlca.sqlcode < 0 then
                rollback;
                messagebox("Error en Promo","Problemas al consultar...comuniquese con sistemas "+sqlca.sqlerrtext,stopsign!)
                return
end if


//**Setear array de promociones

is_entro=  ll_null[]

is_entro[2]= 'N'
is_entro[3]= 'N'
is_entro[4]= 'N'
is_entro[5]= 'N'
is_entro[7]= 'N'
is_entro[8]= 'N'
is_entro[9] = 'N'
is_entro[10] ='N' 
is_entro[11] ='N' 
is_entro[12] = 'N'
is_entro[13] = 'N'
is_entro[14] = 'N'
is_entro[15] = 'N'
is_entro[16] = 'N'
is_entro[19] = 'N'
is_entro[24] = 'N'


//Variables PROMOCIONES BIGBOSS

is_entro[501] = 'N'
is_entro[502] = 'N'
is_entro[503] = 'N'
is_entro[504] = 'N'
is_entro[505] = 'N'
is_entro[506] = 'N'

is_tarj[2]   = ''
//select pr_valor
//into :ii_promosuc
//from pr_param
//where em_codigo = :str_appgeninfo.empresa
//and pr_nombre = 'PROMOSUC';
//if sqlca.sqlcode < 0 then
//            rollback;
//            messagebox("Error en Promo. Sucur.","Problemas al consultar...comuniquese con sistemas "+sqlca.sqlerrtext,stopsign!)
//            return
//end if
//if ii_promosuc = 1 then
//            choose case str_appgeninfo.sucursal 
//                           case '11','12'
//                                           dw_det.object.b_3.visible = true
//            end choose
//end if
//

//select pr_valor
//into :ii_marca
//from pr_param
//where em_codigo = :str_appgeninfo.empresa
//and pr_nombre = 'MARCAPROMO';
//if sqlca.sqlcode < 0 then
//            rollback;
//            messagebox("Error en fabpromo","Problemas al consultar...comuniquese con sistemas "+sqlca.sqlerrtext,stopsign!)
//            return
//end if



SELECT GV_CODIGO
INTO :ls_grupoven
FROM PR_SUCUR
WHERE SU_CODIGO = :str_appgeninfo.sucursal;


select pr_valor
into :ii_montop
from pr_param
where em_codigo = :str_appgeninfo.empresa
and pr_nombre = 'MONTOPROMO';
if sqlca.sqlcode < 0 then
                rollback;
                messagebox("Error en montopromo","Problemas al consultar...comuniquese con sistemas "+sqlca.sqlerrtext,stopsign!)
                return
end if 

select em_ruc
into :ls_rucemp
from pr_empre t
where em_codigo = :str_appgeninfo.empresa;
if sqlca.sqlcode < 0 then
                rollback;
                messagebox("Error en montopromo","Problemas al consultar RUC de la empresa...comuniquese con sistemas "+sqlca.sqlerrtext,stopsign!)
                return
end if 






//Seteo para elegir Factura o Proforma
if str_appgeninfo.tipo = '2' then
                is_estado =  '2'
if str_appgeninfo.estado = '1'  Then
                dw_det.SetItem(1,'c_formato','Nota de Venta POS')
                 dw_det.modify(" proforma.text = 'Nota de Venta POS'")                                        
                 ll_color2 = rgb(ProfileInt("Dynasif.INI", "Colores","HR",255),ProfileInt("Dynasif.INI", "Colores", "HG",255),ProfileInt("Dynasif.INI", "Colores", "HB",200))
                ll_color = rgb(ProfileInt("Dynasif.INI", "Colores","BR",255),ProfileInt("Dynasif.INI", "Colores", "BG",255),ProfileInt("Dynasif.INI", "Colores", "BB",200))
                dw_det.Modify("DataWindow.Header.Color="+string(ll_color))
                dw_det.object.barra.BackGround.Color=ll_color2
                ll_color2 = rgb(128,0,0)
                dw_det.object.c_formato.Color= ll_color2
                dw_det.object.st_efec.Color = ll_color2                            
                 ll_color2 = rgb(0,0,128)                               
                 dw_det.object.cc_tarjeta.Color = ll_color2
                dw_det.object.cc_total.Color = ll_color2                           
                dw_det.object.st_siniva.Color = ll_color2                                                          
                dw_det.object.st_tarjeta.Color = ll_color2
                ll_color2 = rgb(128,0,0)                               
                 dw_det.object.st_1.Color = ll_color2
                dw_det.object.st_2.Color = ll_color2
                dw_det.object.t_3.Color = ll_color2     
                 dw_det.object.st_3.Color = ll_color2
                dw_det.object.st_4.Color = ll_color2
                dw_det.object.st_5.Color = ll_color2
                dw_det.object.st_6.Color = ll_color2
                dw_det.object.st_7.Color = ll_color2
                dw_det.object.st_8.Color = ll_color2
                dw_det.object.st_9.Color = ll_color2
  		 	   dw_det.object.t_stock.Color=ll_color2
                dw_det.object.st_10.Color = ll_color2
                dw_det.object.st_11.Color = ll_color2                                                
                 dw_det.object.st_12.Color = ll_color2                 
                 dw_det.object.st_13.Color = ll_color2                 
                 dw_det.object.st_14.Color = ll_color2                 
end if
if str_appgeninfo.estado = '2' Then
	
				IF	li_preimpre = 2 THEN		
									        dw_det.SetItem(1,'c_formato','Factura PREIMPRESA')
										   dw_det.modify(" proforma.text = 'Factura PREIMPRESA'")  
										   ll_color2 = rgb(ProfileInt("Dynasif.INI", "Colores","HR",228),ProfileInt("Dynasif.INI", "Colores", "HG",255),ProfileInt("Dynasif.INI", "Colores", "HB",0))
										   ll_color = rgb(ProfileInt("Dynasif.INI", "Colores","BR",228),ProfileInt("Dynasif.INI", "Colores", "BG",255),ProfileInt("Dynasif.INI", "Colores", "BB",0))
										   dw_det.Modify("DataWindow.Header.Color="+string(ll_color))
										   dw_det.object.barra.BackGround.Color=ll_color2
										    ll_color2 = rgb(128,0,0)

				ELSE	
                                           dw_det.SetItem(1,'c_formato','Factura ELECTRÓNICA')
									   dw_det.modify(" proforma.text = 'Factura ELECTRÓNICA'")  
						  			   ll_color2 = rgb(ProfileInt("Dynasif.INI", "Colores","HR",255),ProfileInt("Dynasif.INI", "Colores", "HG",196),ProfileInt("Dynasif.INI", "Colores", "HB",196))
						                ll_color = rgb(ProfileInt("Dynasif.INI", "Colores","BR",255),ProfileInt("Dynasif.INI", "Colores", "BG",196),ProfileInt("Dynasif.INI", "Colores", "BB",196))
						                dw_det.Modify("DataWindow.Header.Color="+string(ll_color))
						                dw_det.object.barra.BackGround.Color=ll_color2
						                ll_color2 = rgb(128,0,0)
				END IF
                                              
              
                dw_det.object.c_formato.Color= ll_color2
                dw_det.object.st_efec.Color = ll_color2                             
                ll_color2 = rgb(0,0,128)                 
                dw_det.object.cc_tarjeta.Color = ll_color2
                dw_det.object.cc_total.Color = ll_color2                            
                dw_det.object.st_siniva.Color = ll_color2                                                           
                dw_det.object.st_tarjeta.Color = ll_color2
                ll_color2 = rgb(128,0,0)                 
                dw_det.object.st_1.Color = ll_color2
                dw_det.object.st_2.Color = ll_color2
                dw_det.object.t_3.Color = ll_color2                    
                dw_det.object.st_3.Color = ll_color2
                dw_det.object.st_4.Color = ll_color2
                dw_det.object.st_5.Color = ll_color2
                dw_det.object.st_6.Color = ll_color2
                dw_det.object.st_7.Color = ll_color2
                dw_det.object.st_8.Color = ll_color2
                dw_det.object.st_9.Color = ll_color2
 			  dw_det.object.t_stock.Color=ll_color2
                dw_det.object.st_10.Color = ll_color2
                dw_det.object.st_11.Color = ll_color2
 			  dw_det.object.st_12.Color = ll_color2                                                                            
                dw_det.object.st_13.Color = ll_color2                                 
                dw_det.object.st_14.Color = ll_color2                                 
end if
else
                  is_estado =  '3'
//       m_marco.m_archivo.m_proforma.visible = false
//       m_marco.m_archivo.m_proforma.enabled = false
//       m_marco.m_archivo.m_recuperarproforma.enabled = true
//       m_marco.m_archivo.m_facturarprofroma.visible = false                
//       m_marco.m_archivo.m_facturaranuladas.visible = false                                                 
                 dw_det.SetItem(1,'c_formato','Proforma') 
                dw_det.object.proforma.text = 'Proforma'                      
                 ll_color = rgb(ProfileInt("Dynasif.INI", "Colores","HR",150),ProfileInt("Dynasif.INI", "Colores", "HG",200),ProfileInt("Dynasif.INI", "Colores", "HB",170))
                ll_color2 = rgb(ProfileInt("Dynasif.INI", "Colores","BR",150),ProfileInt("Dynasif.INI", "Colores", "BG",200),ProfileInt("Dynasif.INI", "Colores", "BB",170))
                dw_det.Modify("DataWindow.Header.Color="+string(ll_color))
                dw_det.object.barra.BackGround.Color=ll_color2
                ll_color2 = rgb(255,255,255)
                dw_det.object.c_formato.Color= ll_color2
                dw_det.object.cc_tarjeta.Color = ll_color2
                dw_det.object.cc_total.Color = ll_color2                           
                 dw_det.object.st_efec.Color = ll_color2                            
                 dw_det.object.st_siniva.Color = ll_color2                                                          
                 dw_det.object.st_tarjeta.Color = ll_color2                                                                                      
                 ll_color2 = rgb(0,0,0)
                dw_det.object.st_1.Color = ll_color2
                dw_det.object.st_2.Color = ll_color2
                dw_det.object.t_3.Color = ll_color2                     
                dw_det.object.st_3.Color = ll_color2
                dw_det.object.st_4.Color = ll_color2
                dw_det.object.st_5.Color = ll_color2
                dw_det.object.st_6.Color = ll_color2
                dw_det.object.st_7.Color = ll_color2
                dw_det.object.st_8.Color = ll_color2
                dw_det.object.st_9.Color = ll_color2
                dw_det.object.st_10.Color = ll_color2
                dw_det.object.st_11.Color = ll_color2     
			  dw_det.object.t_stock.Color=ll_color2
                 dw_det.object.st_12.Color = ll_color2
                dw_det.object.st_13.Color = ll_color2 
                dw_det.object.st_14.Color = ll_color2 
end if


postevent('ue_postopen')
end event

on w_pos.create
this.dw_actuclimovi=create dw_actuclimovi
this.dw_ori_descuento=create dw_ori_descuento
this.sle_3=create sle_3
this.dw_oriprom=create dw_oriprom
this.dw_promcli_datos=create dw_promcli_datos
this.dw_itemspremios=create dw_itemspremios
this.dw_cantitem_gen=create dw_cantitem_gen
this.sle_2=create sle_2
this.dw_cheque=create dw_cheque
this.dw_vaucher_nc=create dw_vaucher_nc
this.dw_compag_nc=create dw_compag_nc
this.dw_9=create dw_9
this.dw_actualiza_cliente=create dw_actualiza_cliente
this.dw_8=create dw_8
this.dw_7=create dw_7
this.dw_6=create dw_6
this.dw_preim=create dw_preim
this.gb_obsequio=create gb_obsequio
this.dw_5=create dw_5
this.dw_4=create dw_4
this.cb_asesor=create cb_asesor
this.cb_2=create cb_2
this.cb_1=create cb_1
this.dw_servicheck_certifica=create dw_servicheck_certifica
this.dw_autoriza_adminis=create dw_autoriza_adminis
this.dw_3=create dw_3
this.dw_precio=create dw_precio
this.dw_claves=create dw_claves
this.dw_2=create dw_2
this.sle_1=create sle_1
this.dw_movim=create dw_movim
this.dw_1=create dw_1
this.dw_forma_pago=create dw_forma_pago
this.dw_cab=create dw_cab
this.dw_sel_recuperar=create dw_sel_recuperar
this.dw_rep_ticket=create dw_rep_ticket
this.dw_consulta_stk=create dw_consulta_stk
this.dw_stock_sucur=create dw_stock_sucur
this.p_producto=create p_producto
this.dw_cliente=create dw_cliente
this.dw_codbar=create dw_codbar
this.dw_det=create dw_det
this.rb_cal=create rb_cal
this.rb_na=create rb_na
this.dw_cant_prodxprom=create dw_cant_prodxprom
this.dw_cedtarj=create dw_cedtarj
this.Control[]={this.dw_actuclimovi,&
this.dw_ori_descuento,&
this.sle_3,&
this.dw_oriprom,&
this.dw_promcli_datos,&
this.dw_itemspremios,&
this.dw_cantitem_gen,&
this.sle_2,&
this.dw_cheque,&
this.dw_vaucher_nc,&
this.dw_compag_nc,&
this.dw_9,&
this.dw_actualiza_cliente,&
this.dw_8,&
this.dw_7,&
this.dw_6,&
this.dw_preim,&
this.gb_obsequio,&
this.dw_5,&
this.dw_4,&
this.cb_asesor,&
this.cb_2,&
this.cb_1,&
this.dw_servicheck_certifica,&
this.dw_autoriza_adminis,&
this.dw_3,&
this.dw_precio,&
this.dw_claves,&
this.dw_2,&
this.sle_1,&
this.dw_movim,&
this.dw_1,&
this.dw_forma_pago,&
this.dw_cab,&
this.dw_sel_recuperar,&
this.dw_rep_ticket,&
this.dw_consulta_stk,&
this.dw_stock_sucur,&
this.p_producto,&
this.dw_cliente,&
this.dw_codbar,&
this.dw_det,&
this.rb_cal,&
this.rb_na,&
this.dw_cant_prodxprom,&
this.dw_cedtarj}
end on

on w_pos.destroy
destroy(this.dw_actuclimovi)
destroy(this.dw_ori_descuento)
destroy(this.sle_3)
destroy(this.dw_oriprom)
destroy(this.dw_promcli_datos)
destroy(this.dw_itemspremios)
destroy(this.dw_cantitem_gen)
destroy(this.sle_2)
destroy(this.dw_cheque)
destroy(this.dw_vaucher_nc)
destroy(this.dw_compag_nc)
destroy(this.dw_9)
destroy(this.dw_actualiza_cliente)
destroy(this.dw_8)
destroy(this.dw_7)
destroy(this.dw_6)
destroy(this.dw_preim)
destroy(this.gb_obsequio)
destroy(this.dw_5)
destroy(this.dw_4)
destroy(this.cb_asesor)
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.dw_servicheck_certifica)
destroy(this.dw_autoriza_adminis)
destroy(this.dw_3)
destroy(this.dw_precio)
destroy(this.dw_claves)
destroy(this.dw_2)
destroy(this.sle_1)
destroy(this.dw_movim)
destroy(this.dw_1)
destroy(this.dw_forma_pago)
destroy(this.dw_cab)
destroy(this.dw_sel_recuperar)
destroy(this.dw_rep_ticket)
destroy(this.dw_consulta_stk)
destroy(this.dw_stock_sucur)
destroy(this.p_producto)
destroy(this.dw_cliente)
destroy(this.dw_codbar)
destroy(this.dw_det)
destroy(this.rb_cal)
destroy(this.rb_na)
destroy(this.dw_cant_prodxprom)
destroy(this.dw_cedtarj)
end on

on resize;int li_tot , li, lj, li_ancho_izq, li_ancho_der
Int li_ancho, li_largo
li_ancho = this.workSpaceWidth() - 2*dw_det.x - 10
li_largo = this.workSpaceHeight() - dw_det.y - dw_det.x - 10
dw_det.resize(li_ancho, li_largo)

end on

event close;gi_count --
if  gi_count = 0 then gs_pos = 'Cerrado'

if(li_preimpre = 2) THEN 
	caja.caja=gs_caja 
	caja.nombre=	gs_nombre
	caja.feccad=gd_feccad	
	caja.ch_max= gl_chmax
	caja.ch_min= gl_chmin
	caja.ch_vuelto=gl_ch_vuelto	
	caja.tj_max=gl_tjmax
	caja.tj_min=gl_tjmin
end if





                

end event

event closequery;int li_res

if dw_det.acceptText() = -1 then 
                message.returnValue = 1
                return  
end if
    
if dw_det.modifiedCount() > 0 or dw_det.deletedCount() > 0 then
                li_res = messageBox("DynaPOS - Punto de Venta (POS)", &
                                                                                               "Hay cambios que no se han guardado~n" + &
                                                                                                  "¿Desea cerrar esta ventana?", Question!, YesNo!,2)
                choose case li_res
							  
                               case 1
                                                               return
																					
                               case 2
											
                                               message.returnValue = 1                                           
                                               return
                end choose
end if

end event

type dw_actuclimovi from datawindow within w_pos
boolean visible = false
integer x = 1362
integer y = 620
integer width = 933
integer height = 468
integer taborder = 100
boolean titlebar = true
string title = "Actualizacion de Datos"
string dataobject = "dw_ref_clienmov"
boolean livescroll = true
borderstyle borderstyle = styleraised!
end type

event buttonclicked;String ls_celular, ls_codant, ls_codprod, lch_kit,  ls_desctarj3, ls_desc3, ls_entrodesc = 'N'
Boolean si_hay = false
Decimal lc_pedido, lc_desc3
Long ll_new, ll_filadet, i
Date ld_fecnac

dw_actuclimovi.setcolumn('celular')
ls_celular = dw_actuclimovi.object.celular[dw_actuclimovi.getrow()]

dw_actuclimovi.setcolumn('fnac')
ld_fecnac = date(dw_actuclimovi.gettext())

if IsNull(ls_celular) or ls_celular = '' then
	is_actualiza_desc = 'N' 
	messagebox('Aviso', 'El Numero de Celular no puede estar vacio',StopSign!)
	return 
elseif  len(trim(ls_celular)) < 10  then
	is_actualiza_desc = 'N' 
	messagebox('Aviso', 'El Numero de Celular debe tener 10 digitos',StopSign!)
	return 
end if

Integer anios
date ls_fecact

SELECT SYSDATE
INTO :ls_fecact
FROM DUAL;

if IsNull(ld_fecnac) or ld_fecnac = date('')  then
	is_actualiza_desc = 'N'
	messagebox('Aviso', 'La fecha de Nacimiento no puede estar vacio',StopSign!)
	return 
end if

anios = (year(ls_fecact)-year(ld_fecnac))
if month(ls_fecact) < month(ld_fecnac) then anios -=1
if month(ls_fecact) = month(ld_fecnac)  and day(ls_fecact) < day(ld_fecnac) then  anios -=1

if anios < 10 or anios> 90 then
	is_actualiza_desc = 'N'
	messagebox('Aviso', 'La fecha de Nacimiento no puede ser menor a 10 Años ni Mayor a 90 Años',StopSign!)
	return 
end if



dw_actuclimovi.visible = false
//messagebox('Aviso', 'Se inserto el registro del Referido con Exito... ',Exclamation!)

//is_accespromgen = 'S'
ll_filadet =  dw_det.rowcount( )

for i = 1 to ll_filadet
ls_desc3 = dw_det.object.it_desc3[i]
ls_desctarj3 =  dw_det.object.it_desc3tarj[i]
lc_desc3 = dw_det.object.dv_desc3[i]

//if ls_desc3 = 'S' and ls_desctarj3<> 'S' and lc_desc3 = 0  then
if lc_desc3 >= dec(is_tarj[1]) then
		dw_det.setitem(i,"dv_desc3",lc_desc3) 
	is_actualiza_desc = 'N'
elseif  lc_desc3 < dec(is_tarj[1]) then
	dw_det.setitem(i,"dv_desc3",dec(is_tarj[1])) 
	is_actualiza_desc = 'S'
end if

 
sle_3.text = ''  //Setea el campo Ingresado en la tarjeta descuento
next

if is_actualiza_desc = 'S' then
	messagebox("Atención","El Descuento Fue Aplicado Satisfactoriamente", Exclamation!)

else 
	messagebox("Atención","No existe Productos para aplicar descuentos no se aplicara el Codigo Movistar.....!", Exclamation!)
end if
dw_det.object.b_4.enabled = false
sle_2.enabled = false 

sle_3.enabled = true	
sle_3.text = ''  //Setea el campo Ingresado en la tarjeta descuento
dw_det.enabled = true
dw_cab.visible = false = true


end event

type dw_ori_descuento from datawindow within w_pos
boolean visible = false
integer x = 782
integer y = 996
integer width = 1568
integer height = 512
integer taborder = 130
boolean enabled = false
boolean titlebar = true
string title = "Origen Descuento"
string dataobject = "dw_origen_descuento"
boolean livescroll = true
borderstyle borderstyle = styleraised!
end type

event itemchanged;String ls_orprom, ls_orotros

this.setcolumn('ls_origen_promo')
ls_orprom = this.gettext()
ls_orotros = this.object.ls_origen_otros[1]

if (ls_orprom = '' or IsNull(ls_orprom)) then
			
			is_chq_ordesc = 'N'
			messagebox('Aviso','Debe escoger una opción para Continuar....!', StopSign!)
			this.setcolumn('ls_origen_promo')
			this.setfocus()
	
else 
	
	if ls_orprom = '8' then
		if ls_orotros = '' or IsNull(ls_orotros) then 
					messagebox('Aviso','Debe llenar el campo otros para Continuar....!', StopSign!)
					this.SetColumn('ls_origen_otros')
				else 
					
					dw_ori_descuento.visible = false
					is_chq_orprom = 'S'
					messagebox('Aviso','Puede prodecer con la Grabacion de la Factura....!', StopSign!)
				
				end if
	
	else 
					dw_ori_descuento.visible = false
					is_chq_ordesc = 'S'
					messagebox('Aviso','Puede prodecer con la Grabacion de la Factura....!', StopSign!)

		end if
	
end if


end event

type sle_3 from singlelineedit within w_pos
integer x = 2967
integer y = 52
integer width = 626
integer height = 88
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type dw_oriprom from datawindow within w_pos
boolean visible = false
integer x = 1568
integer y = 888
integer width = 2053
integer height = 496
integer taborder = 190
boolean titlebar = true
string title = "Origen Promo"
string dataobject = "dw_origen_promo"
boolean livescroll = true
borderstyle borderstyle = styleraised!
end type

event buttonclicked;String ls_orprom, ls_orotros

this.setcolumn('ls_origen_promo')
ls_orprom = this.gettext()
ls_orotros = this.object.ls_origen_otros[1]

if (ls_orprom = '' or IsNull(ls_orprom)) then
			
			is_chq_orprom = 'N'
			messagebox('Aviso','Debe escoger una opción para Continuar....!', StopSign!)
			this.setcolumn('ls_origen_promo')
			this.setfocus()
	
else 
	
	if ls_orprom = '8' then
		if ls_orotros = '' or IsNull(ls_orotros) then 
					messagebox('Aviso','Debe llenar el campo otros para Continuar....!', StopSign!)
					this.SetColumn('ls_origen_otros')
				else 
					
					dw_oriprom.visible = false
					is_chq_orprom = 'S'
					messagebox('Aviso','Puede prodecer con la Grabacion de la Factura....!', StopSign!)
				
				end if
	
	else 
					dw_oriprom.visible = false
					is_chq_orprom = 'S'
					messagebox('Aviso','Puede prodecer con la Grabacion de la Factura....!', StopSign!)

		end if
	
end if


end event

type dw_promcli_datos from datawindow within w_pos
event ue_dwnkey pbm_dwnkey
boolean visible = false
integer x = 1349
integer y = 792
integer width = 1225
integer height = 928
integer taborder = 110
boolean titlebar = true
string title = "Datos del Cliente"
string dataobject = "dw_clienxpromo_ticket"
boolean livescroll = true
borderstyle borderstyle = styleraised!
end type

event ue_dwnkey;longlong ll_ticked
integer li_cadena
String ced_ruc

if KeyDown(KeyEscape!) then
               wf_encera_pago()
	          borra_fila_promo( 1)
			dw_det.enabled = true
			dw_cab.enabled = true
                dw_det.setcolumn("codant")
                dw_det.setfocus()         
			 is_accespromgen = 'O'
			 ii_imprime_ticket_promo = 0
  
end if

	
end event

event buttonclicked;String ls_celular, ls_email, ls_codant, ls_codprod, lch_kit
Boolean si_hay = false
Decimal lc_pedido
Long ll_new

ls_celular = dw_promcli_datos.object.ce_fax[1]
ls_email = dw_promcli_datos.object.ce_email[1]

if IsNull(ls_celular) or ls_celular = '' then
	messagebox('Aviso', 'El Numero de Celular no puede estar vacio',StopSign!)
	return 
end if

dw_promcli_datos.visible = false
messagebox('Aviso', 'Se actualizaron los datos del Cliente con Exito',Exclamation!)
is_accespromgen = 'S'


	ls_codant = 'CPK'
	lc_pedido = 1

	select it_codigo, it_kit
	into :ls_codprod, :lch_kit
	from in_item
	where it_codant = :ls_codant;

//	 si_hay = f_dame_stock_bodega_new(str_appgeninfo.seccion,ls_codprod,lch_kit,lc_pedido) 
//	 
//	if si_hay = false then
//		ll_new = dw_det.insertrow(0)
//		dw_det. scrolltorow(ll_new)
//		is_accespromgen = 'S'
//		dw_det.object.codant[ll_new] = ls_codant
//		dw_det.object.prodpromo[ll_new] = 'P'
//		dw_det.object.pp_codigo[ll_new] = '24'
//		dw_det.setcolumn('codant')
//		dw_det.triggerevent('itemchanged') 
//		dw_det.object.dv_motor[ll_new] = String(ii_codunico)
//		dw_det.object.dv_cantid[ll_new]  = 1
//	else 

		ll_new = dw_det.insertrow(0)
		dw_det. scrolltorow(ll_new)
		is_accespromgen = 'S'
		dw_det.object.codant[ll_new] = ls_codant
		
		dw_det.object.prodpromo[ll_new] = 'P'
		dw_det.object.pp_codigo[ll_new] = '24'
		dw_det.setcolumn('codant')
		dw_det.triggerevent('itemchanged') 
		dw_det.object.dv_motor[ll_new] = String(ii_codunico)
		dw_det.object.dv_cantid[ll_new] = 1
		 ii_imprime_ticket_promo  = lc_pedido
	//end if

end event

type dw_itemspremios from datawindow within w_pos
event ue_dwnkey pbm_dwnkey
boolean visible = false
integer x = 3131
integer y = 1796
integer width = 946
integer height = 768
integer taborder = 170
boolean titlebar = true
string title = "PROMOCION PINTUCO"
string dataobject = "dw_cantidad_itemxprom_gen"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event ue_dwnkey;longlong ll_ticked
integer li_cadena
String ced_ruc

if KeyDown(KeyEscape!) then
               wf_encera_pago()
		      borra_fila_promo( 1)
			dw_det.enabled = true
			dw_cab.enabled = true
                dw_det.setcolumn("codant")
                dw_det.setfocus()         
			 is_accespromgen = 'O'
                              

end if

	
end event

event buttonclicked;Integer i, j = 1, li_i
String ls_codant, ls_codprod, ls_sel, ls_coditem_apmpli[], ls_itemstock
long ll_fila
char lch_kit, lch_validastock
decimal lc_pedido, lc_totprod, lc_cantprem
long ll_new
boolean si_hay = false


this.accepttext( )
ll_fila = dw_itemspremios.rowcount()

for i = 1 to ll_fila 
	if this.object.it_activo[i] = 1 then
		ls_sel = 'S'
		i = ll_fila
	else 
		ls_sel = 'N'
	end if
next

if ls_sel = 'N' then 
		messagebox("Aviso","Debe seleccionar un producto antes de Continuar", StopSign!)
		return 1
end if

for j = 1 to 4
	if this.object.it_activo[j] = 1 then
		

			
					
			ls_coditem_apmpli[1] = 'CP2'
			ls_coditem_apmpli[2] = 'DCP'
			ls_coditem_apmpli[3] = 'TPP'
			ls_coditem_apmpli[4] = 'GPP'

			
//				for i = 1 to 4		
//						select it_codigo, it_kit
//						into :ls_codprod, :lch_kit
//						from in_item
//						where it_codant = :ls_coditem_apmpli[i];
//				
//						 si_hay = f_dame_stock_bodega_new(str_appgeninfo.seccion,ls_codprod,lch_kit,lc_pedido) 
//						 
//						if si_hay = false then
//							messagebox("Aviso","El Stock del producto "+ ls_coditem_apmpli[i] + " es menor al requerido", StopSign!)
//							return 1
//							ls_itemstock = 'S'
//						end if
//				next		
//				
//				if	ls_itemstock <> 'S' then
//					for i = 1 to 4			
//							select it_codigo, it_kit
//							into :ls_codprod, :lch_kit
//							from in_item
//							where it_codant = :ls_coditem_apmpli[i];
//					
//							 si_hay = f_dame_stock_bodega_new(str_appgeninfo.seccion,ls_codprod,lch_kit,lc_pedido) 
//							 
//							if si_hay = false then
//								messagebox("Aviso","El Stock del producto "+ ls_coditem_apmpli[i] + " es menor al requerido" , StopSign!)
//								return 1
//							end if
//							
//						
//								ll_new = dw_det.insertrow(0)
//								dw_det. scrolltorow(ll_new)
//								is_accespromgen = 'S'
//								dw_det.object.codant[ll_new] = 	ls_coditem_apmpli[i]
//								dw_det.object.prodpromo[ll_new] = 'P'
//								dw_det.object.pp_codigo[ll_new] = '19'
//								dw_det.setcolumn('codant')
//								dw_det.triggerevent('itemchanged') 
//								dw_det.object.dv_cantid[ll_new] = 1
//							
//					next 
//				end if
	
					ls_codant = this.object.it_codant[j] 
					lc_pedido = 1
			
					select it_codigo, it_kit
					into :ls_codprod, :lch_kit
					from in_item
					where it_codant = :ls_coditem_apmpli[j];
			
					 si_hay = f_dame_stock_bodega_new(str_appgeninfo.seccion,ls_codprod,lch_kit,lc_pedido) 
					 
					if si_hay = false then
							SELECT  PP_STOCK
							INTO  :lch_validastock
							from pm_promocion
							where  pm_promocion.pp_codigo ='19'
							and pp_activo = '1';
			
											
						if lch_validastock = 'N' or IsNull(lch_validastock) then
							messagebox("Aviso","El Stock del producto "+ ls_codant + " es menor al requerido", StopSign!)
							return 1
						end if
					else 
				
						ll_new = dw_det.insertrow(0)
						dw_det. scrolltorow(ll_new)
						is_accespromgen = 'S'
						dw_det.object.codant[ll_new] = ls_coditem_apmpli[j]
						dw_det.object.prodpromo[ll_new] = 'P'
						dw_det.object.pp_codigo[ll_new] = '19'
						dw_det.setcolumn('codant')
						dw_det.triggerevent('itemchanged') 
						dw_det.object.dv_cantid[ll_new] = Dec(lc_pedido)
					end if
				

		
	end if  // Fin it_activo
	
next


dw_itemspremios.visible = false
dw_cab.enabled = true
dw_cab.setcolumn('efectivo')
dw_cab.setfocus( )
is_entro[19] = 'S' 
end event

event clicked;Integer i
CHOOSE CASE dwo.name
	CASE 'it_activo'
		for i = 1 to this.rowcount( )
			this.object.it_activo[i] = 0
		next
END CHOOSE
end event

type dw_cantitem_gen from datawindow within w_pos
event ue_dwnkey pbm_dwnkey
boolean visible = false
integer x = 3122
integer y = 1248
integer width = 901
integer height = 516
integer taborder = 210
boolean titlebar = true
string title = "PROMOCION MONTO"
string dataobject = "dw_cantidad_itemxprom_gen"
boolean livescroll = true
borderstyle borderstyle = styleraised!
end type

event ue_dwnkey;longlong ll_ticked
integer li_cadena
String ced_ruc

if KeyDown(KeyEscape!) then
               wf_encera_pago()
		     borra_fila_promo( 1)
			dw_det.enabled = true
			dw_cab.enabled = true
                dw_det.setcolumn("codant")
                dw_det.setfocus()         
			 is_accespromgen = 'O'
                              

end if

	
end event

event buttonclicked;Integer i, j = 1, li_i
String ls_codant, ls_codprod, ls_sel, ls_coditem_apmpli[], ls_itemstock
long ll_fila
char lch_kit,lch_validastock
decimal lc_pedido, lc_totprod, lc_cantprem
long ll_new
boolean si_hay = false


this.accepttext( )
ll_fila = dw_cantitem_gen.rowcount()

for i = 1 to ll_fila 
	if this.object.it_activo[i] = 1 then
		ls_sel = 'S'
		i = ll_fila
	else 
		ls_sel = 'N'
	end if
next

if ls_sel = 'N' then 
		messagebox("Aviso","Debe seleccionar un producto antes de Continuar", StopSign!)
		return 1
end if

for j = 1 to 2
	if this.object.it_activo[j] = 1 then
		
		if 	this.object.amplifi[j] = 1 then
			
			ls_coditem_apmpli[1] = 'KD-90204'
			ls_coditem_apmpli[2] = 'KD-85114'
			ls_coditem_apmpli[3] = 'KD-10201'

			
				for i = 1 to 3		
						select it_codigo, it_kit
						into :ls_codprod, :lch_kit
						from in_item
						where it_codant = :ls_coditem_apmpli[i];
				
						 si_hay = f_dame_stock_bodega_new(str_appgeninfo.seccion,ls_codprod,lch_kit,lc_pedido) 
						 
						if si_hay = false then
									SELECT  PP_STOCK
									INTO  :lch_validastock
									from pm_promocion
									where  pm_promocion.pp_codigo ='12'
									and pp_activo = '1';
			
											
							if lch_validastock = 'N' or IsNull(lch_validastock) then
								messagebox("Aviso","El Stock del producto "+ ls_coditem_apmpli[i] + " es menor al requerido", StopSign!)
								return 1
							end if
							ls_itemstock = 'S'
						end if
				next		
				
				if	ls_itemstock <> 'S' then
					for i = 1 to 3			
							select it_codigo, it_kit
							into :ls_codprod, :lch_kit
							from in_item
							where it_codant = :ls_coditem_apmpli[i];
					
							 si_hay = f_dame_stock_bodega_new(str_appgeninfo.seccion,ls_codprod,lch_kit,lc_pedido) 
							 
							if si_hay = false then
								SELECT  PP_STOCK
									INTO  :lch_validastock
									from pm_promocion
									where  pm_promocion.pp_codigo ='12'
									and pp_activo = '1';
			
											
								if lch_validastock = 'N' or IsNull(lch_validastock) then
									messagebox("Aviso","El Stock del producto "+ ls_coditem_apmpli[i] + " es menor al requerido" , StopSign!)
									return 1
								end if
							end if
							
						
								ll_new = dw_det.insertrow(0)
								dw_det. scrolltorow(ll_new)
								is_accespromgen = 'S'
								dw_det.object.codant[ll_new] = 	ls_coditem_apmpli[i]
								dw_det.object.prodpromo[ll_new] = 'P'
								dw_det.object.pp_codigo[ll_new] = '12'
								dw_det.setcolumn('codant')
								dw_det.triggerevent('itemchanged') 
								dw_det.object.dv_cantid[ll_new] = 1
							
					next 
				end if
		else
					ls_codant = this.object.it_codant[j] 
					lc_pedido = 1
			
					select it_codigo, it_kit
					into :ls_codprod, :lch_kit
					from in_item
					where it_codant = :ls_codant;
			
					 si_hay = f_dame_stock_bodega_new(str_appgeninfo.seccion,ls_codprod,lch_kit,lc_pedido) 
					 
					if si_hay = false then
						SELECT  PP_STOCK
						INTO  :lch_validastock
						from pm_promocion
						where  pm_promocion.pp_codigo ='12'
						and pp_activo = '1';
	
											
						if lch_validastock = 'N' or IsNull(lch_validastock) then
							messagebox("Aviso","El Stock del producto "+ ls_codant + " es menor al requerido", StopSign!)
							return 1
						end if
					else 
				
						ll_new = dw_det.insertrow(0)
						dw_det. scrolltorow(ll_new)
						is_accespromgen = 'S'
						dw_det.object.codant[ll_new] = ls_codant
						dw_det.object.prodpromo[ll_new] = 'P'
						dw_det.object.pp_codigo[ll_new] = '12'
						dw_det.setcolumn('codant')
						dw_det.triggerevent('itemchanged') 
						dw_det.object.dv_cantid[ll_new] = Dec(lc_pedido)
					end if
				
			end if
		
	end if  // Fin it_activo
	
next


dw_cantitem_gen.visible = false
dw_cab.enabled = true
dw_cab.setcolumn('efectivo')
dw_cab.setfocus( )
is_entro[12] = 'S' 
end event

event clicked;Integer i
CHOOSE CASE dwo.name
	CASE 'it_activo'
		for i = 1 to this.rowcount( )
			this.object.it_activo[i] = 0
		next
END CHOOSE
end event

type sle_2 from singlelineedit within w_pos
integer x = 2962
integer y = 156
integer width = 626
integer height = 88
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type dw_cheque from datawindow within w_pos
boolean visible = false
integer x = 1952
integer y = 816
integer width = 2501
integer height = 752
integer taborder = 120
string title = "none"
string dataobject = "dw_prn_cheque"
boolean livescroll = true
borderstyle borderstyle = styleraised!
end type

type dw_vaucher_nc from datawindow within w_pos
boolean visible = false
integer x = 3936
integer y = 748
integer width = 1157
integer height = 1596
integer taborder = 60
string title = "none"
string dataobject = "d_nc_vaucher_pago_term"
boolean livescroll = true
borderstyle borderstyle = styleraised!
end type

type dw_compag_nc from datawindow within w_pos
boolean visible = false
integer x = 3817
integer y = 752
integer width = 1221
integer height = 1804
integer taborder = 250
string dataobject = "d_nc_comprob_pago_term"
boolean livescroll = true
borderstyle borderstyle = styleraised!
end type

type dw_9 from datawindow within w_pos
boolean visible = false
integer x = 640
integer y = 1752
integer width = 3127
integer height = 744
integer taborder = 230
boolean titlebar = true
string title = "PROMOCIONES ACTIVAS"
boolean resizable = true
boolean livescroll = true
end type

type dw_actualiza_cliente from datawindow within w_pos
boolean visible = false
integer x = 32
integer y = 456
integer width = 3803
integer height = 264
integer taborder = 240
boolean titlebar = true
string title = "none"
string dataobject = "d_cliente_actualiza_promo"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event buttonclicked;String ls_to, ls_remite, ls_cc, ls_asunto, ls_body, ls_adjunto, ls_server,ls_userid, ls_passwd, ls_codverificador, ls_user 
Long ll_port



if dwo.name = 'b_1' then
	messagebox("Aviso", "Actualizado Satisfactoriamente...... !")
	dw_actualiza_cliente.visible = false

	SELECT CE_FAX, CE_EMAIL
	INTO  :ls_codseg, :ls_emailbono
	FROM FA_CLIEN
	WHERE CE_CODIGO = :is_codcli;  
	
//	ls_codseg =ls_codseg 
	
	
	SELECT BN_VERIF
	into :ls_codverificador
	FROM FA_BONO
	WHERE BN_CODIGO = :is_bono
	AND CE_CODIGO = :is_codcli;

ls_codseg = ls_codseg + '-' + ls_codverificador

ls_remite = 'dynamic@pintulac.com.ec'
ls_to = ls_emailbono
//gs_archivo = ''
ls_body = 'El numero de verificación es:  ' + ls_codverificador
ls_asunto = 'GANADOR PINTULAC 100'
ls_cc = ''
ls_adjunto = '' 
ls_user = 'tecnico'

f_enviar_correo(ls_remite,ls_to, ls_cc, ls_asunto, ls_body, ls_adjunto, ls_user )

openwithparm(w_envio_sms, ls_codseg) // abre la ventana 2 y pasa la variable

//Fin Generacion de codigo de seguridad
end if 
end event

type dw_8 from datawindow within w_pos
boolean visible = false
integer x = 539
integer y = 1684
integer width = 1664
integer height = 560
integer taborder = 220
boolean titlebar = true
string title = "none"
string dataobject = "d_nc_cxc_preimpresa_bono"
boolean resizable = true
boolean livescroll = true
end type

type dw_7 from datawindow within w_pos
boolean visible = false
integer x = 3899
integer y = 76
integer width = 2354
integer height = 852
integer taborder = 20
string title = "none"
string dataobject = "dw_rep_bono"
boolean resizable = true
boolean livescroll = true
end type

type dw_6 from datawindow within w_pos
integer x = 3886
integer y = 56
integer width = 1243
integer height = 2024
boolean titlebar = true
string title = "Productos Relacionados/ Ventas Cruzadas"
string dataobject = "dw_itemrel_pos"
boolean vscrollbar = true
boolean resizable = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event doubleclicked;Integer li_filas, ll_pos
String ls_codant, ls_codigo
ls_codant = dw_6.object.in_item_it_codant [dw_6.GetRow()] 
ls_codigo = dw_6.object.it_codrel [dw_6.GetRow()] 
//ll_pos = dw_det.InsertRow(0)
//dw_det.ScrollTorow(ll_pos)
//dw_6.object.compute_1.ColorText=rgb(8,8,8)
dw_det.object.codant[dw_det.getrow()] = ls_codant
//dw_det.object.compute_1[dw_6.GetRow()].
dw_6.retrieve(ls_codigo)

dw_det.SetColumn('codant')
dw_det.setfocus()
dw_det.triggerevent(itemchanged!)

end event

type dw_preim from datawindow within w_pos
integer x = 119
integer y = 464
integer width = 2555
integer height = 1136
boolean titlebar = true
string title = "CAJA PREIMPRESA"
string dataobject = "dw_cajas_sucursal"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event itemchanged;long ll_row, i, contador, ll_cad
integer li_dias
date ld_hoy
powerobject lpo_parent 
window lw_ventana 

lpo_parent = This.GetParent() 
Do While lpo_parent.TypeOf() <> Window! and IsValid (lpo_parent) 
lpo_parent = lpo_parent.GetParent() 
Loop 

lw_ventana = lpo_parent 

dw_preim.SelectRow(0, false) 
dw_preim.SelectRow(row, TRUE)


IF (dwo.name = 'campo' ) THEN
	
					select sysdate
					into :ld_hoy
					from dual;
	
					ll_row = dw_preim.RowCount()
					dw_preim.object.campo[row]='S'
					for i=1 to ll_row
					if dw_preim.object.campo[i]='S' and dw_preim.getrow()<> i then
						dw_preim.object.campo[i]='N'
					end if
					next
					contador = messagebox("FACTURACION PREIMPRESA", "Es esta la caja que va utilizar para FACTURACIÓN PREIMPRESA", Question!, YesNo!, 1)
					
									
									
							
					if contador = 1  then
							caja.caja = dw_preim.object.cj_caja[dw_preim.GetRow()]
							caja.nombre = dw_preim.object.cj_nombre[dw_preim.GetRow()]
							caja.feccad = date(dw_preim.object.cj_feccad[dw_preim.GetRow()])
							caja.ch_max = dw_preim.object.cj_maxche[dw_preim.GetRow()]
							caja.ch_min = dw_preim.object.cj_minche[dw_preim.GetRow()]
							caja.ch_vuelto = dw_preim.object.cj_vuelche[dw_preim.GetRow()]
							caja.tj_max = dw_preim.object.cj_maxtar[dw_preim.GetRow()]
							caja.tj_min = dw_preim.object.cj_mintar[dw_preim.GetRow()]
						
							
							
							li_dias = daysafter(ld_hoy, caja.feccad)
													
							IF li_dias > 0 and li_dias<=15 THEN
									messagebox("Atención","FALTAN ( "+string(li_dias)+" ) DIAS PARA QUE LAS FACTURAS DEL POS DE LA CAJA : "+caja.caja+" CADUQUEN...")
								
							ELSEIF li_dias = 0 THEN
									  messagebox("Atención","LAS FACTURAS DEL POS DE LA CAJA : "+caja.caja+" CADUCAN HOY POR FAVOR INFORME A CONTABILIDAD...")
							ELSEIF li_dias< 0 THEN 
									messagebox("Atención","LAS FACTURAS DEL POS DE LA CAJA "+caja.caja+" ESTAN CADUCADAS NO PUEDE CONTINUAR : " , StopSign!)
									return
									
							END IF
						
							dw_preim.visible = false
							dw_preim.enabled = false
						
							
							// al llegar aquí tendrás la ventana en el powerobject lpo_parent: 
							lw_ventana.title = lw_ventana.title + "         " +gs_empresa+"/"+ gs_su_nombre + "/" + gs_bo_nombre+"/ Caja: "+&
                                                                              caja.caja+" "+caja.nombre+" "+gs_empleado
							dw_det.enabled = true
							dw_det.visible = true
							dw_det.setfocus()
							dw_det.setcolumn('codant')
							dw_det.setfocus()
							sle_1.visible = visible
							Setpointer(arrow!)
							
							
							
					
							
							end if 
END IF



end event

type gb_obsequio from groupbox within w_pos
boolean visible = false
integer x = 1298
integer y = 968
integer width = 690
integer height = 336
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 16777215
long backcolor = 12639424
boolean enabled = false
string text = "Obsequio Navideño"
end type

type dw_5 from datawindow within w_pos
boolean visible = false
integer x = 3630
integer y = 1364
integer width = 686
integer height = 400
integer taborder = 200
string dataobject = "d_forma_pago_elect"
boolean livescroll = true
borderstyle borderstyle = styleraised!
end type

type dw_4 from datawindow within w_pos
boolean visible = false
integer x = 3374
integer y = 456
integer width = 882
integer height = 704
integer taborder = 70
string title = "none"
string dataobject = "d_factura_pos_text"
boolean livescroll = true
borderstyle borderstyle = styleraised!
end type

type cb_asesor from commandbutton within w_pos
boolean visible = false
integer x = 2158
integer y = 124
integer width = 343
integer height = 100
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
boolean enabled = false
string text = "ASESOR"
end type

event clicked;long ll_color2,ll_color, cont
datawindowchild ldwc_fp,ldwc_if,ldwc_autoriza
string datos[3]

If is_estado = '3' Then
                                                               
                                                               IF (cb_asesor.text = 'ASESOR') THEN
                                                                                              dw_det.DataObject = 'd_detalle_ticket_new_prof'
                                                                                              cb_asesor.text = 'NORMAL'
                                                                                              prog_asesor = 1
                                                               ELSEIF(cb_asesor.text = 'NORMAL') THEN
                                                                              dw_det.DataObject = 'd_detalle_ticket_new'
                                                                                              cb_asesor.text = 'ASESOR'
                                                                                              prog_asesor = 0
                                                               END IF
                                                               
                                                                                              gs_pos = 'Abierto'
                                                                                              gi_count ++
                                                                                              datos[1] = str_appgeninfo.empresa
                                                                                              datos[2] = 'VP'
                                                                                              datos[3] = str_appgeninfo.sucursal
                                                                                              dw_2.settransobject(sqlca)
                                                                                              f_recupera_datos(dw_2,"supervisor",datos,3)
                                                                                              
                                                                                              dw_forma_pago.getchild("fp_codigo",ldwc_fp)
                                                                                              dw_forma_pago.getchild("if_codigo",ldwc_if)
                                                                                              
                                                                                              ldwc_fp.settransobject(sqlca)
                                                                                              ldwc_fp.retrieve(str_appgeninfo.empresa)
                                                                                              ldwc_fp.SetFilter("( fp_codigo <> '0' ) and ( fp_string like '%V%' ) and ( rp_tipo <> 'A' )")
                                                                                              ldwc_fp.Filter()
                                                                                              
                                                                                              ldwc_if.settransobject(sqlca)
                                                                                              ldwc_if.retrieve(str_appgeninfo.empresa)
                                                                                              
                                                                                              
                                                                                              dw_forma_pago.getchild("rp_numcta",idwc_ctas)
                                                                                              idwc_ctas.settransobject(sqlca)
                                                                                              idwc_ctas.insertrow(0)
                                                                                              
                                                                                              dw_cliente.settransobject(sqlca)
                                                                                              dw_det.Settransobject(sqlca)
                                                                                              dw_forma_pago.SetTransObject(sqlca)
                                                                                              
                                                                                              dw_movim.settransobject(sqlca)
                                                                                              dw_rep_ticket.settransobject(sqlca)
                                                                                              dw_stock_sucur.SetTransObject(sqlca)
                                                                                              
                                                                                              select nvl(cj_nombre,' '),cj_feccad
                                                                                              into :caja.nombre,:caja.feccad
                                                                                              from fa_caja
                                                                                              where cj_caja = :caja.caja
                                                                                              and em_codigo = :str_appgeninfo.empresa
                                                                                              and su_codigo = :str_appgeninfo.sucursal
                                                                                              and bo_codigo = :str_appgeninfo.seccion;
                                                                                              
                                                                                              
                                                                                              //w_pos.title = w_pos.title + "         " +gs_empresa+"/"+ gs_su_nombre + "/" + gs_bo_nombre+"/ Caja: "+&
                                                                                                              //                                                           caja.caja+" "+caja.nombre+" "+gs_empleado
                                                                                              
                                                                                              dw_det.insertrow(0)
                                                                                              dw_cab.insertrow(0)
                                                                                              dw_det.setfocus()
                                                                                              
                                                                                              dw_3.settransobject(sqlca)
                                                                                              
                                                                                              select pr_valor
                                                                                              into :ii_promo
                                                                                              from pr_param
                                                                                              where em_codigo = :str_appgeninfo.empresa
                                                                                              and pr_nombre = 'PROMO';
                                                                                              if sqlca.sqlcode < 0 then
                                                                                                              rollback;
                                                                                                              messagebox("Error en Promo","Problemas al consultar...comuniquese con sistemas "+sqlca.sqlerrtext,stopsign!)
                                                                                                              return
                                                                                              end if
                                                                                              
                                                                                              //select pr_valor
                                                                                              //into :ii_promosuc
                                                                                              //from pr_param
                                                                                              //where em_codigo = :str_appgeninfo.empresa
                                                                                              //and pr_nombre = 'PROMOSUC';
                                                                                              //if sqlca.sqlcode < 0 then
                                                                                              //            rollback;
                                                                                              //            messagebox("Error en Promo. Sucur.","Problemas al consultar...comuniquese con sistemas "+sqlca.sqlerrtext,stopsign!)
                                                                                              //            return
                                                                                              //end if
                                                                                              //if ii_promosuc = 1 then
                                                                                              //            choose case str_appgeninfo.sucursal 
                                                                                              //                           case '11','12'
                                                                                              //                                           dw_det.object.b_3.visible = true
                                                                                              //            end choose
                                                                                              //end if
                                                                                              //
                                                                                              
                                                                                              //select pr_valor
                                                                                              //into :ii_marca
                                                                                              //from pr_param
                                                                                              //where em_codigo = :str_appgeninfo.empresa
                                                                                              //and pr_nombre = 'MARCAPROMO';
                                                                                              //if sqlca.sqlcode < 0 then
                                                                                              //            rollback;
                                                                                              //            messagebox("Error en fabpromo","Problemas al consultar...comuniquese con sistemas "+sqlca.sqlerrtext,stopsign!)
                                                                                              //            return
                                                                                              //end if
                                                                                              
                                                                                              
                                                                                              select pr_valor
                                                                                              into :ii_montop
                                                                                              from pr_param
                                                                                              where em_codigo = :str_appgeninfo.empresa
                                                                                              and pr_nombre = 'MONTOPROMO';
                                                                                              if sqlca.sqlcode < 0 then
                                                                                                              rollback;
                                                                                                              messagebox("Error en montopromo","Problemas al consultar...comuniquese con sistemas "+sqlca.sqlerrtext,stopsign!)
                                                                                                              return
                                                                                              end if 
                                                                                              
                                                                                              select em_ruc
                                                                                              into :ls_rucemp
                                                                                              from pr_empre t
                                                                                              where em_codigo = :str_appgeninfo.empresa;
                                                                                              if sqlca.sqlcode < 0 then
                                                                                                              rollback;
                                                                                                              messagebox("Error en montopromo","Problemas al consultar RUC de la empresa...comuniquese con sistemas "+sqlca.sqlerrtext,stopsign!)
                                                                                                              return
                                                                                              end if 
                                                                                              
                                                                                              
                                                                                              //Seteo para elegir Factura o Proforma
                                                                                              //if str_appgeninfo.tipo = '2' then
                                                                                              //            is_estado =  '2'
                                                                                             //if str_appgeninfo.estado = '1' Then
                                                                                              //            dw_det.SetItem(1,'c_formato','Nota de Venta POS')
                                                                                              //             dw_det.modify(" proforma.text = 'Nota de Venta POS'")                                         
                                                                                              //            ll_color2 = rgb(ProfileInt("Dynasif.INI", "Colores","HR",255),ProfileInt("Dynasif.INI", "Colores", "HG",255),ProfileInt("Dynasif.INI", "Colores", "HB",200))
                                                                                              //            ll_color = rgb(ProfileInt("Dynasif.INI", "Colores","BR",255),ProfileInt("Dynasif.INI", "Colores", "BG",255),ProfileInt("Dynasif.INI", "Colores", "BB",200))
                                                                                              //            dw_det.Modify("DataWindow.Header.Color="+string(ll_color))
                                                                                              //            dw_det.object.barra.BackGround.Color=ll_color2
                                                                                              //            ll_color2 = rgb(128,0,0)
                                                                                              //            dw_det.object.c_formato.Color= ll_color2
                                                                                              //            dw_det.object.st_efec.Color = ll_color2                            
                                                                                              //            ll_color2 = rgb(0,0,128)                               
                                                                                              //            dw_det.object.cc_tarjeta.Color = ll_color2
                                                                                              //            dw_det.object.cc_total.Color = ll_color2                           
                                                                                              //            dw_det.object.st_siniva.Color = ll_color2                                                           
                                                                                              //            dw_det.object.st_tarjeta.Color = ll_color2
                                                                                              //            ll_color2 = rgb(128,0,0)                               
                                                                                              //            dw_det.object.st_1.Color = ll_color2
                                                                                              //            dw_det.object.st_2.Color = ll_color2
                                                                                              //            dw_det.object.t_3.Color = ll_color2     
                                                                                              //            dw_det.object.st_3.Color = ll_color2
                                                                                              //            dw_det.object.st_4.Color = ll_color2
                                                                                              //            dw_det.object.st_5.Color = ll_color2
                                                                                              //            dw_det.object.st_6.Color = ll_color2
                                                                                              //            dw_det.object.st_7.Color = ll_color2
                                                                                              //            dw_det.object.st_8.Color = ll_color2
                                                                                              //            dw_det.object.st_9.Color = ll_color2
                                                                                              //            dw_det.object.st_10.Color = ll_color2
                                                                                              //            dw_det.object.st_11.Color = ll_color2                                                
                                                                                              //            dw_det.object.st_12.Color = ll_color2                 
                                                                                              //            dw_det.object.st_13.Color = ll_color2                 
                                                                                              //            dw_det.object.st_14.Color = ll_color2                 
                                                                                              //end if
                                                                                              //if str_appgeninfo.estado = '2' Then
                                                                                              //            dw_det.SetItem(1,'c_formato','Factura POS')
                                                                                              //     dw_det.modify(" proforma.text = 'Factura POS'")                               
                                                                                              //            ll_color2 = rgb(ProfileInt("Dynasif.INI", "Colores","HR",255),ProfileInt("Dynasif.INI", "Colores", "HG",196),ProfileInt("Dynasif.INI", "Colores", "HB",196))
                                                                                              //            ll_color = rgb(ProfileInt("Dynasif.INI", "Colores","BR",255),ProfileInt("Dynasif.INI", "Colores", "BG",196),ProfileInt("Dynasif.INI", "Colores", "BB",196))
                                                                                              //            dw_det.Modify("DataWindow.Header.Color="+string(ll_color))
                                                                                              //            dw_det.object.barra.BackGround.Color=ll_color2
                                                                                              //
                                                                                              //            ll_color2 = rgb(128,0,0)
                                                                                              //            dw_det.object.c_formato.Color= ll_color2
                                                                                              //            dw_det.object.st_efec.Color = ll_color2                             
                                                                                              //            ll_color2 = rgb(0,0,128)                 
                                                                                              //            dw_det.object.cc_tarjeta.Color = ll_color2
                                                                                              //            dw_det.object.cc_total.Color = ll_color2                            
                                                                                              //            dw_det.object.st_siniva.Color = ll_color2                                                            
                                                                                              //            dw_det.object.st_tarjeta.Color = ll_color2
                                                                                              //            ll_color2 = rgb(128,0,0)                 
                                                                                              //            dw_det.object.st_1.Color = ll_color2
                                                                                              //            dw_det.object.st_2.Color = ll_color2
                                                                                              //            dw_det.object.t_3.Color = ll_color2                    
                                                                                              //            dw_det.object.st_3.Color = ll_color2
                                                                                              //            dw_det.object.st_4.Color = ll_color2
                                                                                              //            dw_det.object.st_5.Color = ll_color2
                                                                                              //            dw_det.object.st_6.Color = ll_color2
                                                                                              //            dw_det.object.st_7.Color = ll_color2
                                                                                              //            dw_det.object.st_8.Color = ll_color2
                                                                                              //            dw_det.object.st_9.Color = ll_color2
                                                                                              //            dw_det.object.st_10.Color = ll_color2
                                                                                              //            dw_det.object.st_11.Color = ll_color2
                                                                                              //   dw_det.object.st_12.Color = ll_color2                                                                         
                                                                                              //            dw_det.object.st_13.Color = ll_color2                                 
                                                                                              //            dw_det.object.st_14.Color = ll_color2                                 
                                                                                              //end if
                                                                                              //else
                                                                                              //              is_estado =  '3'
                                                                                              //       m_marco.m_archivo.m_proforma.visible = false
                                                                                              //       m_marco.m_archivo.m_proforma.enabled = false
                                                                                              //       m_marco.m_archivo.m_recuperarproforma.enabled = true
                                                                                              //       m_marco.m_archivo.m_facturarprofroma.visible = false                
                                                                                              //       m_marco.m_archivo.m_facturaranuladas.visible = false                                                  
                                                                                                               dw_det.SetItem(1,'c_formato','Proforma')
                                                                                                              dw_det.object.proforma.text = 'Proforma'                      
                                                                                                               ll_color = rgb(ProfileInt("Dynasif.INI", "Colores","HR",150),ProfileInt("Dynasif.INI", "Colores", "HG",200),ProfileInt("Dynasif.INI", "Colores", "HB",170))
                                                                                                              ll_color2 = rgb(ProfileInt("Dynasif.INI", "Colores","BR",150),ProfileInt("Dynasif.INI", "Colores", "BG",200),ProfileInt("Dynasif.INI", "Colores", "BB",170))
                                                                                                              dw_det.Modify("DataWindow.Header.Color="+string(ll_color))
                                                                                                              dw_det.object.barra.BackGround.Color=ll_color2
                                                                                                              
                                                                                                              ll_color2 = rgb(255,255,255)
                                                                                                              dw_det.object.c_formato.Color= ll_color2
                                                                                                              dw_det.object.cc_tarjeta.Color = ll_color2
                                                                                                              dw_det.object.cc_total.Color = ll_color2                           
                                                                                                               dw_det.object.st_efec.Color = ll_color2                            
                                                                                                               dw_det.object.st_siniva.Color = ll_color2                                                           
                                                                                                               dw_det.object.st_tarjeta.Color = ll_color2                                                                                       
                                                                                                               ll_color2 = rgb(0,0,0)
                                                                                                              dw_det.object.st_1.Color = ll_color2
                                                                                                              dw_det.object.st_2.Color = ll_color2
                                                                                                              dw_det.object.t_3.Color = ll_color2                     
                                                                                                               dw_det.object.st_3.Color = ll_color2
                                                                                                              dw_det.object.st_4.Color = ll_color2
                                                                                                              dw_det.object.st_5.Color = ll_color2
                                                                                                              dw_det.object.st_6.Color = ll_color2
                                                                                                              dw_det.object.st_7.Color = ll_color2
                                                                                                              dw_det.object.st_8.Color = ll_color2
                                                                                                              dw_det.object.st_9.Color = ll_color2
                                                                                                              dw_det.object.st_10.Color = ll_color2
                                                                                                              dw_det.object.st_11.Color = ll_color2                 
                                                                                                               dw_det.object.st_12.Color = ll_color2
                                                                                                              dw_det.object.st_13.Color = ll_color2 
                                                                                                              dw_det.object.st_14.Color = ll_color2 
                                                                                              //end if
                                                                                              
                                                               
                                                               
                                                               
                                                               postevent('ue_postopen')

                                                               
ELSE
                                               messagebox("Información","Debe estar en el modo de Proforma para habilitar esta opción", StopSign!)
                                               return 1
                                               
                
END IF
end event

type cb_2 from commandbutton within w_pos
boolean visible = false
integer x = 2578
integer y = 44
integer width = 343
integer height = 100
integer taborder = 80
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "&Grabar"
end type

event clicked;parent.triggerevent("ue_guardar")
end event

type cb_1 from commandbutton within w_pos
boolean visible = false
integer x = 2149
integer y = 48
integer width = 343
integer height = 100
integer taborder = 10
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "&Pagar"
end type

event clicked;parent.triggerevent("ue_cancelar")
end event

type dw_servicheck_certifica from datawindow within w_pos
boolean visible = false
integer x = 1051
integer y = 1044
integer width = 1093
integer height = 300
integer taborder = 160
boolean titlebar = true
string title = "Servicheck - Certificado"
string dataobject = "d_servicheck_certifica"
boolean livescroll = true
borderstyle borderstyle = styleraised!
end type

event buttonclicked;string ls_tienedescto, ls_fpcodigo,ls_fpcpdigo
integer i, li_i
dec{2} lc_abono, lc_valorpagar, ld_cantatomo, lc_valorcheque, lc_porcsg, lc_salmin, lc_salmax, lc_totsobregiro, lc_valdec, lc_desc2
char  lch_itdescue

//Actualiza valores de la cabecera y  determina el valor a pagar de todo el ticket
lc_valorpagar = wf_actualiza_saldos()
//**********
dw_forma_pago.AcceptText()
ld_cantatomo = ld_cantatomo + dw_forma_pago.Getitemdecimal(row,'rp_valor')

if dwo.name = "b_certificado" then 
                //aviso para q ponga descuento
                //            this.object.rp_numcta[row] = ""
                               for li_i = 1 to dw_det.rowcount()
                                               
                                               //string ls_itcodigo  //obsequio
                                                               //ls_itcodigo = dw_det.GetItemString(li_i,"it_codigo")  //obsequio
                                                               
                                                               //if ls_itcodigo = '4391'  or ls_itcodigo = '11356' then //obsequio

                                                               //else //obsequio
//																      if lc_desc2 = lc_valdec and li_sumfp > 0 and 	ic_desc2=0 and lch_itdescue = 'S' then
//																			
// 																	  end if
						 Select nvl(ps_valor,0)
						  into :lc_valdec 
						  from pr_numsuc
						  where em_codigo = :str_appgeninfo.empresa
						  and su_codigo = :str_appgeninfo.sucursal
						  and pr_nombre = 'DSC_POS';
							
							 lc_desc2 = dw_det.object.dv_desc2[li_i] 
							  lch_itdescue = dw_det.object.it_descue[li_i]
							 													
								if lc_desc2 = lc_valdec  and 	ic_desc2=0 and lch_itdescue = 'S' then  //Condicion que verica si el item da descuento o no
																											if dw_det.Object.dv_desc2[li_i] = 0.00 and dw_forma_pago.Object.fp_codigo[row] =  '1' then
																																 Messagebox("Atención","Falta poner el descuento de pago en efectivo...<verifíque>",Exclamation!)
																																 dw_forma_pago.DeleteRow(dw_forma_pago.GetRow())
																																 dw_forma_pago.Reset()
																																 dw_servicheck_certifica.Visible = false
																																 dw_forma_pago.enabled = true
																																 return
																											End if
																											
								end if
                                                               //end if//obsequio
                               next
                //fin de aviso para q ponga descuento
                
                dw_forma_pago.settaborder("rp_comen",70)
                ls_tienedescto = 'S' 
                               dw_servicheck_certifica.Visible = false
                //aqui debo poner la clave para q ingrese el administrador
                dw_autoriza_adminis.reset()
                dw_autoriza_adminis.insertrow(1)
                dw_autoriza_adminis.visible = true
                dw_autoriza_adminis.setfocus()
	  		   ii_servicheck = 0
end if

if dwo.name = "b_cancelar" then 
                dw_servicheck_certifica.Visible = false
                dw_forma_pago.settaborder("rp_comen",0)
                ls_tienedescto = 'S'
                dw_forma_pago.DeleteRow(dw_forma_pago.GetRow())
                dw_forma_pago.enabled = true
			   ii_servicheck = 0
                return
end if

if dwo.name = "b_servicheck" then 
                dw_servicheck_certifica.Visible = false
                dw_forma_pago.settaborder("rp_comen",70)
                ls_tienedescto = 'N'       
                dw_forma_pago.object.estado[dw_forma_pago.GetRow()] = 'N'  //jaic
                dw_forma_pago.enabled = true
			  ii_servicheck = 1
end if

//********************************************************
                //Insertamos el saldo correspondiente de acuerdo al valor a pagar
                if dw_forma_pago.Object.rp_valor[dw_forma_pago.GetRow()] = 0 then
                               lc_abono = dw_cab.Object.cc_saldo[1]
                else
                               if lc_valorpagar <> dw_cab.object.cc_pagado[1] then 
                                               lc_abono = lc_valorpagar - (dw_cab.Object.cc_pagado[1] - dw_forma_pago.Object.rp_valor[dw_forma_pago.GetRow()])
                               else
                                               lc_abono = dw_forma_pago.Object.rp_valor[dw_forma_pago.GetRow()]
                               end if
                end if
                
                ls_fpcodigo = dw_forma_pago.GetItemString(dw_forma_pago.GetRow(),'fp_codigo')
                /*Empieza la asignación*/
                if ls_fpcodigo = '2' then  lc_abono = 0
                if ls_fpcodigo = '7' then  lc_abono = dw_cab.Object.iva[1]*(tasa.retiva30/100)
                if ls_fpcodigo = '6' then  
                               lc_abono = dw_cab.Object.cc_neto[1]* tasa.retencion
                               dw_forma_pago.settaborder("rp_comen",70)
                elseif ls_fpcodigo = '1' then
                                               if is_tipcli <> 'SEF' and  is_tipcli <> 'CHPV' then //jaic
                                                               dw_forma_pago.settaborder("rp_comen",0)
                                               end if
                else
                               dw_forma_pago.settaborder("rp_comen",0)
                end if
                
                dw_forma_pago.Object.rp_valor[dw_forma_pago.GetRow()] = lc_abono
                //jaic
                if is_tipcli = 'CHPV'/* and is_estcre = 'A' */ then  
                
                               if ld_cantatomo > 50 then //jaic
                                               if is_facturar <> 'S' and is_cat <> 'A' then
                                                               messageBox('Atención','No se puede facturar a este cliente. Verifique con Cartera',Exclamation!)
                                                               return
                                               end if                   
                                               //suma todas las filas q tengan comoforma de pago cheque
                                               lc_valorcheque = 0
                                               for i = 1 to dw_forma_pago.RowCount()
                                                              ls_fpcpdigo = dw_forma_pago.GetItemString(i,'fp_codigo')
                                                               if ls_fpcpdigo = '1' then
                                                                              lc_valorcheque = lc_valorcheque + dw_forma_pago.GetItemNumber(i,'rp_valor')
                                                               end if
                                               next
                                               
//                                           //consulta para saber q porcentaje poder sobregirar
//                                           select  stock, pe_min, pe_max
//                                           into :lc_porcsg, :lc_salmin, :lc_salmax 
//                                           from pr_premios
//                                           where (pe_min <= :ic_cupcre and pe_max >= :ic_cupcre)
//                                           and pe_codigo = 'CLIENTE';
//                                           lc_totsobregiro = ic_salcre + (ic_cupcre * (lc_porcsg/100)) 
//                                                           
//                                           if lc_valorcheque > lc_totsobregiro then //si se pasa del sobregiro no le permite continuar y enviará el mensaje
//                                                           messagebox('Atención','El valor ingresado excede el cupo de crédito: '+string(ic_cupcre,'#,##0.00') + ' (Saldo: '+ string(ic_salcre,'#,##0.00') +') más sobregiro de: ' +string((ic_cupcre * (lc_porcsg/100)),'#,##0.00') + '...Verifique con Cartera',Exclamation!)
//                                                           return 1
//                                           end if
                
                               end if
                end if
                               //end if jaic
                               wf_validar()
                               dw_forma_pago.setfocus()
                               dw_forma_pago.setcolumn("if_codigo")
end event

type dw_autoriza_adminis from datawindow within w_pos
boolean visible = false
integer x = 1303
integer y = 700
integer width = 1056
integer height = 476
integer taborder = 140
boolean titlebar = true
string title = "Autoriza Cheque Certificado"
string dataobject = "d_autoriza_admin"
boolean controlmenu = true
boolean livescroll = true
borderstyle borderstyle = styleraised!
end type

event buttonclicked;string ls_usuario, ls_clave, ls_tipo,ls_cambpre,ls_codigo,ls_codant
decimal {2} lc_precio,lc_costoiva,lc_desc1,lc_desc2,lc_desc3,lc_precio1,lc_descue,lc_costo
long ll_cantid
integer li_fila

setpointer (Hourglass!)

if dwo.name = "b_1" then
                li_fila = dw_forma_pago.getrow()

                if li_fila < 1 then return
                
                dw_autoriza_adminis.acceptText()
                ls_usuario = getitemstring(1,"supervisor")
                ls_clave = getitemstring(1,"clave")
                
                Select sa_tipo,sa_cambpre
                into :ls_tipo,:ls_cambpre
                from sg_acceso
                where em_codigo = :str_appgeninfo.empresa
                and su_codigo = :str_appgeninfo.sucursal
                and sa_login = :ls_usuario
                and sa_passwd = :ls_clave;
               
				if sqlca.sqlcode = 100 then
                               Messagebox("Atención","Las credenciales no son correctas, por favor intente otra vez.")
                               Return  
                end if
                
                If ls_tipo = 'S' then 

							dw_forma_pago.enabled = true
                               dw_forma_pago.SetItem(dw_forma_pago.GetRow(),'rp_comen','CERTIFICADO')
                               dw_forma_pago.settaborder ('rp_comen',0)
                               dw_autoriza_adminis.visible = false
				             dw_forma_pago.setfocus()
						else                       
                               dw_forma_pago.settaborder("rp_comen",70)
                               MessageBox("Atención","No tiene permiso para autorizar cheque certificado.")
                               return
                end if
end if

if dwo.name = "b_2" then
                dw_forma_pago.enabled = true
                dw_forma_pago.DeleteRow(dw_forma_pago.GetRow())
                dw_autoriza_adminis.visible = false
                dw_forma_pago.setfocus()
end if
end event

type dw_3 from datawindow within w_pos
boolean visible = false
integer x = 398
integer y = 432
integer width = 837
integer height = 500
boolean titlebar = true
string title = "Stock de Boletos"
string dataobject = "dw_stock_premios"
boolean controlmenu = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = styleraised!
end type

type dw_precio from datawindow within w_pos
event ue_downkey pbm_dwnkey
boolean visible = false
integer x = 366
integer y = 820
integer width = 2747
integer height = 480
integer taborder = 90
boolean titlebar = true
string title = "Cambiar Precio"
string dataobject = "d_cambiar_precio"
boolean controlmenu = true
string icon = "imagenes\pos.ico"
boolean livescroll = true
borderstyle borderstyle = styleraised!
end type

event ue_downkey;if (KeyDown(KeyControl!)) and (KeyDown(KeyEnter!)) then          
                triggerevent("buttonclicked")
                return
end if
if KeyDown(Keyescape!) then  
                visible= false
                dw_det.setfocus()
                dw_det.setcolumn("codant")
                return
end if
end event

event buttonclicked;string ls_usuario, ls_clave, ls_tipo,ls_cambpre,ls_codigo,ls_codant, ls_clase
decimal {2} lc_precio,lc_costoiva,lc_desc1,lc_desc2,lc_desc3,lc_precio1,lc_descue,lc_costo
long ll_cantid
integer li_fila

setpointer (Hourglass!)
li_fila = dw_det.getrow()
if li_fila < 1 then return

dw_precio.acceptText()
lc_precio = getitemdecimal(1,"precio")
ls_usuario = getitemstring(1,"supervisor")
ls_clave = getitemstring(1,"clave")


//// solicitado por Mercadeo y Supervisor de POS autorizado por Don Walter 1-12-13
//Select sa_tipo,sa_cambpre
//into :ls_tipo,:ls_cambpre
//from sg_acceso
//where em_codigo = :str_appgeninfo.empresa
//and su_codigo = :str_appgeninfo.sucursal
//and sa_login = :ls_usuario
//and sa_passwd = :ls_clave;
//if sqlca.sqlcode = 100 then
//            Messagebox("Atención","Las credenciales no son correctas, por favor intente otra vez.")
//            Return  
//end if

//If ls_tipo <> 'A' then 
//            If ls_cambpre <> 'S' then 
//                           MessageBox("Atención","No tiene permiso para cambiar precios")
//                           return
//            End if
//end if

if isnull(lc_precio) then
                messagebox("Información...","Debe ingresar el precio del producto.")
                return
else
                
                ls_codant = dw_det.getitemstring(li_fila,"codant")       
                lc_desc1 = dw_det.getitemdecimal(li_fila,"dv_desc1")
                lc_desc2 = dw_det.getitemdecimal(li_fila,"dv_desc2")
                lc_desc3 = dw_det.getitemdecimal(li_fila,"dv_desc3")
                lc_precio1 = (((lc_precio * ((100 - lc_desc1)/100))*((100 - lc_desc2)/100))*((100 - lc_desc3)/100))

                Select pr_valor
                into :lc_descue
                from pr_param
                where em_codigo = :str_appgeninfo.empresa
                and pr_nombre = 'DSC_EFECT';
                if sqlca.sqlcode <> 0 or sqlca.sqlcode = 100 Then
                  messagebox('Error Interno','Problemas con descuento virtual...<Informe a sistemas>')
                  return
                End if                    
    //Verifíco si es kit el item
                if dw_det.getitemstring(li_fila,"it_kit") = 'S' or dw_det.getitemstring(li_fila,"it_kit") = 'C' then
                               select r.ri_cantid,r.it_codigo
                               into :ll_cantid,:ls_codigo
                               from in_item i,in_relitem r
                               where i.em_codigo = r.em_codigo
                               and i.it_codigo = r.it_codigo1
                               and i.em_codigo = :str_appgeninfo.empresa
                               and i.it_codant = :ls_codant
                               and r.tr_codigo = '1';      
                               if sqlca.sqlcode <> 0 Then
                                               messagebox("Error Interno","Problemas al encontrar el kit del producto...<Comuniquese con sistemas>'")
                                               return
                               End if
                               select it_costo
                               into:lc_costo
                               from in_item
                               where em_codigo = :str_appgeninfo.empresa
                               and it_codigo = :ls_codigo;
                               if sqlca.sqlcode <> 0 Then
                                               messagebox("Error Interno","Problemas al encontrar el costo del kit ...<Comuniquese con sistemas>'")
                                               return
                               End if
                               lc_costoiva = (lc_costo * ll_cantid) / (1 - lc_descue)
                Else
                  lc_costoiva =    dw_det.getitemdecimal(li_fila,"it_costo")/ (1 - lc_descue)                       
                End if
                
                decimal lc_precioactual
                lc_precioactual =  dw_det.getitemdecimal(li_fila,"dv_precio")                  //jaic
					 
				select SUBSTR(IN_ITEM.CL_CODIGO,1,1)
				into :ls_clase
				from IN_ITEM
				where in_item.it_codant = :ls_codant;
               
                if lc_precio1 < lc_precioactual and ls_clase ='S' then
                               messagebox('Error','El precio no puede ser menor al precio actual $'+ string(lc_precioactual,'#,##0.00')+' dólares.')
                               dw_precio.setitem(1,"supervisor",ls_usuario)
                               dw_precio.Setfocus()
                      dw_precio.SetColumn('precio')
                               return 
                end if
                
                if lc_precio1 < lc_costoiva then
                    dw_precio.SetItem(1,'precio',dw_det.getitemdecimal(li_fila,"dv_precio"))
                               
                                If lc_desc1=0 or lc_desc2 = 0 or lc_desc3 = 0 Then                          
                                 messagebox('Error','El precio no puede ser menor a $'+ string(lc_costoiva,'#,##0.00')+' dólares.')
                     else
                                 messagebox('Error','El precio no puede ser menor a $'+ string(lc_costoiva,'#,##0.00')+' dólares~n~r<Tomó en cuenta los descuentos?>')
                               End if
                               
                               dw_precio.setitem(1,"supervisor",ls_usuario)
                               dw_precio.Setfocus()
                      dw_precio.SetColumn('precio')
                               return 
                 end if                                  
                
                 dw_det.SetItem(li_fila,'dv_precio',lc_precio)  
                 dw_precio.visible = false
                dw_det.setfocus()
                dw_det.setcolumn("dv_cantid")
                setpointer(arrow!)
end if

end event

type dw_claves from datawindow within w_pos
boolean visible = false
integer x = 3058
integer y = 476
integer width = 274
integer height = 268
string title = "none"
string dataobject = "d_claves"
boolean livescroll = true
borderstyle borderstyle = styleraised!
end type

type dw_2 from datawindow within w_pos
event key pbm_dwnkey
boolean visible = false
integer x = 1458
integer y = 420
integer width = 1234
integer height = 356
boolean titlebar = true
string title = "Desbloquear"
string dataobject = "d_autorizar_descuento"
boolean livescroll = true
borderstyle borderstyle = styleraised!
end type

event buttonclicked;string ls_clave,ls_clavebd, ls_col, ls_autoriza, ls_sucursal
int li_fil,li_col, li_nreg, li_sum, li_intentos, li_numinten
boolean lb_exito = false, lb_pasa = false

if dwo.name = "b_1" then
                select nvl(sa_intentos,0),nvl(sa_numinten,0)
                into :li_intentos,:li_numinten
                from sg_acceso
                where em_codigo = :str_appgeninfo.empresa
                and sa_login = :str_appgeninfo.username;
                
                if li_numinten >= li_intentos then 
                               MESSAGEBOX('Acceso negado','Ha excedido el número máximo de intentos permitido',Exclamation!)
                               dw_2.visible = false
                               
                               update sg_acceso
                               set sa_desc = 'N', sa_numinten = 0
                               where em_codigo = :str_appgeninfo.empresa
                               and sa_login = :str_appgeninfo.username;
                                               
                               commit;                              
                               return
                end if
                accepttext()
                ls_clave = getitemstring(1,"clave")
                ls_autoriza = getitemstring(1,"supervisor")        
                dw_claves.settransobject(sqlca)
                li_nreg = dw_claves.retrieve(str_appgeninfo.empresa,ls_autoriza,'VP')

                select nvl(sum(nvl(su_codigo,1)),0), cv_desc3
                into :li_sum, :ll_check_porcentaje_aut
                from no_claves 
                where em_codigo= :str_appgeninfo.empresa 
                and ep_codigo = :ls_autoriza
                and md_codigo = 'VP'
			   and (cv_a = :ls_clave or cv_b = :ls_clave or cv_c = :ls_clave or cv_d = :ls_clave or cv_e = :ls_clave or cv_f = :ls_clave) 
			   group by cv_desc3;
				
                if li_sum > 0 then
                               for li_fil = 1 to li_nreg
                                                                                                                             ls_sucursal = dw_claves.getitemstring(li_fil,"su_codigo")
                                                                                                                             if ( ls_sucursal = str_appgeninfo.sucursal ) or isnull(ls_sucursal) then
//                                                                                                                                         dw_master.SetItem(dw_master.GetRow(),'ep_codautor',ls_autoriza) //jaic
                                                                                                                                             lb_pasa = true
                                                                                                                                             exit
                                                                                                                             end if
                               next
                               if lb_pasa = false then                  
                                               MessageBox("ERROR","La clave del usuario que autoriza es incorrecta para esta sucursal",StopSign!)
                                               return                  
                               end if
                end if

                for li_fil = 1 to li_nreg
                               for li_col = 1 to 6
                                               choose case li_col
                                                               case 1
                                                                              ls_col = 'cv_a'
                                                               case 2
                                                                              ls_col = 'cv_b'
                                                               case 3
                                                                              ls_col = 'cv_c'
                                                               case 4
                                                                              ls_col = 'cv_d'
                                                               case 5
                                                                              ls_col = 'cv_e'
                                                               case 6
                                                                              ls_col = 'cv_f' 
                                               end choose                                                       
                                               
                                               ls_clavebd = dw_claves.getitemstring(li_fil,ls_col)
                                               if ls_clavebd = ls_clave then
                                                               lb_exito = true
                                                               dw_claves.Setitem(li_fil,ls_col,ls_clavebd+'X')
                                                               if dw_claves.update(true,true) = 1 then
                                                                              commit;
                                                               end if
                                                               //control del descuento máximo
                                                               ii_sucodautoriza = long(dw_claves.getitemstring(li_fil,'su_codigo'))
                                                               if isnull(ii_sucodautoriza) then
                                                                              ii_sucodautoriza = 0
                                                               else 
                                                                              ii_sucodautoriza = 5
                                                               end if
                                                               dw_det.Settaborder("dv_desc3",30)
                                                               exit
                                               end if
                               next
                               if lb_exito = true then exit
                next
                if lb_exito = true then
                               dw_2.visible = false
                               dw_det.setfocus()
                               dw_det.setcolumn("dv_desc3")
							ll_chek_autoriza = 1
                else
                               update sg_acceso
                               set sa_numinten = :li_numinten + 1
                               where em_codigo = :str_appgeninfo.empresa
                               and sa_login = :str_appgeninfo.username;
                               commit;                              
                               
                               MessageBox("ERROR","La clave es incorrecta o el usuario que autoriza no tiene claves asignadas",StopSign!)
                               return                  
                end if
end if

if dwo.name = "b_2" then
                dw_2.visible = false
                dw_det.setfocus()
end if
end event

type sle_1 from singlelineedit within w_pos
integer x = 2962
integer y = 268
integer width = 622
integer height = 80
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
boolean enabled = false
boolean password = true
borderstyle borderstyle = stylelowered!
end type

event modified;long ll_arc
dw_det.Event buttonClicked( dw_det.Getrow(), ll_arc, dw_det.object.b_1)
end event

type dw_movim from datawindow within w_pos
boolean visible = false
integer x = 9
integer y = 700
integer width = 114
integer height = 288
string dataobject = "d_mov_inv"
boolean livescroll = true
borderstyle borderstyle = styleraised!
end type

type dw_1 from datawindow within w_pos
boolean visible = false
integer x = 9
integer y = 12
integer width = 265
integer height = 156
string dataobject = "dw_proforma_a_factura"
boolean border = false
boolean livescroll = true
end type

type dw_forma_pago from datawindow within w_pos
event getfocus pbm_dwnsetfocus
event itemchanged pbm_dwnitemchange
event itemerror pbm_dwnitemvalidationerror
event losefocus pbm_dwnkillfocus
event ue_keydown pbm_dwnkey
event ue_mismafila pbm_custom26
boolean visible = false
integer x = 50
integer y = 1508
integer width = 5143
integer height = 1036
boolean titlebar = true
string title = "Detalle de Pago"
string dataobject = "d_detalle_pago_pos"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = styleraised!
end type

event itemchanged;integer   li_i,li_len,li_total,li_totalaux,li_digito,li_len2,i, li_dias
char                       lch_tipo, lch_itdescue, lch_cambio
date       ld_fecven, ld_fecha_resultado
Datetime ld_hoy
string    ls_tarjeta,ls_numtarj,ls_tienedescto,ls_fp,ls_nc, ls_venumero,&
                                               ls_fpcpdigo, ls_fpautocon ,ls_usuario_pos, ls_tscliente // ls_rucci, ls_rucemp
Dec{2} lc_subtotal,lc_neto,lc_cargo,lc_valor,&
           lc_valorpagar,lc_abono,lc_valnc,lc_valdec,lc_rpvalor,&
                                                 lc_porcsg, lc_salmin, lc_salmax, lc_totsobregiro,&
                                                 ld_cantatomo, ldd_cecupo, lc_desc2, lc_porcdeccambio,  lc_valor_pagar, lc_valcambio, lc_valfpsc, lc_cambiotot, lc_valformpag //jaic
Decimal lc_valorcheque
long ll_filas, ll_rows

select trunc(sysdate)
into :ld_hoy
from dual;

This.accepttext()
this.Object.rp_fecha[row] = ld_hoy



choose case this.getcolumnname()
                
case 'fp_codigo'
                			
							 		
                                 /* Verifico que la forma de pago este habilitada y si aplica descuento e interes*/
                                               select fp_minimo, fp_maximo, fp_descue, fp_interes, fp_plazo, rp_tipo, fp_porccambio
                                               into :ic_minpag, :ic_maxpag, :ls_tienedescto, :ic_interes_fp, :ii_fpplazo, :lch_tipo, :ic_porccambio 
                                               from fa_formpag
                                               where em_codigo = :str_appgeninfo.empresa
                                               and fp_codigo = :data
                                               and fp_utiliza = 'S';
                                               if sqlca.sqlcode <> 0 then
                                                               messagebox('Error','Problemas con la tabla de Formas de pago',stopsign!)
                                                               return 1
                                               end if
                                               setitem(row,"tipo",lch_tipo)
									if (ic_porccambio = 0 or IsNull(ic_porccambio) and lch_tipo <> 'CHPV') then
										 setitem(row,"cambio",'N')
									 else
										 setitem(row,"cambio",'S')										
									 end if
									 
                                               dw_forma_pago.setitem(row,"rp_fecven",ld_hoy)
                               
                                               
                                               if ls_tienedescto = 'N' then 
                                                               if not isnull(ic_interes_fp) and ic_interes_fp > 0 then
                                                                              this.object.estado[row] = 'I'
                                                               else
                                                                              this.object.estado[row] = 'N'
                                                               end if
                                               //Para obtener el desc. en efectivo
															  
												       Select ps_valor
													  into:lc_valdec
													  from pr_numsuc
													  where em_codigo = :str_appgeninfo.empresa
													  and su_codigo = :str_appgeninfo.sucursal
													  and pr_nombre = 'DSC_POS';			  
															  
//                                                               select pr_valdec
//                                                               into:lc_valdec
//                                                               from pr_param
//                                                               where em_codigo = :str_appgeninfo.empresa
//                                                               and pr_nombre = 'DSC_POS';
                                                               
                                                          for li_i = 1 to dw_det.rowcount()
																						
													  lc_desc2 = dw_det.object.dv_desc2[li_i] 
													  lch_itdescue = dw_det.object.it_descue[li_i]
							 													
											     	if lc_desc2 = lc_valdec  and 	ic_desc2=0 and lch_itdescue = 'S' then  //Condicion que verica si el item da descuento o no
																						
																	Messagebox("Atención","Esta forma de pago no debe dar descuentos...<verifíque>",Exclamation!)
                                                                              exit
                                                         End if
                                                      next                                                                  
                                               else
                                                                                        
                                                               
                                                               for li_i = 1 to dw_det.rowcount()
                                                                              //string ls_itcodigo1  //obsequio
                                                                              //ls_itcodigo1 = dw_det.GetItemString(li_i,"it_codigo")  //obsequio
                                                                              
                                                                              //if ls_itcodigo1 = '4391'  or ls_itcodigo1 = '11356' then //obsequio
                
                                                                              //else //obsequio
                                                                              
                                                                                              if dw_det.Object.dv_desc2[li_i] = 0.00 and data > '2' then
																                               Messagebox("Atención","Falta poner el descuento de pago en efectivo...<verifíque>",Exclamation!)
                                                                                                              exit
                                                                                              End if
                                                                              
                                                                                              //descuento para certificado
                                                                                              if dw_forma_pago.GetitemString(row,'rp_comen')  = 'CERTIFICADO' then
                                                                                                              if dw_det.Object.dv_desc2[li_i] = 0.00 and data = '1' then
                                                                                                                             Messagebox("Atención","Falta poner el descuento de pago en efectivo...<verifíque>",Exclamation!)
                                                                                                                             exit
                                                                                                              End if
                                                                                              end if
                                                                              //end if  //obsequio
                                                                              
                                                               next
                                               end if  
                                               
                                               setnull(ls_tarjeta)
                                               this.object.if_codigo[row] = ls_tarjeta                                 
                                               this.object.rp_numcta[row] = ls_tarjeta
                                               this.object.rp_numdoc[row] = ls_tarjeta
                                               
                                    //Actualiza valores de la cabecera y  determina el valor a pagar de todo el ticket
                                               lc_valorpagar = wf_actualiza_saldos()
                                               
                                               //**********
                                               dw_forma_pago.AcceptText()
                                                               ld_cantatomo = ld_cantatomo + dw_forma_pago.Getitemdecimal(row,'rp_valor')   //jaic
                                               if data = '1' then //ingresa si es cheque
                                                               ls_tarjeta = GetitemString(row,'rp_comen')                                                     
                                                               if is_tipcli = 'SEF' and (isnull(ls_tarjeta) or trim(ls_tarjeta) = "") then 
                                                                              if ld_cantatomo > 50 then //jaic
                                                                                              
                                                                                              //nueva para servicheck y certificado
                                                                                              dw_forma_pago.enabled = false
                                                                                              dw_servicheck_certifica.reset()
                                                                                              dw_servicheck_certifica.insertrow(1)
                                                                                              dw_servicheck_certifica.visible = true
                                                                                              dw_servicheck_certifica.setfocus()
																					

                                                                                              
//                                                                                          li_digito = messageBox('Atención','Desea pedir autorización a Servicheck?',question!,yesno!,1)
//                                                                                          if li_digito = 1 then //SCH
//                                                                                                          settaborder("rp_comen",70)
//                                                                                                          ls_tienedescto = 'N'       
//                                                                                                          this.object.estado[row] = 'N'  //jaic
//                                                                                          else //SCH
//                                                                                          //jaic
//                                                                                                          li_digito = messageBox('Atención','Desea ingresar como cheque certificado?',question!,yesno!,1)
//                                                                                                          if li_digito = 1 then //CHC
//                                                                                                                         settaborder("rp_comen",70)
//                                                                                                                         ls_tienedescto = 'S' 
//                                                                                                                         //aqui debo poner la clave para q ingrese el administrador
//                                                                                                                                         dw_autoriza_adminis.reset()
//                                                                                                                                         dw_autoriza_adminis.insertrow(1)
//                                                                                                                                         dw_autoriza_adminis.visible = true
//                                                                                                                                         dw_autoriza_adminis.setfocus()
//                                                                                                          else //CHC
//                                                                                                                                         settaborder("rp_comen",0)
//                                                                                                                           ls_tienedescto = 'S'
//                                                                                                                         dw_forma_pago.DeleteRow(row)
//                                                                                                          end if //CHC jaic 
//                                                                                          end if    //SCH 
                                                                                              
                                                                                              
                                                                                              
                                                                              end if //jaic
                                                                              
//                                                                          end if //end jaic
                                                                           //   setcolumn("if_codigo")
                                                               end if 
                                               end if
                                               //***********
                                               
									
                                 //Insertamos el saldo correspondiente de acuerdo al valor a pagar
                                               if this.Object.rp_valor[row] = 0 then
                                                               lc_abono = dw_cab.Object.cc_saldo[1]
                                               else
                                                               if lc_valorpagar <> dw_cab.object.cc_pagado[1] then 
                                                                              lc_abono = lc_valorpagar - (dw_cab.Object.cc_pagado[1] - this.Object.rp_valor[row])
                                                               else
                                                                              lc_abono = this.Object.rp_valor[row]
                                                               end if
                                               end if
                                               /*Empieza la asignación*/
													
                                               if data = '2' then  lc_abono = 0
                                               if data = '7' then  lc_abono = (dw_cab.Object.iva[1] - dw_cab.Object.desc[1])*(tasa.retiva30/100)
                                               if data = '6' then  
                                                               lc_abono = dw_cab.Object.cc_neto[1]* tasa.retencion
                                                               settaborder("rp_comen",70)
                                               elseif data = '1' then
                                                                  if is_tipcli <> 'SEF' then 
                                                                              settaborder("rp_comen",0)
                                                                  end if
                                               else
                                                               settaborder("rp_comen",0)
                                               end if


									IF(is_cliruc<>ls_rucemp and is_estado = '2'   ) THEN
                                               this.Object.rp_valor[row] = lc_abono
									END IF
                                               //jaic
                                               if is_tipcli = 'CHPV'/* and is_estcre = 'A' */ then  
										
                                                               if ld_cantatomo > 50 then //jaic

                                                                              if is_facturar <> 'S' and is_cat <> 'A' then
                                                                                              messageBox('Atención','No se puede facturar a este cliente. Verifique con Cartera',Exclamation!)
                                                                                              return
                                                                              end if                   
                                                                              //suma todas las filas q tengan comoforma de pago cheque
                                                                              lc_valorcheque = 0
                                                                              for i = 1 to dw_forma_pago.RowCount()
                                                                                              ls_fpcpdigo = dw_forma_pago.GetItemString(i,'fp_codigo')
                                                                                              if ls_fpcpdigo = '1' then
                                                                                                              lc_valorcheque = lc_valorcheque + dw_forma_pago.GetItemNumber(i,'rp_valor')
                                                                                              end if
                                                                              next
                                                                              
                                                                              //consulta para saber q porcentaje poder sobregirar
                                                                              select  stock, pe_min, pe_max
                                                                              into :lc_porcsg, :lc_salmin, :lc_salmax 
                                                                              from pr_premios
                                                                              where (pe_min <= :ic_cupcre and pe_max >= :ic_cupcre)
                                                                              and pe_codigo = 'CLIENTE';
                                                                              
                                                                              lc_totsobregiro = ic_salcre + (ic_cupcre * (lc_porcsg/100)) 
															
												 			if ls_fp = '1' and  is_tipcli = 'CHPV'  then
                                                                                              
                                                                              if lc_valorcheque > lc_totsobregiro then //si se pasa del sobregiro no le permite continuar y enviará el mensaje
                                                                              
                                                                                              if (messagebox('Atención','El valor ingresado excede el cupo de crédito: '+string(ic_cupcre,'#,##0.00') + ' (Saldo: '+ string(ic_salcre,'#,##0.00') +') más sobregiro de: ' +string((ic_cupcre * (lc_porcsg/100)),'#,##0.00') + '...  Desea utilizar Servicheck ó Cheque Certificado?',Question!, YesNo!,2) = 1) then
                                                                                                              //messagebox('Atención','El valor ingresado excede el cupo de crédito: '+string(ic_cupcre,'#,##0.00') + ' (Saldo: '+ string(ic_salcre,'#,##0.00') +') más sobregiro de: ' +string((ic_cupcre * (lc_porcsg/100)),'#,##0.00') + '...Verifique con Cartera',Exclamation!)
                                                                                                              //nueva para servicheck y certificado
                                                                                                              dw_forma_pago.enabled = false
                                                                                                              dw_servicheck_certifica.reset()
                                                                                                              dw_servicheck_certifica.insertrow(1)
                                                                                                              dw_servicheck_certifica.visible = true
                                                                                                              dw_servicheck_certifica.setfocus()                                                                      
                                                                                              else
                                                                                                              beep(1)
                                                                                                              dw_forma_pago.reset()
                                                                                                              dw_forma_pago.visible = false
                                                                                                              dw_cab.reset()
                                                                                                              dw_cab.insertrow(0)
                                                                                                              dw_cab.visible = false
                                                                                                              dw_det.enabled = true
                                                                                                              dw_det.setfocus()
                                                                                                              return 1
                                                                                              end if                    
                                                                                              
                                                                              end if

                                                                          end if
                                                                              
                                                               end if
                                               end if
             //end if jaic
                wf_validar()
					 
			
			
			IF(is_cliruc=ls_rucemp and is_estado = '2'   ) THEN

				dw_forma_pago.object.if_codigo[dw_forma_pago.GetRow()] = '0'
				ls_grupoven = 'U'
	
			END IF
			
						//Nota de credito cuando el cliente quiere pagar con el bono de  Factura 100
			if this.gettext( ) = '315' then
					this.object.if_codigo[row] = '0'	
					this.object.rp_valor[row]=0
					setcolumn("rp_numcta")
    				     setfocus() 
			else
//					setcolumn("if_codigo")
//    				     setfocus() 
			end if  

	
case 'if_codigo'                                
                
                               this.object.rp_numcta[row] = "" 
                               //jaic
                               //descuento para certificado
                               for li_i = 1 to dw_det.rowcount()
                                               
                                               //string ls_itcodigo2  //obsequio
                                                               //ls_itcodigo2 = dw_det.GetItemString(li_i,"it_codigo")  //obsequio
                                                               
                                                               //if ls_itcodigo2 = '4391'  or ls_itcodigo2 = '11356' then //obsequio

                                                               //else //obsequio
                                                                                 Select ps_valor
													  into:lc_valdec
													  from pr_numsuc
													  where em_codigo = :str_appgeninfo.empresa
													  and su_codigo = :str_appgeninfo.sucursal
													  and pr_nombre = 'DSC_POS';			  
																			
													  lc_desc2 = dw_det.object.dv_desc2[li_i] 
													  lch_itdescue = dw_det.object.it_descue[li_i]
																										
                                               
                                                                              if dw_forma_pago.GetitemString(row,'rp_comen')  = 'CERTIFICADO' then
                                                                                         if lc_desc2 = lc_valdec  and ic_desc2=0 and lch_itdescue = 'S' then  																												
																								if dw_det.Object.dv_desc2[li_i] = 0.00 and dw_forma_pago.Object.fp_codigo[row] =  '1' then
                                                                                                              Messagebox("Atención","Falta poner el descuento de pago en efectivo...<verifíque>",Exclamation!)
                                                                                                              dw_forma_pago.DeleteRow(row)
                                                                                                              exit
																					end if
                                                                                              End if
                                                                              end if 
                                                               //end if //obsequio
                               next
                               //end jaic
                  
case 'rp_numdoc'           
	
	Integer li_nreg
		//Condicion que verifica si se ingreso el numnero de activacion correcto para la promocion	
				if this.object.fp_codigo[row]= '315'  then

					select add_months(:ld_fecha_bono, 3)
					into :ld_fecha_resultado
					from dual ;
					
					
				 	if data = ls_bnverif  and date(ld_hoy) <= ld_fecha_resultado   then
							    messagebox('Anuncio','La activación es correcta...Puede Continuar con la grabación!',Exclamation!)
							   wf_validar()
	                               //return 1 
							if ls_insertnewrow = '1' then //Condición que verifica la factura es menor al bono, si es asi inserta una nueva fila para generar otra forma de pago
								li_nreg = InsertRow(0)
   	                                   scrolltorow(li_nreg)                       
      		                         setrow(li_nreg)
        	                              setcolumn("fp_codigo")
						end if
					elseif data<> ls_bnverif then 
							messagebox('Atención','El código que ingreso es incorrecto... Por favor verifíquelo y vuelva a intentarlo...!',Exclamation!)
							this.object.rp_numdoc[row] = ''
                                     return 1			
					elseif date(ld_hoy) > ld_fecha_resultado then
							messagebox('Atención','El bono ya caducó... Por favor verifíquelo y vuelva a intentarlo...!',Exclamation!)
							this.object.rp_numdoc[row] = ''
                                     return 1			
					end if
					
				end if
	
				          if this.Object.fp_codigo[row] = '1' then
                                               if isnull(this.object.if_codigo[row]) or trim(this.object.if_codigo[row]) = "" then
                                                               messagebox('Atención','Debe ingresar el Banco al que pertenece el Cheque',Exclamation!)
                                                               this.object.rp_valor[row] = 0
                                                               setcolumn("if_codigo")  
                                                               setfocus()                                                                                                           
                                                               return 1                                              
                                               end if                    
                               end  if
                               if this.Object.fp_codigo[row] = '2' then
                                               ls_venumero = getitemstring(row,"rp_numcta")
                                               if isnull(ls_venumero) or trim(ls_venumero) = "" then
                                                               messagebox('Falta Ticket','Ingrese el número de ticket del que hizo la Nota de Crédito',stopsign!)
                                                               setcolumn("rp_numcta")
                                                               setfocus()
                                                               return 1
                                                 end if
                                               setcolumn("fp_codigo")   
                                               setfocus()
                               end if

case 'rp_valor'
						ls_fp = dw_forma_pago.getitemstring(row,"fp_codigo")
						lch_cambio = dw_forma_pago.getitemstring(row,"cambio")
                               lc_valdec = dec(data)

                               if dw_forma_pago.getitemstring(row,"estado") = 'I' then
                                               if lc_valdec <= dw_cab.Object.cc_neto[1] + ((dw_cab.Object.iva[1] - dw_cab.Object.desc[1]) - dw_cab.Object.desc[1]) then
                                                               select fp_interes
                                                               into :ic_interes_fp
                                                               from fa_formpag
                                                               where em_codigo = :str_appgeninfo.empresa
                                                               and fp_codigo = :ls_fp
                                                               and fp_utiliza = 'S';
                
                                                               lc_cargo = (ic_interes_fp / 100) * lc_valdec
                                                               setitem(row,"cc_cargo",lc_cargo)                                                                                                        
                                                               lc_valdec = lc_valdec / (1 + tasa.iva)                                      
                                                               setitem(row,"cc_subt_tconi",lc_valdec)                             
                                                               lc_valor = lc_valdec * tasa.iva                                   
                                                               setitem(row,"cc_iva_tconi",lc_valor)                                   
                                                               setitem(row,"cc_valor",lc_valor + lc_valdec + lc_cargo)                                                              
//                                                           lc_rpvalor = lc_valor + lc_valdec  //+ lc_cargo
//                                                           setitem(row,"rp_valor",lc_valdec)
                                                              //dw_cab.Object.cargo[1] = this.Object.cc_sumcargo[1]
                                                              //dw_cab.Object.valor_pagar[1] = dw_cab.Object.cc_neto[1] + dw_cab.Object.iva[1]  + dw_cab.Object.cargo[1] 
                                               else
                                                               messagebox("Atención","Debe ingresar un valor menor o igual a :"+string(dw_cab.Object.cc_neto[1] + (dw_cab.Object.iva[1] - dw_cab.Object.desc[1]),'#,##0.00'),Exclamation!)
//                                                             setitem(row,"rp_valor",dw_cab.Object.cc_neto[1] + dw_cab.Object.iva[1] + dw_cab.Object.cargo[1])                                                           
                                                               return 1
                                               end if
                               end if
                               
                               if ls_fp = '1' and is_tipcli = 'SEF' then
                                               if lc_valdec <= 50 and dw_forma_pago.getitemstring(row,"estado") = 'N' then
                                                               messageBox('Atención','La cantidad debe ser mayor a: $50 dólares' )
                                                               setitem(row,"rp_valor",0)                         
                                               end if
                                               if lc_valdec > 50 and dw_forma_pago.getitemstring(row,"estado") = 'S' and dw_forma_pago.GetitemString(row,'rp_comen') <> 'CERTIFICADO' then                                         
                                                               messageBox('Atención','El Administrador solo puede autorizar hasta: $50 dólares' )
                                                               setitem(row,"rp_valor",0)
                                               end if                                                   
                               end if
                               //jaic
                           		 	           if is_tipcli = 'CHPV' /*and is_estcre = 'A'*/ then
                                                                              if is_facturar <> 'S' and is_cat <> 'A' then
                                                                                              messageBox('Error','No se puede facturar a este cliente. Verifique con Cartera',Exclamation!)
                                                                                              return
                                                                              end if                   
                                                                              //suma todas las filas q tengan comoforma de pago cheque
                                                                              lc_valorcheque = 0
                                                                              for i = 1 to dw_forma_pago.RowCount()
                                                                                              ls_fpcpdigo = dw_forma_pago.GetItemString(i,'fp_codigo')
                                                                                              if ls_fpcpdigo = '1' then
                                                                                                              lc_valorcheque = lc_valorcheque + dw_forma_pago.GetItemNumber(i,'rp_valor')
                                                                                              end if
                                                                              next
                                                                              
                                         						if ls_fp = '1' and  is_tipcli = 'CHPV'  then
													
														lc_valor_pagar=   dw_cab.GetItemdecimal(1, "valor_pagar") // Toma el valor a pagar de la factura
														//consulta para saber q porcentaje poder sobregirar
														select  stock, pe_min, pe_max
														into :lc_porcsg, :lc_salmin, :lc_salmax 
														from pr_premios
														//where (pe_min < :ic_salcre and pe_max > :ic_salcre);
														where (pe_min <= :ic_cupcre and pe_max >= :ic_cupcre)
														and pe_codigo = 'CLIENTE'; 
																									
														 lc_totsobregiro = ic_salcre + (ic_cupcre * (lc_porcsg/100)) 
																														 
														 if lc_valorcheque > lc_totsobregiro then //si se pasa del sobregiro no le permite continuar y enviará el mensaje
															 messagebox('Atención','El valor ingresado excede el cupo de crédito: '+string(ic_cupcre,'#,##0.00') + ' (Saldo: '+ string(ic_salcre,'#,##0.00') +') más sobregiro de: ' +string((ic_cupcre * (lc_porcsg/100)),'#,##0.00') + '...Verifique con Cartera',Exclamation!)
															 beep(1)
															 dw_forma_pago.reset()
															 dw_forma_pago.visible = false
															 dw_cab.reset()
															 dw_cab.insertrow(0)
															 dw_cab.visible = false
															 dw_det.enabled = true
															 dw_det.setfocus()
															 return 1
																									end if
														end if
													end if
        				    //end if jaic

			 										lc_cambiotot = wf_entregar_cambio(ls_fp,lc_valdec, lch_cambio) 

													if (lc_cambiotot = -1) then 
														messagebox ('Aviso', "No puede entregar un vuelto mayor al "+ String(ic_porccambio) + '%'+' del valor total de la factura correspondiente a: '+ String(ic_valtotcambio)+'$' )
														dw_forma_pago.object.rp_valor[row] = 0
														dw_forma_pago.object.rp_cambio[dw_forma_pago.Getrow()]  = 0
														wf_actualiza_saldos()
														return 1
													elseif (lc_cambiotot = -2) then 
														messagebox ('Aviso', "No puede entregar vuelto para esta forma de pago" )
														dw_forma_pago.object.rp_valor[row] = 0
														dw_forma_pago.object.rp_cambio[dw_forma_pago.Getrow()]  = 0	
														wf_actualiza_saldos()
													else
														dw_forma_pago.object.rp_cambio[dw_forma_pago.Getrow()]  = lc_cambiotot
													end if
			
                               wf_validar()
                               return 1

case 'rp_numcta'
String ls_codenc, ls_existe, ls_codcli, ls_codexist
Dec{2} lc_valbono
Date ld_fvenbono

ls_codexist = '0'
						
			if this.object.fp_codigo[row] = '315'  then //Condicion que verifica si se ha ingresado la forma de pago Nota de Credito para bono
					for i = 1 to 2
					ls_codenc = f_encryptacion(data,i)
		 		//	ls_codenc = data 
					 
					 this.object.rp_numdoc.protect = 1
					 
					 SELECT BN_CODIGO, CE_CODIGO, BN_VALOR, BN_FECEFEC, TRUNC(BN_FECHA), BN_VERIF
					 INTO :ls_existe, :ls_codcli, :lc_valbono, :ld_fvenbono, :ld_fecha_bono, :ls_bnverif
					 FROM FA_BONO 
					 WHERE BN_CODIGO =:ls_codenc
					 using sqlca;
					 
					 if sqlca.sqlcode <> 0 and ls_codexist <> '1' then //Cuando no existe bono
								ls_codexist = '0'
							else 
								ls_codexist = '1'
					end if 
	
					next
	
					//Condicion que verifica que exista un bono premiado con el numero ingresado
					if ls_codexist = '0' then //Cuando no existe bono
									
												if sqlca.sqlcode <>  0 then
												  	 messagebox('Atención','El código ingresado no existe, por favor verifique y vuelva a intentarlo',Exclamation!)
													 this.object.rp_valor[row] = 0
													 setcolumn("rp_numcta")  
													 setfocus()                                                                                                           
													 return 1             
													 
												end if
					else //Caso contrario cuando existe bono
						if ls_codcli <> is_codcli then  //Condicion que verifica si el bono pertenece al cliente que esta comprando
							messagebox('Atención','El código no pertenece al usuario en la Factura.. No podrá aplicar la forma de pago a la misma....',Exclamation!)
												 this.object.rp_valor[row] = 0
												  setcolumn("rp_numcta")  
												  setfocus()                                                                                                           
												  return 1     
						end if //Fin condición cliente que compra
					
						if ld_fvenbono > date('01/01/1900') then //Condición que verifica si el bono ya se utilizo
							messagebox('Atención','El código ya fue utilizado.. No se puede utilizar un mismo código dos veces....',Exclamation!)
												 this.object.rp_valor[row] = 0
												  setcolumn("rp_numcta")  
												  setfocus()                                                                                                           
												  return 1     
						end if //Fin condición bono utilizado
						
						//Comienza la validación de valores del bono con relación a los totales de la factura
					
						lc_valor_pagar=   dw_cab.GetItemdecimal(1, "valor_pagar") // Toma el valor a pagar de la factura
						lc_efectivo = dw_cab.GetItemdecimal(1, "efectivo") //Toma el valor a pagar en efectivo, si lo hubiera
							
						ll_rows = dw_forma_pago.rowcount( )
						 
						for i = 1 to ll_rows 
							lc_valformpag = lc_valformpag + dw_forma_pago.object.rp_valor[i]
						next
												
						//Condición que verifica si el valor del bono es mayor al valor a pagar de la factura.
						if(lc_valbono >= (lc_valor_pagar - (lc_efectivo+lc_valformpag ))) then //Si el bono es mayor en el valor de la forma de pago se pone el valor de la factura  
							this.object.rp_valor[row] = lc_valor_pagar -  (lc_efectivo+lc_valformpag)
							ldd_total_valbono = lc_valor_pagar - (lc_efectivo+lc_valformpag)
							this.object.rp_fecha[row] = ld_hoy
							this.object.rp_fecven[row] = ld_hoy
							ls_insertnewrow = '0'
						elseif (lc_valbono <  (lc_valor_pagar - (lc_efectivo+lc_valformpag  ))) then //Caso contrario se pone el valor del bono

							this.object.rp_valor[row]= lc_valbono 
							this.object.rp_fecha[row] = ld_hoy
							this.object.rp_fecven[row]= ld_hoy
							ls_insertnewrow = '1' 

						end if // fin condicion si el bon es mayor, igual o menor que el valor de la factura

						 if this.object.rp_valor[row] > 0 then //Condición que controla que el valor del bono, si es cero no existe bono

						 ls_compn1 = 'S' 
						
//						//Genera el codigo se seguridad y lo envia a la pantalla de envio sms
//
//							SELECT CE_FAX
//							INTO  :ls_codseg
//							FROM FA_CLIEN
//							WHERE CE_CODIGO = :is_codcli; 
//							
//							ls_codseg =ls_codseg +'-'+ wf_random()
//							openwithparm(w_envio_sms, ls_codseg) // abre la ventana 2 y pasa la variable
//							//Fin Generacion de codigo de seguridad
							
							 this.object.rp_numdoc.protect = 0
							setcolumn("rp_numdoc")  
                                   setfocus()       
											  
						end if
							 
						
						//Fin de la validacion de valores del bono con relacion a los totales de la factura					

				  end if // Fin Condición si existe bono 

				  //Proteccion de campos para esta forma de pago	
				end if //Fin Condición que verifica forma de pago Nota de Credito Bono
			 									 
									 
						if this.Object.fp_codigo[row] = '1' then
                                               if isnull(this.object.if_codigo[row]) or trim(this.object.if_codigo[row]) = "" then
                                                               messagebox('Atención','Debe ingresar el Banco al que pertenece el Cheque',Exclamation!)
                                                               this.object.rp_valor[row] = 0
                                                               setcolumn("if_codigo")  
                                                               setfocus()                                                                         
                                                               return 1                                              
                                               end if                    
                               end  if   
			
			

case 'rp_fecven'
                             if this.object.fp_codigo[row]= '1'then
                         /*Validar que la fecha de vencimiento no sea mayor al plazo*/
                                    ld_fecven = date(left(data,10))
                                               if ld_fecven < date(string(ld_hoy,'dd/mm/yyyy')) then
                                                               messagebox('Atención','La fecha de vencimiento no puede ser menor a la de hoy....verifique',Exclamation!)
                                                               dw_forma_pago.Object.rp_fecven[row] = ld_hoy 
                                                                setcolumn("rp_valor")
                                                               setfocus()                                         
                                                                return 1 
                                                end if 

												
											////comente porlos sobregiros                                               
											//                                           if ic_salcre < dw_forma_pago.Object.rp_valor[row] then 
											//                                                           messagebox('Atención','El valor ingresado es mayor que el saldo del crédito ['+string(ic_salcre) +']',Exclamation!)
											//                                                           dw_forma_pago.Object.rp_valor[row] = ic_salcre
											//                                                           dw_cab.object.valor_otras[1] = dw_forma_pago.object.cc_abono[1]
											//                                                           dw_forma_pago.setitem(row,"rp_fecven",ld_fecven)
											//                                                           return 1
											//                                           end if        
											SELECT GV_CODIGO
											INTO  :ls_usuario_pos
											FROM PR_SUCUR
											WHERE SU_CODIGO =:str_appgeninfo.sucursal;	 
											
											IF (ls_usuario_pos = 'M' ) THEN
												li_dias = daysafter(date(ld_hoy), ld_fecven) 
												
												IF ii_plazo < li_dias THEN
													IF  li_dias>5 THEN 
																messagebox('Atención','La Fecha de vencimiento excede al plazo permitido para este cliente es 6 días)',Exclamation!)
																dw_forma_pago.Object.rp_fecven[row] = ld_hoy
																setcolumn("rp_valor")
																setfocus()                                          
																 return 1
													END IF
												ELSEIF	daysafter(date(ld_hoy),ld_fecven) > ii_plazo then
																		messagebox('Atención','La Fecha de vencimiento excede al plazo permitido para este cliente ('+string(ii_plazo)+' días)',Exclamation!)
																		dw_forma_pago.Object.rp_fecven[row] = ld_hoy
																		setcolumn("rp_valor")
																		setfocus()                                          
																		 return 1
												  end if
											ELSE
												  if daysafter(date(ld_hoy),ld_fecven) > ii_plazo then
																		messagebox('Atención','La Fecha de vencimiento excede al plazo permitido para este cliente ('+string(ii_plazo)+' días)',Exclamation!)
																		dw_forma_pago.Object.rp_fecven[row] = ld_hoy
																		setcolumn("rp_valor")
																		setfocus()                                          
																		 return 1
												  end if
											END IF
																										  
                                               if (daysafter(date(ld_hoy),ld_fecven) - ii_fpplazo) > 0 then
                                                               this.object.estado[row] = 'N'
                                               else
                                                               this.object.estado[row] = 'S'
                                               end if
                               end if


case 'rp_citarj'			 

		String ls_citajr, ls_nomclientarj
		Integer li_validarucic
				
		ls_citajr = data 
		li_validarucic = f_valida_rucic(data)

		SELECT ce_tipo
		INTO :lch_tipo
		FROM FA_CLIEN
		WHERE ce_rucic = :data;

	
		if li_validarucic <> 1  and lch_tipo <> 'P' then 
			messagebox("Aviso","La Cedula o Ruc no es correcto, por favor verifique y vuelva a intertarlo....!", Exclamation!)
			this.settext('')
			return 1
		end if	

			SELECT CE_NOMBRE||' '||CE_APELLI
			INTO :ls_nomclientarj
			FROM FA_CLIEN
			WHERE CE_RUCIC =:ls_citajr;
			
			if sqlca.sqlcode =  0 then
				dw_forma_pago.object.rp_nombretarj[row] = ls_nomclientarj
			else 
				dw_forma_pago.object.rp_nombretarj[row] = ''
			end if
	
	
case 'rp_nombretarj'			

		String ls_nomtarj

		ls_nomtarj = data
		
		
		if IsNull(ls_nomtarj) or ls_nomtarj = '' then 
			messagebox("Aviso","Debe Ingresar el Nombre que esta en la Tarjeta para Continuar.....!", Exclamation!)
			this.settext('')
			return 1
			
		end if
			



end choose

end event

event itemerror;
return 1
end event

event losefocus;decimal lc_total,lc_pagado
long ll_filcab, ll_filact
int li_nreg
dec{2} lc_valor_pagar, lc_totpago

ll_filcab = dw_cab.GetRow()
ll_filact = this.getRow()

choose case this.getcolumnname()

  case 'rp_fecven','rp_comen'
                                 if  dw_cab.Object.cc_saldo[1] <> 0 then
                                               li_nreg = InsertRow(0)
                                               scrolltorow(li_nreg)                       
                                               setrow(li_nreg)
                                               setcolumn("fp_codigo")
                                 end if
	
case 'rp_nombretarj'			

		String ls_nomtarj,ls_citajr

		ls_nomtarj =  dw_forma_pago.object.rp_nombretarj[dw_forma_pago.Getrow()]
	
		ls_citajr = dw_forma_pago.object.rp_citarj[dw_forma_pago.Getrow()]
				
		if IsNull(ls_citajr) or ls_citajr = '' then 
			messagebox("Aviso","Ingrese una Cedula o Ruc para continuar....!", Exclamation!)
			this.settext('')
			return 1
			
		end if
	
		
		if IsNull(ls_nomtarj) or ls_nomtarj = '' then 
			messagebox("Aviso","Debe Ingresar el Nombre que esta en la Tarjeta para Continuar.....!", Exclamation!)
			this.settext('')
			return 1
			
		end if
			
		 if  dw_cab.Object.cc_saldo[1] <> 0 then
                                               li_nreg = InsertRow(0)
                                               scrolltorow(li_nreg)                       
                                               setrow(li_nreg)
                                               setcolumn("fp_codigo")
               end if

end choose        
end event

event ue_keydown;datawindowchild ldwc_fp

if KeyDown(KeyEscape!) then
                wf_encera_pago()
	   		 borra_fila_promo( 1)
                //wf_insertarfila()
                dw_det.Object.codant.Protect = false
//            dw_det.Object.dv_cantid.Protect = false           
//            m_marco.m_archivo.m_cancelarpos.enabled = true
//            m_marco.m_archivo.m_grabarfacturapos.enabled = false
			is_imprimenc = 'N' 
			dw_cab.object.efectivo.protect = 0
                dw_det.enabled = true
			 dw_det.setcolumn("codant")
                dw_det.setfocus()
		
end if

end event

event ue_mismafila;int li_fila
li_fila = this.getrow()
  if li_fila <> 1 then
                this.setrow(li_fila -1)
                this.scrolltorow(li_fila -1)
                this.setcolumn(this.getcolumn())
                this.setfocus()
  else
                this.setrow(1)
                this.scrolltorow(0)
                this.setcolumn(this.getcolumn())
                this.setfocus()
end if

end event

event itemfocuschanged;String ls_ifcodigo, ls_nc,ls_imprepos, ls_dwprint
dec{2} lc_valnc
longlong ll_numpre,ll_numero, ll_ramnum
integer li_i
datawindowchild ldwc_fp_1
datawindowchild dwc_codigo


if dwo.name = "rp_numcta" then
                ls_ifcodigo = this.object.if_codigo[row]
                idwc_ctas.retrieve(ls_ifcodigo,is_codcli)
end if

if dwo.name = "rp_valor" then

       	  ll_numero = longlong(getitemstring(row,"rp_numdoc"))
                if this.Object.fp_codigo[row] = '2'  and  not IsNull(ll_numero)  then
						
						
                               ll_numero = longlong(getitemstring(row,"rp_numdoc"))
					      select distinct 'S',fv.ve_valotros,fv.ve_numpre, fd.dv_desc2, fv.bn_codigo
                               into  :ls_nc,:lc_valnc,:ll_numpre, :ic_desc2,:is_bncodigo
                               from fa_venta fv, fa_detve fd
                               where  fv.em_codigo = fd.em_codigo
							and fv.su_codigo = fd.su_codigo
							and fv.bo_codigo = fd.bo_codigo
							and fv.es_codigo = fd.es_codigo
							and fv.ve_numero = fd.ve_numero
							and fv.em_codigo = 1
                               and fv.su_codigo = :str_appgeninfo.sucursal
                               and fv.bo_codigo = :str_appgeninfo.seccion 
                               and fv.es_codigo = trim(10)
                               and fv.ve_numero = :ll_numero;
		 				 ll_ramnum = longlong(getitemstring(row,"rp_numcta"))
						 ll_numnc = ll_numero
		 
		 			
		 			
		 				if  not isNull(is_bncodigo) and is_bncodigo <> '' then
								 
									if ll_ramnum <> longlong(is_bncodigo) then
											  messagebox("Atención","El codigo unico de Nota de Credito no corresponde al ingresado... Por favor verifique y vuelva a intentarlo",Exclamation!)
															  this.object.rp_valor[row] = 0
															  this.object.rp_numcta[row] = ''
															  return 1
									else
											is_imprimenc = 'T'
									 end if
									 
						end if

                               if ls_nc <> 'S' then
                                                               messagebox('Atención','Nota de crédito no registrada',Exclamation!)                 
                                                               this.object.rp_valor[row] = 0
                                                               return 1
                               elseif lc_valnc = 0 then
                                                               messagebox("Atención","La Nota de crédito ha sido totalmente cruzada",Exclamation!)
                                                               this.object.rp_valor[row] = 0
                                                               return 1
                               else
														
//												this.object.rp_numcta[row]      = string(ll_numpre)
									              	this.object.rp_numcta[row]      = string(ll_numpre)
                                                   	     this.object.rp_valor[row] = lc_valnc
                                                          	 dw_cab.object.valor_otras[1] = this.object.cc_abono[1]   
												if	is_imprimenc = 'T' and this.object.fp_codigo[row]='2' and dw_cab.object.valor_otras[1] > 0 then
													is_imprimenc = 'S'
												ELSE 
													is_imprimenc = 'N'
												end if
				             end if
                
                               select nvl(count(*),0)
                               into :li_i
                               from fa_recpag dp, fa_formpag fp
                               where dp.fp_codigo = fp.fp_codigo
                               and dp.em_codigo = fp.em_codigo
                               and dp.em_codigo = :str_appgeninfo.empresa
                               and dp.su_codigo = :str_appgeninfo.sucursal
                               and dp.bo_codigo = :str_appgeninfo.seccion
                               and dp.es_codigo = '2'
                               and dp.ve_numero = :ll_numpre
                               and fp.fp_descue = 'N';
                                               
                               if li_i >= 1 then
                                               this.object.estado[row] = 'N'
                               end if    
										 
										 
						elseif this.Object.fp_codigo[row] = '2'  and  IsNull(ll_numero)  then
							
							this.object.rp_numdoc.protect = 0
							 setcolumn("rp_numdoc")  
							 setfocus()                
							
				
                end if
end if


end event

event updatestart;accepttext()
end event

event editchanged;//string ls_buscar
//Integer fila
//datawindowchild dwc_fp
//
//if dwo.name ='fp_codigo' then
// 
//	 ls_buscar=data
//	dw_forma_pago.getchild( 'fp_codigo', dwc_fp)
//	if ls_buscar = "" then
//		dwc_fp.SetFilter("")
//	else
//	ls_buscar= "%"+trim(data)+"%"
//	fila = dwc_fp.find("upper(compute_1) like '"+ ls_buscar +"'",1,dwc_fp.rowcount())
//	if fila>0 then
//	dwc_fp.SetFilter("upper(compute_1) like '"+ ls_buscar +"'")
//	end if
//	end if
//	dwc_fp.Filter( ) 
//
//end if
end event

type dw_cab from datawindow within w_pos
event ue_dwnkey pbm_dwnkey
event ue_nextfield pbm_dwnprocessenter
event ue_promonavidad ( )
boolean visible = false
integer x = 297
integer y = 464
integer width = 2816
integer height = 1560
boolean titlebar = true
string title = "Cancelación de Ticket"
string dataobject = "d_cabecera_ticket"
boolean livescroll = true
borderstyle borderstyle = styleraised!
end type

event ue_dwnkey;longlong ll_ticked
integer li_cadena
String ced_ruc

if KeyDown(KeyEscape!) then
	
		if ls_rucci<>ls_rucemp  and is_estado = '3' then
					if is_valprof = '8' then
						dw_cab.setcolumn("origen_txt")
						is_valotros = this.gettext()
					end if
			else 
		end if

                wf_encera_pago()
//            m_marco.m_archivo.m_cancelarpos.enabled = true
//            m_marco.m_archivo.m_grabarfacturapos.enabled = false
			dw_det.object.b_5.enabled = true
			dw_det.object.b_4.enabled = true
			sle_3.enabled = true
			sle_2.enabled = true
	            dw_det.enabled = true
                dw_det.setcolumn("codant")
                dw_det.setfocus()         
         
			
                //navidad
                gb_obsequio.visible = false 
                 rb_cal.visible = false
                                                  rb_na.visible = false
                                                  rb_cal.checked =  false
                                                  rb_na.checked = false
                                                  li_premio = 0
         	is_numpremio = ''
			is_prpremios = ''
			gano = 0
                //fin navidad
                
//   

//Permite borrar el elemento de la promocion 2 cuando se necesite editar los elementos de la factura....
                                               ciclo = 1 // Permite resetear cuando el ruc es de trecx si intenta poner otro ruc...
                                               borra_fila_promo( 1)
															  

end if

		CHOOSE CASE this.GetColumnName()
				CASE "cliente"
					IF KeyDown(KeyTAB!)   THEN
						IF (li_preimpre = 1 ) THEN
							IF  dw_cab.GetText() = '1' THEN 
								messagebox("Advertencia", "No Debe Imprimir Facturas Electrónicas con CONSUMIDOR FINAL....!")
							END IF
						END IF	
						IF (li_preimpre = 2 ) THEN
								ced_ruc = dw_cab.object.cliente[dw_cab.GetRow()]
								  li_cadena = LEN(ced_ruc)
								IF  li_cadena > 10 THEN 
									messagebox("Advertencia", "No Debe Imprimir Facturas Preimpresas con RUC....!")
								END IF
						END IF
					END IF
		END CHOOSE
//				if (isNull(dw_cab.object.ve_preant[dw_cab.GetRow()]) or (dw_cab.object.ve_preant[dw_cab.GetRow()]) = '' ) then
//				
//					messagebox("Aviso", "No puede continuar hasta que ingrese el numero de Factura Física", StopSign!)
//					return 1
//				else
//					
//
//				
//				SELECT cj_ticket
//				INTO :ll_ticked
//				FROM fa_caja
//				WHERE fa_caja.cj_caja = :caja.caja
//				AND fa_caja.su_codigo = :str_appgeninfo.sucursal ;
//	
//				IF (ll_ticked = longlong(dw_cab.object.ve_preant[dw_cab.GetRow()])) THEN
//					dw_cab.setcolumn( "cliente")
//					dw_cab.setfocus()
//					return 0
//				ELSE
//					dw_cab.object.ve_preant[dw_cab.GetRow()]=''
//						messagebox("Aviso", "No puede continuar por que el ticked no coincide con el Documento Físico", StopSign!)
//					return 1
//				
//
//				END IF
//			
//			end if				
//		END CHOOSE	
//end if
		

end event

event ue_nextfield;send(handle(this),256,9,0)


end event

event itemchanged;string ls_datos[],ls_codigo, ls_nulo, ls_valiva,  ls_pecodigo, ls_observacion, ls_email, ls_email1, ls_email2, ls_ce_tipo, ls_dir_dom, ls_dir_of, ls_cadena_dir, ls_razons, ls_relac, ls_fbcodigo, ls_igcodigo, ls_clcodprom,ls_itcodigo, ls_itprom, ls_itorigen
Long ll_stock_1, ll_stock_2, 	ll_inside 										 
int li_fila, li_stockpremio, li_dato, li_dato_anterior, is_valida, li_ingresa, li_impreso,li_return, li_validarucic, li_it, li_rcur
dec{2} lc_valor,lc_siniva, lc_desc3
boolean lb_si = false, lb_navidad = false,  si_hay= false
string null_str, ls_nomitem_prom
longlong ll_ticked
datawindowchild ldwc_fp, ldwc_if

str_architexto ls_ruc
w_frame_basic lw_frame


		
SELECT GV_CODIGO
INTO :ls_grupoven
FROM PR_SUCUR
WHERE SU_CODIGO = :str_appgeninfo.sucursal;


li_fila=dw_cab.getRow()
dw_det.accepttext()
ic_descuento = dw_det.getitemdecimal(1,"lc_descue")
lc_siniva = dw_det.GetitemDecimal(1,"cc_sumsiniva")
ic_valor = dw_det.GetitemDecimal(1,"cc_total")
ic_iva = dw_det.GetitemDecimal(1,"cc_tarjeta") - ic_valor
SetNull(null_str)

this.accepttext()
CHOOSE CASE this.GetColumnName()
		
		
CASE "ve_preant"

				if (isNull(dw_cab.object.ve_preant[dw_cab.GetRow()]) or (dw_cab.object.ve_preant[dw_cab.GetRow()]) = '' ) then
				  
					messagebox("Aviso", "No puede continuar hasta que ingrese el numero de Factura Física", StopSign!)
					return 1
				
				else
					
				li_entro = 1
				
				SELECT cj_ticket
				INTO :ll_ticked
				FROM fa_caja
				WHERE fa_caja.cj_caja = :caja.caja
				AND fa_caja.su_codigo = :str_appgeninfo.sucursal ;
				
	
	
				IF (ll_ticked = longlong(dw_cab.object.ve_preant[dw_cab.GetRow()])) THEN
					dw_cab.object.cliente.protect = 0
					dw_cab.object.efectivo.protect = 0
					dw_cab.object.observacion.protect = 0
					ls_preant = longlong(dw_cab.object.ve_preant[dw_cab.GetRow()])
					dw_cab.setcolumn( "cliente")
					dw_cab.setfocus()
					return 0
				ELSE
					messagebox("Aviso", "No puede continuar por que el ticked no coincide con el Documento Físico", StopSign!)
					return 1
					dw_cab.setcolumn( "ve_preant")
					dw_cab.setfocus()

				END IF
			
			end if						
		
     
CASE "cliente"
                
 		      is_cliruc = this.GetText()
 		
			
				SELECT "FA_CLIEN"."CE_CODIGO"
				INTO :is_codcli
				FROM "FA_CLIEN"
				WHERE "FA_CLIEN"."CE_RUCIC" = :is_cliruc;
				
		
					if sqlca.sqlcode <> 0  and is_cliruc<>'1' then
													
									lw_frame = parent.parentWindow()	
//									dw_cab.object.cliente[dw_cab.GetRow()]='1'
								//	dw_cab.setcolumn("cliente")
									//dw_cab.setfocus()
									
									If IsValid(w_cliente) Then 
											close(w_cliente)
									End If
					   						
											
									 wf_encera_pago()
									 dw_det.enabled = true
									 dw_det.setcolumn("codant")
									 dw_det.setfocus()         
			
												
					   								
									li_return = OpenSheetwithparm (w_cliente,is_cliruc, lw_frame, 1, Original!) 
		
						return 1
						
			else
				
				
				
                    SELECT "FA_CLIEN"."CE_CODIGO",   
                                                               'Tipo:'||"FA_CLIEN"."TC_CODIGO"||' Cod:'||"FA_CLIEN"."CE_CODIGO"||' '||"FA_CLIEN"."CE_RAZONS"||' / '||
                                                               decode(length("FA_CLIEN"."CE_RUCIC"),13,
														"FA_CLIEN"."CE_NOMREP"||' '||"FA_CLIEN"."CE_APEREP",
                                                               "FA_CLIEN"."CE_NOMBRE"||' '||"FA_CLIEN"."CE_APELLI"),   
														"FA_CLIEN"."CE_RAZONS",																					
												         "FA_CLIEN"."TC_CODIGO",   
                                                               nvl("FA_CLIEN"."CE_EXIVA",'1'), 
                                                               "FA_CLIEN"."CE_CUPCRE",   
                                                               nvl("FA_CLIEN"."CE_SALCRE",0),   
                                                               "FA_CLIEN"."CE_PLAZO",   
                                                               "FA_CLIEN"."CE_ESTCRE",   
                                                               "FA_CLIEN"."CE_CONTESP",   
                                                               "FA_CLIEN"."CE_FACTURAR", 
                                                               "FA_CLIEN"."CE_CAT",
                                                               nvl("FA_CLIEN"."CE_TELDOM",0),
                                                               nvl("FA_CLIEN"."CE_TELOFI",0),
                                                               nvl("FA_CLIEN"."CE_TELBOD",0),
                                                               nvl("FA_CLIEN"."CE_EMAIL",'') ,
                                                               nvl("FA_CLIEN"."CE_TIPO",'')  ,
												   nvl("FA_CLIEN"."CE_CAOFI1",''),
												  nvl("FA_CLIEN"."CE_CADOM1",''), 
												   DECODE ("FA_CLIEN"."CE_TIPO",'R',CONCAT("FA_CLIEN"."CE_CAOFI1"||' ', "FA_CLIEN"."CE_CAOF2"), 'J',CONCAT("FA_CLIEN"."CE_CAOFI1"||' ', "FA_CLIEN"."CE_CAOF2"), CONCAT("FA_CLIEN"."CE_CADOM1"||' ', "FA_CLIEN"."CE_CADOM2")) AS DIR_ENTREGA,
  												  nvl("FA_CLIEN"."CE_EXIVA",'1'), 
												   "FA_CLIEN"."DC_CODIGO"	,
													nvl("FA_CLIEN"."CE_RELAC",'N')
                INTO :is_codcli,:is_nomcli,:ls_razons,:is_tipcli,:ich_iva,:ic_cupcre,:ic_salcre,:ii_plazo,:is_estcre,:is_contesp,:is_facturar, :is_cat, :is_teldom, :is_telofi, :is_telbod, :ls_email, :ls_ce_tipo, :ls_dir_of, :ls_dir_dom, :is_dir_entrega, :ls_ceexiva,:ls_dccodigo,:ls_relac
                FROM "FA_CLIEN"  
                WHERE ( "FA_CLIEN"."EM_CODIGO" = :str_appgeninfo.empresa )   
                AND ( "FA_CLIEN"."CE_RUCIC" = :is_cliruc )
                                               AND ( NVL("FA_CLIEN"."CE_ACTIVO",'N') <> 'N' );
            
			if sqlca.sqlcode <> 0  and is_cliruc<>'1' then
     //open(w_cliente_punto_venta)
                               messageBox('Atencion','Cliente si existe pero está desactivado por datos incompletos, Verifique la ficha del cliente.' , StopSign!)
                               is_cliruc = '1'
                               this.modify("param_cli.text = 'Por favor corrija los datos.'")
                               this.setitem(li_fila,'nombre_cli',"")
//                dw_cab.setcolumn('cliente')
//                dw_cab.setfocus()           
                               return 1
                else
                                       
													
													
//************************************************RAZON SOCIAL CUANDO ES RUC*************************************************************************//

IF ( ls_ce_tipo= 'R' or ls_ce_tipo ='J') and (ls_razons = '' or IsNull(ls_razons)) THEN 
	
	 messagebox("Advertencia","No ingreso razon social para Cliente con Ruc, verifiquelo y vuelva a intentarlo" , StopSign! )
	 return 1
END IF

													
//***********************************************---CORREO VALIDACION---****************************************************************************//                          
                                                 
													
											
													
													IF(ls_email <> '' or Not IsNull(ls_email)) THEN                                    
//                                                                                          
                                                                                        									
																	
																			li_dato_anterior = 1	
																			
																			IF(POS(ls_email,'|')=0) THEN
																				  ls_email1 = mid(ls_email,1, len(ls_email ) )		
																				  is_valida = lf_validamail(ls_email1)
																				  IF (is_valida = 2) THEN
																						 messagebox("Advertencia","Correo Electrónico no valido revise y corrija el mail " + String(ls_email)+ ", y vuelva a intentarlo" , StopSign! )
																						return 1
																					END IF
																			END IF
																																																
																			DO WHILE POS(ls_email,'|')<>0

																			
																				
																				 li_dato = POS(ls_email,'|')
																				 ls_email1 = mid(ls_email,(li_dato_anterior), ((li_dato)-1))		
																			       is_valida =  lf_validamail(ls_email1)
																				IF (is_valida = 2) THEN
																					 messagebox("Advertencia","Correo Electrónico no valido revise y corrija el mail " + String(ls_email)+ ", y vuelva a intentarlo" , StopSign! )
																					return 1
																				END IF
																				 ls_email =  mid(ls_email,(li_dato)+1, len(ls_email ))		
																				 
																				 IF(POS(ls_email,'|')=0) THEN
																				  ls_email1 = mid(ls_email,1, len(ls_email ) )		
																				  is_valida = lf_validamail(ls_email1)
																				  IF (is_valida = 2) THEN
																					 messagebox("Advertencia","Correo Electrónico no valido revise y corrija el mail " + String(ls_email)+ ", y vuelva a intentarlo" , StopSign! )
																					return 1
																				END IF
																				ELSE
																				 
																				END IF 
															
																			LOOP
																		
																	ELSE
																		
																		messagebox("Aviso", "    El Cliente no Tiene Mail y no le llegará la factura Electrónica~rSi el Cliente necesita su Factura al Correo debe llenar este Campo...!")
																	
                                                                                    		
															END IF            
                                                                                              
                                               
//***********************************************--- FIN CORREO VALIDACION---****************************************************************************//                          


//***********************************************---TELEFONO VALIDACION---****************************************************************************//   
 IF ( ls_ce_tipo= 'R' or ls_ce_tipo ='J') and Not IsNull(is_telofi ) THEN

	 is_valida = lf_valida_telefono(is_telofi)

  	IF (is_valida = 2 and is_telofi <>'0') THEN
	 			messagebox("Advertencia", "El Telefono ingresado (" + String(is_telofi)+ ") es incorrecto, favor corregir y continuar....!",StopSign!)
				 return 1
	END IF
ELSEIF Not IsNull(is_teldom ) THEN
	//ls_ce_tipo = 'N' THEN
	is_valida= lf_valida_telefono(is_teldom)
	 IF (is_valida = 2 and is_teldom <>'0') THEN
	 			messagebox("Advertencia", "El Telefono ingresado (" + String(is_teldom)+ ") es incorrecto, favor corregir y continuar....!",StopSign!)
				 return 1
	END IF
END IF
//***********************************************--- FIN TELEFONO VALIDACION---****************************************************************************//   

//***********************************************---DIRECCION VALIDACION---****************************************************************************//   
 IF ls_ce_tipo= 'R' or ls_ce_tipo ='J'THEN
	
  	 ls_cadena_dir = left(ls_dir_of,1)
  
	IF Match(ls_cadena_dir, "^[0-9A-Za-z]+$")=FALSE THEN
			messagebox("Advertencia", "La Direccion no permite caracteres especiales al principio, favor corregir y continuar....!",StopSign!)
			return 1
	END IF
	 
  		
	ELSE
		//IF ls_ce_tipo = 'N' THEN
	 
	ls_cadena_dir = left(ls_dir_dom,1)
  	IF Match(ls_cadena_dir, "^[0-9A-Za-z]+$")=FALSE THEN
 			messagebox("Advertencia", "La Direccion no permite caracteres especiales al principio, favor corregir y continuar....!",StopSign!)
			return 1
	END IF
END IF
//***********************************************--- FIN DIRECCION VALIDACION---****************************************************************************//   
//*******************************************CONTROL INGRESO DE RUC O CEDULA ********************************************///

		if ls_ce_tipo = 'N' and Len(is_cliruc) <> 10 and is_cliruc<>'1' then
			messagebox("Aviso","El Cliente es de tipo Natural pero el documento es Ruc o Pasaporte, por favor corrijalo y vuelva a intertarlo....!", Exclamation!)
			setitem(row,'cliente','')
			return 1
		elseif ls_ce_tipo = 'R' AND  Len(is_cliruc)   <> 13  and is_cliruc<>'1' then
			messagebox("Aviso","El Cliente es de tipo RUC pero el documento es Cedula o Pasaporte, por favor corrijalo y vuelva a intertarlo....!", Exclamation!)
			setitem(row,'cliente','')
			return 1
		elseif ls_ce_tipo = 'J' AND Len(is_cliruc) <> 13  and is_cliruc<>'1' then
			messagebox("Aviso","El Cliente es de tipo Juridico, pero el documento es Cedula o Pasaporte, por favor corrijalo y vuelva a intertarlo....!", Exclamation!)
			setitem(row,'cliente','')
			return 1
		end if
	
		li_validarucic = f_valida_rucic(is_cliruc)
		
		if li_validarucic <> 1 and is_cliruc<>'1' and ls_ce_tipo <> 'P' then 
			messagebox("Aviso","La Cedula o Ruc del Cliente no es correcto, por favor verifique y vuelva a intertarlo....!", Exclamation!)
			setitem(row,'cliente','')
			return 1
		end if
	
///********************************************************************************************************************************//

IF (li_preimpre = 2 and li_impreso=1) THEN
	 IF ls_ce_tipo= 'R' or ls_ce_tipo ='J'THEN
		messagebox("Advertencia", "No Debe Imprimir Facturas Preimpresas con RUC ....!")
	END IF
ELSEIF(li_preimpre = 1 ) THEN
	IF is_cliruc ='1' and li_impreso=1 THEN
		messagebox("Advertencia", "No Debe Imprimir Facturas Electrónicas a CONSUMIDOR FINAL ....!")
	END IF
END IF
//IF dwo.name = "ce_caofi1" THEN
//            if POS(data,'.')=1 or POS(data,',')=1 or POS(data,':')=1  or POS(data,'/')=1  or POS(data,'\')=1 then
//       SetItem(row,"ce_caofi1",left(data,len(data) - 1))
//       SelectText(1, Len(data))
//       return 1 
//   end if 
//END IF
//
//IF dwo.name = "ce_secofi" THEN
//            if POS(data,'.')=1 or POS(data,',')=1 or POS(data,':')=1  or POS(data,'/')=1  or POS(data,'\')=1 then
//       SetItem(row,"ce_secofi",left(data,len(data) - 1))
//       SelectText(1, Len(data))
//       return 1 
//   end if 
//END IF
//
//IF dwo.name = "ce_caof2" THEN
//            if POS(data,'.')=1 or POS(data,',')=1 or POS(data,':')=1  or POS(data,'/')=1  or POS(data,'\')=1 then
//       SetItem(row,"ce_caofi2",left(data,len(data) - 1))
//       SelectText(1, Len(data))
//       return 1 
//   end if 
//END IF
//
//IF dwo.name = "ce_caent1" THEN
//            if POS(data,'.')=1 or POS(data,',')=1 or POS(data,':')=1  or POS(data,'/')=1  or POS(data,'\')=1 then
//       SetItem(row,"ce_caent1",left(data,len(data) - 1))
//       SelectText(1, Len(data))
//       return 1 
//   end if 
//END IF
//
//
//IF dwo.name = "ce_caent2" THEN
//            if POS(data,'.')=1 or POS(data,',')=1 or POS(data,':')=1  or POS(data,'/')=1  or POS(data,'\')=1 then
//       SetItem(row,"ce_caent2",left(data,len(data) - 1))
//       SelectText(1, Len(data))
//       return 1 
//   end if 
//END IF
//



//                           //***************jaic regalo por cliente para navidad
//                                           long ll_count_regalo,i,j[],k, ll_entra
//                                           string ls_itcodigo, ls_codant, ls_venumero
//                                           
//                                           ll_entra = 0
//                                           
//                                           select count(*)
//                                           into :ll_count_regalo
//                                           from fa_obsequios t
//                                           where ce_codigo = :is_codcli
//                                           and su_codigo = :str_appgeninfo.sucursal
//                                           and ve_numero is null;
//                                           
//                                           select it_codigo, ve_numero
//                                           into :ls_itcodigo, :ls_venumero
//                                           from fa_obsequios t
//                                           where ce_codigo = :is_codcli
//                                           and su_codigo = :str_appgeninfo.sucursal;
//                           //            and ve_numero is null;
//                                           
//                                           //11356,4391
//j[] = {11356,4391}
//                                           ll_entra = 0
//                                           if (is_codcli <> '1') and (not isnull(ls_itcodigo)) then //ib_obsequio = true then
////                                                       ib_obsequio = false
//                                                           for i = 1 to 2
//                                                                          k = dw_det.find("it_codigo = '" + string(j[i]) + "'",1,dw_det.Rowcount())
//                                                                          if  k > 0 then
//                                                                                          if string(j[i]) = ls_itcodigo then
//                                                                                                          
//                                                                                                          if dw_det.GetItemNumber(k,'dv_cantid') > 1 then
//                                                                                                                         messagebox('Atención','El obsequio solo debe ser cantidad igual a 1.')
//                                                                                                                         return 1
//                                                                                                          end if
//                                                                                                          //si ya  fue entregado envía mensaje al cajero
//                                                                                                          if not isnull(ls_venumero) then
//                                                                                                                         messagebox('Atención','El obsequio ya fue entregada en la factura Nro. ' + ls_venumero)
//                                                                                                                         return 1
//                                                                                                          end if
//                                                                                                          
//                                                                                                          //entra y está bien
//                                                                                                          ll_entra = ll_entra + 1
//                                                                                          else
//                                                                                                          
//                                                                                                          //no debería tener
//                                                                                                          ls_codant = dw_det.GetItemString(k,'codant')
//                                                                                                          messagebox('Atención','El obsequio. ' + ls_codant + ' no está asignado a este cliente.')
//                                                                                                          dw_cab.reset()
//                                                                                                          dw_cab.SetTransObject(sqlca)
//                                                                                                          dw_cab.insertrow(0)
//                                                                                                          dw_cab.visible=false
//                                                                                                          dw_forma_pago.visible = false
//                                                                                                          dw_sel_recuperar.visible = false
//                                                                                                          dw_det.enabled = true
//                                                                                                          dw_det.setfocus()
//                                                                                                          dw_det.setcolumn("codant")
//                                                                                                          return 1
//                                                                                                          
//                                                                                          end if
//                                                                          else
//                                                                          end if
//                                                           next
//                                                           ////debe entregar regalo al cliente, este es un mensaje para avisar si no lo han ingresado
//                                                           if  ll_count_regalo > 0 and ll_entra = 0 then
//                                                                          //ls_codant = dw_det.GetItemString(k,'codant')
//                                                                          String ls_itcodant, ls_itnombre
//                                                                          select it_codant, it_nombre
//                                                                          into :ls_itcodant, :ls_itnombre
//                                                                          from in_item
//                                                                          where it_codigo = :ls_itcodigo;
//                                                                          
//                                                                          messagebox('Atención','El cliente debe recibir el obsequio ' + ls_itcodant + ' - ' + ls_itnombre + ' por navidad.  Favor ingresarlo.')
//                                                                          dw_cab.reset()
//                                                                          dw_cab.SetTransObject(sqlca)
//                                                                          dw_cab.insertrow(0)
//                                                                          dw_cab.visible=false
//                                                                          dw_forma_pago.visible = false
//                                                                          dw_sel_recuperar.visible = false
//                                                                          dw_det.enabled = true
//                                                                          dw_det.setfocus()
//                                                                          dw_det.setcolumn("codant")
//                                                                          return 1
//                                                           end if
//                                           end if
//                                                                          
//                                           if ll_entra > 1 then
//                                                           messagebox('Atención','Esta entrgando mas de un obsequio, favor verificar.')
//                                                           return 1
//                                           end if
//
////                                       if not isnull(ls_itcodigo) then
////                                                       //dw_det.SetItem
////                                       end if
////************end jaic fin regalo por cliente para navidad
                               

                                                                              
                
                
                               if ich_iva = 'S' then
                                               ii_estado = 0 
                               else
                                               ii_estado = 1
                               end if    
                               ls_valiva = string(tasa.iva*100,'#,##0')
                               ls_datcli = 'Mail: '+ ls_email + ' Credito='+ is_estcre + ',' + string(ic_salcre,"#,##0") + ' de '+string(ic_cupcre,"#,##0")+', Plazo:'+string(ii_plazo)+ '/Ex. IVA='+ich_iva+' /C.Esp.='+is_contesp+' /Telfs.: D ' + is_teldom +'-O ' + is_telofi +'-B ' + is_telbod
                               this.modify("t_iva.text = 'IVA "+ls_valiva+"%:'")
                               this.modify("param_cli.text = '"+ls_datcli+"'")
							this.modify("par_dircliente.text = 'Dirección: "+is_dir_entrega+"'")
                               this.setitem(li_fila,'nombre_cli',is_nomcli)
                               
                               if is_tipcli = 'LNE' then
                                                               messageBox('ALERTA','CLIENTE EN LISTA NEGRA...<NO VENDER A CRÉDITO. >',Exclamation!)
                               end if                    

                               
                               if is_facturar <> 'S' and is_cat <> 'A' and is_cliruc<> '1' then
                                               messageBox('ATENCIÓN','CLIENTE BLOQUEADO...FACTURAR EN EFECTIVO, TARJETA DE CREDITO Ó DEBITO...<consulte con cartera>') 
                               end if
END IF
      

// CREXIVA: Asignacion de Iva 0 o Iva % cuando el cliente es excento de Iva, ya que no lo asignaba anteriormente.
// Modificado Por: Henry Pinchao 
// Fecha Modificacion: 05/05/2017 14:00

			dw_cab.SetItem(li_fila,"subtotal",ic_valor)
               dw_cab.SetItem(li_fila,"descuento",ic_descuento) 
			if ls_ceexiva = '1' then  //-------------------------------------------------------------------------- Condicion que controla el acceso cuando el cliente no es exento de iva
                dw_cab.SetItem(li_fila,"iva",ic_iva*ii_estado) //------------------------------------------------Se asigna el valor de Iva al campo de valivacuando el cliente no es exento de iva
			 dw_cab.Modify("cc_tarifa0.Expression= '"+String(0)+"'")   //--------------------------------Se asigna 0 a la tarifa 0 cuando el cliente no es exento de iva
			 dw_cab.Modify("cc_tarifa12.Expression= '"+String((ic_iva*ii_estado)+ic_valor)+"'")  // Se asigna el valor del total + iva 
			else//--------------------------------------------------------------------------------------------------- Condicion que controla el acceso cuando el cliente es exento de iva
				dw_cab.SetItem(li_fila,'iva',0)//-----------------------------------------------------------------Se asigna 0 al valor de Iva cuando el cliente  es exento de iva
				dw_cab.Modify("cc_tarifa12.Expression= '"+String(0)+"'") //------------------------------Se asigna 0 a la tarifa 12 cuando el cliente  es exento de iva
				dw_cab.modify("cc_tarifa0.Expression = '"+String(ic_valor)+"'")//------------------------Se asigna el valor del subtotal a la tarifa 0 cuando el cliente es exento de iva
				ic_iva = 0
			end if

//*********************************************************FIN CREXIVA*******************************************************************************//


//    dw_cab.Setitem(li_fila,"cargo",0)                                  
                dw_forma_pago.Reset()
// Paco Flores si el cliente cambia no hay porque filtrar aun sino en efectivo
//            dw_forma_pago.getChild("fp_codigo", ldwc_fp)           
//            ldwc_fp.setTransObject(sqlca)
//            if is_tipcli = 'LNE' then  //filtrar solo efectivo y tarjetas de debito y credito
//                           ldwc_fp.setfilter("fp_codigo <> '0' and rp_tipo in ('E','T','D','S') and fp_string like '%V%'")
//                           //sacar todas las formas de pago
//            elseif is_cliruc = ls_rucemp then
//                           //** Permite definir fp como autoconsumos para la empresa
//                                           ldwc_fp.SetFilter("rp_tipo = 'A' and fp_string like '%V%'")
//                                           dw_cab.setItem( dw_cab.GetRow(), "efectivo", 0)
////                                       dw_cab.object.efectivo.protect = 1
//                                           dw_cab.postevent(itemchanged!)
//            else
//                           // *********************************************************************************//
////                       dw_cab.object.efectivo.protect = 0
//                           ldwc_fp.setfilter("fp_codigo <> '0' and fp_string like '%V%' and rp_tipo <> 'A'")
//            end if
//            ldwc_fp.filter() 
                dw_forma_pago.Visible = false               

                
                 
                 lc_valor = (ic_valor - ic_descuento) + ic_iva*ii_estado
                dw_cab.SetItem(li_fila,"valor_pagar", lc_valor)

//            if is_cliruc <> ls_rucemp then
                               dw_cab.SetItem(li_fila,'efectivo',lc_valor)
//            else
//                           dw_cab.setItem( li_fila, "efectivo", 0)
//            end if

                dw_cab.SetItem(li_fila,'valor_otras',0)
                dw_cab.Modify("cc_cuotafacil.Expression='"+string(lc_valor)+"'")
                dw_cab.setcolumn('cliente')
                dw_cab.setfocus()         





////**********************PROMOCION DE WESCO DURATEX*********************************///
////Promoción que permite ingresar items de Gorras y Camisetas y Chalecos cuando cumple los requisitos de compra para productos DURATEX --- POR MARCA
Integer li_filas_detail, li_recorre_filas, li_numpremios, li_codant
Char lch_promactivo, lch_kit, lch_sucactivo, lch_validastock
Long ll_new
String ls_mrcodigo, ls_premios[], ls_codprod
Decimal{2} ld_cantidad, ld_suma, lc_pedido, lc_stock, ld_desc
Date ld_feccad_prom




select pp_activo, pp_feccad
into :lch_promactivo, :ld_feccad_prom
from pm_promocion, pm_sucprom
where pm_promocion.pp_codigo = pm_sucprom.pp_codigo
and pm_promocion.pp_codigo ='2'
and su_codigo = :str_appgeninfo.sucursal
and ps_estado = '1'
and trunc(pp_feccad) >= trunc(sysdate);
ld_suma = 0

choose case lch_promactivo  
	
	case '1'							//Si la promoción se encuentra activa va a realizar la validación, caso contrario lo anula.
	
		SELECT  PS_ESTADO
		INTO  :lch_sucactivo
		FROM  PM_SUCPROM
	     WHERE PM_SUCPROM.PP_CODIGO = '2'
		AND PM_SUCPROM.SU_CODIGO = :str_appgeninfo.sucursal
		and trunc(PS_FECCAD) >= trunc(sysdate);

		choose case lch_sucactivo	////Verifica si la sucursal participa en la promoción caso contrario no entra
			case '1'
	
						ls_rucci = dw_cab.GetItemString(dw_cab.GetRow(),"cliente")
						select em_ruc, trunc(sysdate)
						into :ls_rucemp
						from pr_empre t
						where em_codigo = :str_appgeninfo.empresa;
						
						if (ls_rucci=ls_rucemp or ls_rucci = '1') then
						
						
							borra_fila_promo(1)
						end if
						
						if(ls_rucci<>ls_rucemp and ls_rucci <> '1' and is_estado = '2' and is_entro[2] <>'S'  ) then
						
							li_filas_detail = dw_det.rowcount()
							for li_recorre_filas = 1 to li_filas_detail 
								ls_mrcodigo = dw_det.object.mr_codigo[li_recorre_filas]
								lc_desc3 =	dw_det.getitemnumber(li_recorre_filas,"dv_desc3")	
								if ls_mrcodigo = '799' and lc_desc3 = 0 then  
									ld_cantidad = dw_det.getitemnumber(li_recorre_filas,"cc_coniva")
									ld_suma = ld_suma + ld_cantidad         
								end if
							next
							
						
										ls_premios = f_promociones(2,String(ld_suma),'0','0','0','0','0','0','0','0','0')
									
									li_numpremios = 1
									li_codant = 2
									lc_pedido = 1
									lc_stock = 0
							
									 
									do while  li_numpremios <= integer(ls_premios[1])
						
										select it_codigo, it_kit
										into :ls_codprod, :lch_kit
										from in_item
										where it_codant = :ls_premios[li_codant];
						
										si_hay = f_dame_stock_sucursal_pos (ls_codprod, lc_pedido, lc_stock,lch_kit,ic_recargo,ld_desc)
										
										if si_hay = true then
							
											ll_new = dw_det.insertrow(0)
											dw_det. scrolltorow(ll_new)
											dw_det.object.codant[ll_new] = ls_premios[li_codant]
											dw_det.object.prodpromo[ll_new] = 'P'
											dw_det.object.pp_codigo[ll_new] = '2'
											dw_det.setcolumn('codant')
											dw_det.triggerevent('itemchanged') 
											dw_cab.setcolumn('cliente')
											dw_cab.setfocus( )
										elseif si_hay = false and Dec(ls_premios[1]) > 0 then
										
											SELECT  PP_STOCK
											INTO  :lch_validastock
											from pm_promocion
											where  pm_promocion.pp_codigo ='2'
											and pp_activo = '1';

											
											if lch_validastock = 'N' or IsNull(lch_validastock) then
												messagebox('Aviso', 'El Stock es menor al requerido para la promoción WESCO', StopSign!)							
												return 1
											end if
											
										end if
											li_codant = li_codant + 1
											li_numpremios = li_numpremios + 1
											is_entro[2] = 'S'
									loop 
						
						end if
			end choose
	end choose	
	
	lch_promactivo = '0'
	
	
////**********************FIN PROMOCION DE WESCO DURATEX*********************************///



////******************************PROMOCION TERSIL **************************************///
//•	Por cada Caneca de Tersil Satinado (cod.: W1400-CA) el cliente recibe GRATIS 1 galón de tersil satinado (cod.: W1400-GL) 
//•	Por cada Galón de Tersil Satinado (cod.: W1400-GL) el cliente recibe GRATIS 1 litro de tersil satinado (cod.: W1400-CU)
//•	Por cada CANECA de Tersil Elastomérico (cod.: W1440-CA) el cliente recibe GRATIS 1 galín de tersil Elastomérico (cod.: W1440-GL)


String ls_codant, ls_coditem
Integer ls_prod_cantid


select pp_activo, pp_feccad
into :lch_promactivo, :ld_feccad_prom
from pm_promocion, pm_sucprom
where pm_promocion.pp_codigo = pm_sucprom.pp_codigo
and pm_promocion.pp_codigo ='3'
and su_codigo = :str_appgeninfo.sucursal
and ps_estado = '1'
and trunc(pp_feccad) >= trunc(sysdate);

ld_suma = 0
ls_prod_cantid = 0
choose case lch_promactivo
	
	case '1'							//Si la promoción se encuentra activa va a realizar la validación, caso contrario lo anula.
	
		ls_prod_cantid = 0
		ls_rucci = dw_cab.GetItemString(dw_cab.GetRow(),"cliente")
		select em_ruc, trunc(sysdate)
		into :ls_rucemp
		from pr_empre t
		where em_codigo = :str_appgeninfo.empresa;
		
		if (ls_rucci=ls_rucemp or ls_rucci = '1') then
			borra_fila_promo(1)
		end if
		
		if(ls_rucci<>ls_rucemp and ls_rucci <> '1' and is_estado = '2' and is_entro[3] <>'S'  ) then
			li_filas_detail = dw_det.rowcount()
			for li_recorre_filas = 1 to li_filas_detail 
				ls_codant = dw_det.object.codant[li_recorre_filas]			
				ls_coditem = dw_det.object.it_codigo[li_recorre_filas]
				lc_desc3 =	dw_det.getitemnumber(li_recorre_filas,"dv_desc3")	
				lc_pedido = 1
				lc_stock = 0
					
				CHOOSE CASE ls_coditem
					case '28376', '39669'
						if lc_desc3 = 0 then	
							ls_prod_cantid = dw_det.object.dv_cantid[li_recorre_filas]			
						end if
							ls_premios = f_promociones(3,ls_coditem,String(ls_prod_cantid),'0','0','0','0','0','0','0','0')
							lc_pedido = Integer(ls_premios[1])
						 
								select it_codant, it_kit
								into :ls_codant, :lch_kit
								from in_item
								where it_codigo = :ls_premios[2];

								si_hay = f_dame_stock_sucursal_pos (ls_premios[2], lc_pedido, lc_stock,lch_kit,ic_recargo,ld_desc)
						
														 
								if si_hay = true and Dec(ls_premios[1]) > 0 then
									
									ll_new = dw_det.insertrow(0)
									dw_det. scrolltorow(ll_new)
									dw_det.object.codant[ll_new] = ls_codant
									dw_det.object.prodpromo[ll_new] = 'P'
									dw_det.object.pp_codigo[ll_new] = '3'
									dw_det.setcolumn('codant')
									dw_det.triggerevent('itemchanged') 
									dw_det.object.dv_cantid[ll_new] = Dec(ls_premios[1])
									dw_cab.setcolumn('cliente')
									dw_cab.setfocus( )
								elseif si_hay = false and Dec(ls_premios[1]) > 0  then 
											SELECT  PP_STOCK
											INTO  :lch_validastock
											from pm_promocion
											where  pm_promocion.pp_codigo ='3'
											and pp_activo = '1';

											
											if lch_validastock = 'N' or IsNull(lch_validastock) then
												messagebox('Aviso', 'El Stock es menor al requerido para la promoción TERSIL', StopSign!)							
												return 1
											end if
									
								end if
									is_entro[3] = 'S'
							 

end choose 
			next
			

		end if
	end choose	

	lch_promactivo = '0'

////*****************************FIN PROMOCION TERSIL***********************************///



////******************************PROMOCION PORTEN **************************************///
//•	Por cada Caneca de Tersil Satinado (cod.: W1400-CA) el cliente recibe GRATIS 1 galón de tersil satinado (cod.: W1400-GL) 
//•	Por cada Galón de Tersil Satinado (cod.: W1400-GL) el cliente recibe GRATIS 1 litro de tersil satinado (cod.: W1400-CU)
//•	Por cada CANECA de Tersil Elastomérico (cod.: W1440-CA) el cliente recibe GRATIS 1 galón de tersil Elastomérico (cod.: W1440-GL)


//String ls_codant, ls_coditem
//Integer ls_prod_cantid


select pp_activo, pp_feccad
into :lch_promactivo, :ld_feccad_prom
from pm_promocion, pm_sucprom
where pm_promocion.pp_codigo = pm_sucprom.pp_codigo
and pm_promocion.pp_codigo ='7'
and su_codigo = :str_appgeninfo.sucursal
and ps_estado = '1'
and trunc(pp_feccad) >= trunc(sysdate);

ld_suma = 0
ls_prod_cantid = 0
choose case lch_promactivo
	
	case '1'							//Si la promoción se encuentra activa va a realizar la validación, caso contrario lo anula.
	
		ls_prod_cantid = 0
		ls_rucci = dw_cab.GetItemString(dw_cab.GetRow(),"cliente")
		select em_ruc, trunc(sysdate)
		into :ls_rucemp
		from pr_empre t
		where em_codigo = :str_appgeninfo.empresa;
		
		if (ls_rucci=ls_rucemp or ls_rucci = '1') then
			borra_fila_promo(1)
		end if
		
		if(ls_rucci<>ls_rucemp and ls_rucci <> '1' and is_estado = '2' and is_entro[7] <>'S'  ) then
			li_filas_detail = dw_det.rowcount()
			for li_recorre_filas = 1 to li_filas_detail 
				ls_codant = dw_det.object.codant[li_recorre_filas]			
				ls_coditem = dw_det.object.it_codigo[li_recorre_filas]
				lc_desc3 =	dw_det.getitemnumber(li_recorre_filas,"dv_desc3")
				lc_pedido = 1
				lc_stock = 0
					
				CHOOSE CASE ls_coditem
					case '21529'
						if lc_desc3 = 0 then	
							ls_prod_cantid = dw_det.object.dv_cantid[li_recorre_filas]	
						end if
							ls_premios = f_promociones(7,ls_coditem,String(ls_prod_cantid),'0','0','0','0','0','0','0','0')
							lc_pedido = Integer(ls_premios[1])
						 
								select it_codant, it_kit
								into :ls_codant, :lch_kit
								from in_item
								where it_codigo = :ls_premios[2];

								si_hay = f_dame_stock_sucursal_pos (ls_premios[2], lc_pedido, lc_stock,lch_kit,ic_recargo,ld_desc)
						
														 
								if si_hay = true and Dec(ls_premios[1]) > 0 then
									
									ll_new = dw_det.insertrow(0)
									dw_det. scrolltorow(ll_new)
									dw_det.object.codant[ll_new] = ls_codant
									dw_det.object.prodpromo[ll_new] = 'P'
									dw_det.object.pp_codigo[ll_new] = '7'
									dw_det.setcolumn('codant')
									dw_det.triggerevent('itemchanged') 
									dw_det.object.dv_cantid[ll_new] = Dec(ls_premios[1])
									dw_cab.setcolumn('cliente')
									dw_cab.setfocus( )
								elseif si_hay = false and Dec(ls_premios[1]) > 0 then
									
											SELECT  PP_STOCK
											INTO  :lch_validastock
											from pm_promocion
											where  pm_promocion.pp_codigo ='7'
											and pp_activo = '1';

											
											if lch_validastock = 'N' or IsNull(lch_validastock) then
													messagebox('Aviso', 'El Stock es menor al requerido para la promoción PORTEN', StopSign!)							
													return 1
											end if
									
							
								end if
								
								select it_codant, it_kit
								into :ls_codant, :lch_kit
								from in_item
								where it_codigo = :ls_premios[3];

								si_hay = f_dame_stock_sucursal_pos (ls_premios[3], lc_pedido, lc_stock,lch_kit,ic_recargo,ld_desc)
						
														 
								if si_hay = true and Dec(ls_premios[1]) > 0 then
									
									ll_new = dw_det.insertrow(0)
									dw_det. scrolltorow(ll_new)
									dw_det.object.codant[ll_new] = ls_codant
									dw_det.object.prodpromo[ll_new] = 'P'
									dw_det.object.pp_codigo[ll_new] = '7'
									dw_det.setcolumn('codant')
									dw_det.triggerevent('itemchanged') 
									dw_det.object.dv_cantid[ll_new] = Dec(ls_premios[1])
									dw_cab.setcolumn('cliente')
									dw_cab.setfocus( )
								elseif si_hay = false and Dec(ls_premios[1]) > 0  then 
											SELECT  PP_STOCK
											INTO  :lch_validastock
											from pm_promocion
											where  pm_promocion.pp_codigo ='7'
											and pp_activo = '1';
											
									if lch_validastock = 'N' or IsNull(lch_validastock) then
											messagebox('Aviso', 'El Stock es menor al requerido para la promoción PORTEN', StopSign!)							
											return 1
									end if
									
								end if
								is_entro[7] = 'S'
							 

			end choose
			next
			

		end if
	end choose	

	lch_promactivo = '0'

////*****************************FIN PROMOCION PORTEN***********************************///



////******************************PROMOCION PORCELANATO **************************************///
//Por la compra de 10 cajas de cualquiera de los códigos de abajo, se regalen 3 bondex (cod 2015-25k)


select pp_activo, pp_feccad
into :lch_promactivo, :ld_feccad_prom
from pm_promocion, pm_sucprom
where pm_promocion.pp_codigo = pm_sucprom.pp_codigo
and pm_promocion.pp_codigo ='4'
and su_codigo = :str_appgeninfo.sucursal
and ps_estado = '1'
and trunc(pp_feccad) >= trunc(sysdate);


ld_suma = 0
ls_prod_cantid =0
choose case lch_promactivo
	
	case '1'							//Si la promoción se encuentra activa va a realizar la validación, caso contrario lo anula.
	
		ls_prod_cantid = 0

		ls_rucci = dw_cab.GetItemString(dw_cab.GetRow(),"cliente")
		select em_ruc, trunc(sysdate)
		into :ls_rucemp
		from pr_empre t
		where em_codigo = :str_appgeninfo.empresa;
		
		if (ls_rucci=ls_rucemp or ls_rucci = '1') then
			borra_fila_promo(1)
		end if
		
		if(ls_rucci<>ls_rucemp and ls_rucci <> '1' and is_estado = '2' and is_entro[4] <>'S'  ) then
			li_filas_detail = dw_det.rowcount()
			for li_recorre_filas = 1 to li_filas_detail 
				ls_codant = dw_det.object.codant[li_recorre_filas]			
				lc_desc3 =	dw_det.getitemnumber(li_recorre_filas,"dv_desc3")
				lc_pedido = 1
				lc_stock = 0
					
				CHOOSE CASE ls_codant
					case 'PB006X6','PD226X6','PJ086X6','PJ106X6','PSC006X6','PV086X6','PZ026X6', 'PS086X6'
						if lc_desc3 = 0 then			
							ls_prod_cantid = ls_prod_cantid + dw_det.object.dv_cantid[li_recorre_filas]		
						end if
				end choose 
			next
			
			ls_premios = f_promociones(4,ls_codant,String(ls_prod_cantid),'0','0','0','0','0','0','0','0') 
			lc_pedido = Integer(ls_premios[1])
			
			select it_codigo, it_kit
			into :ls_codprod, :lch_kit
			from in_item
			where it_codant = :ls_premios[2]; 
			
			si_hay = f_dame_stock_sucursal_pos (ls_codprod, lc_pedido, lc_stock,lch_kit,ic_recargo,ld_desc)
			
									
			if si_hay = true and Dec(ls_premios[1]) > 0 then
			
				ll_new = dw_det.insertrow(0)
				dw_det. scrolltorow(ll_new)
				dw_det.object.codant[ll_new] = ls_premios[2]
				dw_det.object.prodpromo[ll_new] = 'P'
				dw_det.object.pp_codigo[ll_new] = '4'
				dw_det.setcolumn('codant')
				dw_det.triggerevent('itemchanged') 
				dw_det.object.dv_cantid[ll_new] = Dec(ls_premios[1])
				dw_cab.setcolumn('cliente')
				dw_cab.setfocus( )
			elseif si_hay = false and Dec(ls_premios[1]) > 0 then
						SELECT  PP_STOCK
						INTO  :lch_validastock
						from pm_promocion
						where  pm_promocion.pp_codigo ='4'
						and pp_activo = '1';

								
						if lch_validastock = 'N' or IsNull(lch_validastock) then
								messagebox('Aviso', 'El Stock es menor al requerido para la promoción PORCELANATO', StopSign!)							
								return 1
						end if
			
			end if
				is_entro[4] = 'S'


		end if
	end choose	

 	lch_promactivo = '0'

//********************** PROMO PERMASEAL ENTREGA PREMIOS A PARTIR DE COMPRA DE  2 CANECAS PERMASEAL************ /

select pp_activo, pp_feccad
into :lch_promactivo, :ld_feccad_prom
from pm_promocion, pm_sucprom
where pm_promocion.pp_codigo = pm_sucprom.pp_codigo
and pm_promocion.pp_codigo ='5'
and su_codigo = :str_appgeninfo.sucursal
and ps_estado = '1'
and trunc(pp_feccad) >= trunc(sysdate);

ld_suma = 0
ls_prod_cantid = 0
choose case lch_promactivo
	
	case '1'							//Si la promoción se encuentra activa va a realizar la validación, caso contrario lo anula.
	ls_prod_cantid = 0

		ls_rucci = dw_cab.GetItemString(dw_cab.GetRow(),"cliente")
		select em_ruc, trunc(sysdate)
		into :ls_rucemp
		from pr_empre t
		where em_codigo = :str_appgeninfo.empresa;
		
		if (ls_rucci=ls_rucemp or ls_rucci = '1') then
			borra_fila_promo(1)
		end if
		
		if(ls_rucci<>ls_rucemp and ls_rucci <> '1' and is_estado = '2' and is_entro[5] <>'S'  ) then
			li_filas_detail = dw_det.rowcount()
			for li_recorre_filas = 1 to li_filas_detail 
				ls_codant = dw_det.object.codant[li_recorre_filas]			
				lc_desc3 =	dw_det.getitemnumber(li_recorre_filas,"dv_desc3")
				lc_pedido = 1
				lc_stock = 0
					
				CHOOSE CASE ls_codant
					case  'W1150-CA','W1160-CA'
							if lc_desc3 = 0 then			
								ls_prod_cantid = ls_prod_cantid + dw_det.object.dv_cantid[li_recorre_filas]
							end if
					end choose 
			next
					
						ls_premios = f_promociones(5,ls_codant,String(ls_prod_cantid),'0','0','0','0','0','0','0','0')
						lc_pedido = Integer(ls_premios[1])
						
								select it_codigo, it_kit
								into :ls_codprod, :lch_kit
								from in_item
								where it_codant = :ls_premios[2];

								si_hay = f_dame_stock_sucursal_pos (ls_codprod, lc_pedido, lc_stock,lch_kit,ic_recargo,ld_desc)
						
														
								if si_hay = true  and Dec(ls_premios[1]) > 0   then
					
									ll_new = dw_det.insertrow(0)
									dw_det. scrolltorow(ll_new)
									dw_det.object.codant[ll_new] = ls_premios[2]
									dw_det.object.prodpromo[ll_new] = 'P'
									dw_det.object.pp_codigo[ll_new] = '5'
									dw_det.setcolumn('codant')
									dw_det.triggerevent('itemchanged') 
									dw_det.object.dv_cantid[ll_new] = Dec(ls_premios[1])
									dw_cab.setcolumn('cliente')
									dw_cab.setfocus( )
								elseif si_hay = false and Dec(ls_premios[1]) > 0  then 
									SELECT  PP_STOCK
									INTO  :lch_validastock
									from pm_promocion
									where  pm_promocion.pp_codigo ='5'
									and pp_activo = '1';
			
											
									if lch_validastock = 'N' or IsNull(lch_validastock) then
										messagebox('Aviso', 'El Stock es menor al requerido para la promoción PERMASIL', StopSign!)							
										return 1
									end if
									
								end if
									is_entro[5] = 'S'

	
			
		end if
	end choose	

//***********************************************************************************************************//


//************************************************* PROMOCION QUILOSA**************************************** /
			
			select pp_activo, pp_feccad
			into :lch_promactivo, :ld_feccad_prom
			from pm_promocion, pm_sucprom
			where pm_promocion.pp_codigo = pm_sucprom.pp_codigo
			and pm_promocion.pp_codigo ='8'
			and su_codigo = :str_appgeninfo.sucursal
			and ps_estado = '1'
			and trunc(pp_feccad) >= trunc(sysdate);
			
			String ls_itcod[]
			long li_i
												
			
			ld_suma = 0
			ls_prod_cantid = 0
			choose case lch_promactivo
				
				case '1'							//Si la promoción se encuentra activa va a realizar la validación, caso contrario lo anula.
				ls_prod_cantid = 0
			
			
					select em_ruc, trunc(sysdate)
					into :ls_rucemp
					from pr_empre t
					where em_codigo = :str_appgeninfo.empresa;
					
								
					if (ls_rucci=ls_rucemp or ls_rucci = '1') then
						borra_fila_promo(1)
					end if
					
					if(ls_rucci<>ls_rucemp and ls_rucci <> '1' and is_estado = '2' and is_entro[8] <>'S'  ) then
						li_filas_detail = dw_det.rowcount()
						for li_recorre_filas = 1 to li_filas_detail 
							ls_codant = dw_det.object.codant[li_recorre_filas]			
							ls_coditem =dw_det.object.it_codigo[li_recorre_filas]	
							lc_desc3 =	dw_det.getitemnumber(li_recorre_filas,"dv_desc3")
							lc_pedido = 1
							lc_stock = 0
							
							
						CHOOSE CASE ls_coditem 

								case '36035','36036','36038','36039'
										if lc_desc3 = 0 then								
											ls_prod_cantid = ls_prod_cantid + dw_det.object.dv_cantid[li_recorre_filas]		
										end if
								end choose 
						next
								
									ls_premios = f_promociones(8,ls_coditem,String(ls_prod_cantid),'0','0','0','0','0','0','0','0')
									lc_pedido = Integer(ls_premios[1])
										
									if lc_pedido > 0 then									
												dw_cant_prodxprom.settransobject(sqlca)		
												 dw_cant_prodxprom.reset()
												ls_itcod[1] = 'Q306199'
												ls_itcod[2] = 'Q306274'
												ls_itcod[3] = 'Q306502'
												ls_itcod[4] = 'Q392970'
				
												for li_i = 1 to 4
													 dw_cant_prodxprom.insertrow(li_i)
													dw_cant_prodxprom.object.it_codant[li_i] =ls_itcod[li_i]
													dw_cant_prodxprom.object.cantprem[li_i] =lc_pedido
												next
												 is_aceptxprom = 'N' 
												dw_cab.visible = true
												dw_cant_prodxprom.visible =true
												dw_cant_prodxprom.setcolumn('cantidad')
												dw_cant_prodxprom.setfocus()
										
									end if

						
					end if
				end choose	
				
				lch_promactivo = '0'
///*****************************************************************************************************************///


//************************************************* PROMOCION GATA DE LAGARTO**************************************** /
			
			select pp_activo, pp_feccad
			into :lch_promactivo, :ld_feccad_prom
			from pm_promocion, pm_sucprom
			where pm_promocion.pp_codigo = pm_sucprom.pp_codigo
			and pm_promocion.pp_codigo ='9'
			and su_codigo = :str_appgeninfo.sucursal
			and ps_estado = '1'
			and pp_pos = '1'
			and trunc(pp_feccad) >= trunc(sysdate);
			
			ld_suma = 0
			ls_prod_cantid = 0
			choose case lch_promactivo
				
				case '1'							//Si la promoción se encuentra activa va a realizar la validación, caso contrario lo anula.
				ls_prod_cantid = 0
			
			
					select em_ruc, trunc(sysdate)
					into :ls_rucemp
					from pr_empre t
					where em_codigo = :str_appgeninfo.empresa; 
					
								
					if (ls_rucci=ls_rucemp or ls_rucci = '1') then
						borra_fila_promo(1)
					end if
					
					if(ls_rucci<>ls_rucemp and ls_rucci <> '1' and is_estado = '2' and is_entro[9] <>'S'  ) then
						li_filas_detail = dw_det.rowcount()
						for li_recorre_filas = 1 to li_filas_detail 
							ls_codant = dw_det.object.codant[li_recorre_filas]			
							ls_coditem =dw_det.object.it_codigo[li_recorre_filas]		
							lc_desc3 =	dw_det.getitemnumber(li_recorre_filas,"dv_desc3") 
							lc_pedido = 1
							lc_stock = 0
							
							
						CHOOSE CASE ls_coditem 
								case '37852'
										if lc_desc3 = 0 then								
											ls_prod_cantid = ls_prod_cantid + dw_det.object.dv_cantid[li_recorre_filas]		
										end if
								end choose 
						next
								
									ls_premios = f_promociones(9,ls_coditem,String(ls_prod_cantid),'0','0','0','0','0','0','0','0')
									lc_pedido = Integer(ls_premios[1])
			
											select it_codigo, it_kit
											into :ls_codprod, :lch_kit
											from in_item
											where it_codant = :ls_premios[2];
											
											 si_hay = f_dame_stock_bodega_new(str_appgeninfo.seccion,ls_codprod,lch_kit,lc_pedido) 
									
																	
											if si_hay = true and Dec(ls_premios[1]) > 0  then
								
												ll_new = dw_det.insertrow(0)
												dw_det. scrolltorow(ll_new)
												dw_det.object.codant[ll_new] = ls_premios[2]
												dw_det.object.prodpromo[ll_new] = 'P'
												dw_det.object.pp_codigo[ll_new] = '9'
												dw_det.setcolumn('codant')
												dw_det.triggerevent('itemchanged') 
												dw_det.object.dv_cantid[ll_new] = Dec(ls_premios[1])
												dw_cab.setcolumn('cliente')
												dw_cab.setfocus( )
									
											elseif si_hay = false and Dec(ls_premios[1]) > 0  then 
												SELECT  PP_STOCK
												INTO  :lch_validastock
												from pm_promocion
												where  pm_promocion.pp_codigo ='9'
												and pp_activo = '1';
			
											
												if lch_validastock = 'N' or IsNull(lch_validastock) then
													messagebox('Aviso', 'El Stock es menor al requerido para la promoción GATOS DE LAGARTO', StopSign!)							
													return 1
												end if
											end if
												is_entro[9] = 'S' 
										 
						
					end if
				end choose	

				lch_promactivo = '0'
			
///*****************************************************************************************************************///



//********************** PROMO LLEVATE TU REGALO AUTOMOTRIZ************************ /

select pp_activo, pp_feccad
into :lch_promactivo, :ld_feccad_prom
from pm_promocion, pm_sucprom
where pm_promocion.pp_codigo = pm_sucprom.pp_codigo
and pm_promocion.pp_codigo ='11'
and su_codigo = :str_appgeninfo.sucursal
and ps_estado = '1'
and trunc(pp_feccad) >= trunc(sysdate);

ld_suma = 0


choose case lch_promactivo
	
	case '1'							//Si la promoción se encuentra activa va a realizar la validación, caso contrario lo anula.
	ls_prod_cantid = 0

		ls_rucci = dw_cab.GetItemString(dw_cab.GetRow(),"cliente")
		select em_ruc, trunc(sysdate)
		into :ls_rucemp
		from pr_empre t
		where em_codigo = :str_appgeninfo.empresa;
		
		if (ls_rucci=ls_rucemp or ls_rucci = '1') then
			borra_fila_promo(1)
		end if
		
		if(ls_rucci<>ls_rucemp and ls_rucci <> '1' and is_estado = '2' and is_entro[11] <>'S'  ) then
			li_filas_detail = dw_det.rowcount()
			for li_recorre_filas = 1 to li_filas_detail 
				ls_codant = dw_det.object.codant[li_recorre_filas]	
				ls_fbcodigo = dw_det.object.fb_codigo[li_recorre_filas]	
				lc_desc3 =	dw_det.getitemnumber(li_recorre_filas,"dv_desc3") 
	
				lc_pedido = 1
				lc_stock = 0
					
				CHOOSE CASE ls_fbcodigo
					case  '201','313','358','259'
						if lc_desc3 = 0 then
									ld_cantidad = dw_det.getitemnumber(li_recorre_filas,"desc3")
									ld_suma = ld_suma + ld_cantidad         
						end if
//							ls_prod_cantid = ls_prod_cantid + dw_det.object.dv_cantid[li_recorre_filas]		
					end choose 
			next
					
						ls_premios = f_promociones(11,ls_codant,String(ld_suma),'0','0','0','0','0','0','0','0')
						lc_pedido = Integer(ls_premios[1])
						
								select it_codigo, it_kit
								into :ls_codprod, :lch_kit
								from in_item
								where it_codant = :ls_premios[2];

								si_hay = f_dame_stock_sucursal_pos (ls_codprod, lc_pedido, lc_stock,lch_kit,ic_recargo,ld_desc)
						
														
								if si_hay = true  and Dec(ls_premios[1]) > 0  and (ls_premios[2] <> '' and not IsNull(ls_premios[2]))   then
					
									ll_new = dw_det.insertrow(0)
									dw_det. scrolltorow(ll_new)
									dw_det.object.codant[ll_new] = ls_premios[2]
									dw_det.object.prodpromo[ll_new] = 'P'
									dw_det.object.pp_codigo[ll_new] = '11'
									dw_det.setcolumn('codant')
									dw_det.triggerevent('itemchanged') 
									dw_det.object.dv_cantid[ll_new] = Dec(ls_premios[1])
									dw_cab.setcolumn('cliente')
									dw_cab.setfocus( )
								elseif si_hay = false  and Dec(ls_premios[1]) > 0  and (ls_premios[2] <> '' and not IsNull(ls_premios[2]))   then 
									SELECT  PP_STOCK
									INTO  :lch_validastock
									from pm_promocion
									where  pm_promocion.pp_codigo ='11'
									and pp_activo = '1';
			
											
									if lch_validastock = 'N' or IsNull(lch_validastock) then
											messagebox('Aviso', 'El Stock es menor al requerido para la promoción REGALO AUTOMOTRIZ', StopSign!)							
											return 1
									end if
								end if
								is_entro[11] = 'S'
								
	
			
		end if
	end choose	

//***********************************************************************************************************//


//************************************************* PROMOCION ANIVERSARIO PINTULAC**************************************** /
			
			select pp_activo, pp_feccad
			into :lch_promactivo, :ld_feccad_prom
			from pm_promocion, pm_sucprom
			where pm_promocion.pp_codigo = pm_sucprom.pp_codigo
			and pm_promocion.pp_codigo ='12'
			and su_codigo = :str_appgeninfo.sucursal
			and ps_estado = '1'
			and trunc(pp_feccad) >= trunc(sysdate);
			
			ld_suma = 0
			
			choose case lch_promactivo
				
				case '1'							//Si la promoción se encuentra activa va a realizar la validación, caso contrario lo anula.
				ls_prod_cantid = 0
			
			
					select em_ruc, trunc(sysdate)
					into :ls_rucemp
					from pr_empre t
					where em_codigo = :str_appgeninfo.empresa;
					
								
					if (ls_rucci=ls_rucemp or ls_rucci = '1') then
						borra_fila_promo(1)
					end if
					
					if(ls_rucci<>ls_rucemp and ls_rucci <> '1' and is_estado = '2' and is_entro[12] <>'S'  ) then
						li_filas_detail = dw_det.rowcount()
						for li_recorre_filas = 1 to li_filas_detail 
							ls_codant = dw_det.object.codant[li_recorre_filas]			
							ls_coditem =dw_det.object.it_codigo[li_recorre_filas]			
							ls_igcodigo = dw_det.object.ig_codigo[li_recorre_filas]
							lc_desc3 =	dw_det.getitemnumber(li_recorre_filas,"dv_desc3") 
							lc_pedido = 1
							lc_stock = 0
						 
							//	ls_mrcodigo = dw_det.object.mr_codigo[li_recorre_filas]
								if ls_igcodigo = '41' and lc_desc3 = 0 then  
									ld_cantidad = dw_det.getitemnumber(li_recorre_filas,"desc3")
									ld_suma = ld_suma + ld_cantidad         
								end if
							next
							
							
									ls_premios = f_promociones(12,ls_coditem,String(ld_suma),'0','0','0','0','0','0','0','0')
									lc_pedido = Integer(ls_premios[1])
									
									if lc_pedido > 0 then									
											
								//1. Por la compra de $1000 en productos Monto (antes de IVA) el cliente puede escoger si se lleva gratis el PHI-0260 o PAY-115																
								//2. Por la compra de $500 en productos Monto (antes de IVA) el cliente puede escoger si se lleva gratis el DW024-B3 KAP4-337							
								//3. Por la compra de $300 en productos Monto (antes de IVA) el cliente puede escoger si se lleva gratis el BR8702 o El juego de herramientas que es la suma de los siguientes códigos KD-90204 + KD-85114 + KD-10201							
							
							
											CHOOSE CASE lc_pedido
												CASE 1
													dw_cantitem_gen.settransobject(sqlca)		
													 dw_cantitem_gen.reset()
													ls_itcod[1] = 'BR8702'
													ls_itcod[2] = 'JUEGO HERRAMIENTAS'
													ls_itcod[3] = '1'
 
												
												CASE 2
													dw_cantitem_gen.settransobject(sqlca)		
													dw_cantitem_gen.reset()
													ls_itcod[1] = 'DWD024-B3'
													ls_itcod[2] = 'KAP4-337'
													ls_itcod[3] = '0'
													
												CASE 3

													dw_cantitem_gen.settransobject(sqlca)		
													dw_cantitem_gen.reset()
													ls_itcod[1] = 'PHI-0260'
													ls_itcod[2] = 'PAY-115'
													ls_itcod[3] ='0'

										END CHOOSE
								
												for li_i = 1 to 2
													 dw_cantitem_gen.insertrow(li_i)
													dw_cantitem_gen.object.it_codant[li_i] =ls_itcod[li_i]
													dw_cantitem_gen.object.cantprem[li_i] =lc_pedido
													dw_cantitem_gen.object.amplifi[2] = Integer(ls_itcod[3])
												next
												 is_accespromgen = 'N' 
												dw_cab.visible = true
												dw_cantitem_gen.visible =true
												//dw_cantitem_gen.setcolumn('cantidad')
												//dw_cantitem_gen.setfocus()
										
									end if
								is_entro[11] = 'S'
						
					end if
				end choose	
				
				lch_promactivo = '0'
///*****************************************************************************************************************///




////************************PROMOCION DEWALT************************************///
////Promoción que permite ingresar items de Camiseta Dewalt cuando cumple los requisitos de compra para productos DURATEX --- POR MARCA
select pp_activo, pp_feccad
into :lch_promactivo, :ld_feccad_prom
from pm_promocion, pm_sucprom
where pm_promocion.pp_codigo = pm_sucprom.pp_codigo
and pm_promocion.pp_codigo ='13'
and su_codigo = :str_appgeninfo.sucursal
and ps_estado = '1'
and trunc(pp_feccad) >= trunc(sysdate);
ld_suma = 0
ls_prod_cantid = 0

choose case lch_promactivo  
	
	case '1'							//Si la promoción se encuentra activa va a realizar la validación, caso contrario lo anula.
	
		SELECT  PS_ESTADO
		INTO  :lch_sucactivo
		FROM  PM_SUCPROM
	     WHERE PM_SUCPROM.PP_CODIGO = '13'
		AND PM_SUCPROM.SU_CODIGO = :str_appgeninfo.sucursal
		and trunc(PS_FECCAD) >= trunc(sysdate);

		choose case lch_sucactivo	////Verifica si la sucursal participa en la promoción caso contrario no entra
			case '1'
	
						ls_rucci = dw_cab.GetItemString(dw_cab.GetRow(),"cliente")
						select em_ruc, trunc(sysdate)
						into :ls_rucemp
						from pr_empre t
						where em_codigo = :str_appgeninfo.empresa;
						
						if (ls_rucci=ls_rucemp or ls_rucci = '1') then
						
						
							borra_fila_promo(1)
						end if
						
						if(ls_rucci<>ls_rucemp and ls_rucci <> '1' and is_estado = '2' and is_entro[13] <>'S'  ) then
						
							li_filas_detail = dw_det.rowcount()
							for li_recorre_filas = 1 to li_filas_detail 
								ls_mrcodigo = dw_det.object.mr_codigo[li_recorre_filas]
								ls_clcodprom = dw_det.object.cl_codprom[li_recorre_filas]
								lc_desc3 =	dw_det.getitemnumber(li_recorre_filas,"dv_desc3") 
								
								if ls_mrcodigo = '93' and ls_clcodprom = 'E102'  and lc_desc3 = 0 then  
									ls_prod_cantid = ls_prod_cantid + dw_det.object.dv_cantid[li_recorre_filas]		
								//	ld_cantidad = dw_det.getitemnumber(li_recorre_filas,"cc_coniva")
								//	ld_suma = ld_suma + ld_cantidad         
								end if
							next
							
							ls_premios = f_promociones(13,String(ls_prod_cantid),'0','0','0','0','0','0','0','0','0')
							li_numpremios = 1
							li_codant = 2
							lc_pedido = 1
							lc_stock = 0
					
							 
								select it_codigo, it_kit
								into :ls_codprod, :lch_kit
								from in_item
								where it_codant = :ls_premios[li_codant];
				
								si_hay = f_dame_stock_sucursal_pos (ls_codprod, lc_pedido, lc_stock,lch_kit,ic_recargo,ld_desc)
								
															
								if si_hay = true  and Dec(ls_premios[1]) > 0  and (ls_premios[2] <> '' and not IsNull(ls_premios[2]))   then
								
											ll_new = dw_det.insertrow(0)
											dw_det. scrolltorow(ll_new)
											dw_det.object.codant[ll_new] = ls_premios[2]
											dw_det.object.prodpromo[ll_new] = 'P'
											dw_det.object.pp_codigo[ll_new] = '13'
											dw_det.setcolumn('codant')
											dw_det.triggerevent('itemchanged') 
											dw_det.object.dv_cantid[ll_new] = Dec(ls_premios[1])
											dw_cab.setcolumn('cliente')
											dw_cab.setfocus( )
								elseif si_hay = false  and Dec(ls_premios[1]) > 0  and (ls_premios[2] <> '' and not IsNull(ls_premios[2]))   then 
									SELECT  PP_STOCK
									INTO  :lch_validastock
									from pm_promocion
									where  pm_promocion.pp_codigo ='13'
									and pp_activo = '1';
			
												
									if lch_validastock = 'N' or IsNull(lch_validastock) then
											messagebox('Aviso', 'El Stock es menor al requerido para la promoción DEWALT', StopSign!)							
											return 1
									end if
								end if
										
											is_entro[13] = 'S'
							end if
									//		li_codant = li_codant + 1
								
						
			end choose
	end choose	
	
	lch_promactivo = '0'
	
	
////**********************FIN PROMOCION DEWALT*********************************///




////************************PROMOCION ARTE CARTULINAS************************************///
////Promoción que permite ingresar items de Camiseta Dewalt cuando cumple los requisitos de compra para productos DURATEX --- POR MARCA
select pp_activo, pp_feccad
into :lch_promactivo, :ld_feccad_prom
from pm_promocion, pm_sucprom
where pm_promocion.pp_codigo ='15'
and pp_pos = '1'
and ps_estado = '1'
and pp_feccad >= sysdate
and pp_feccre <= sysdate;
ld_suma = 0
ls_prod_cantid = 0
 ls_itorigen=''
choose case lch_promactivo  
	
	case '1'							//Si la promoción se encuentra activa va a realizar la validación, caso contrario lo anula.
	
		SELECT  PS_ESTADO
		INTO  :lch_sucactivo
		FROM  PM_SUCPROM
	     WHERE PM_SUCPROM.PP_CODIGO = '15'
		AND PM_SUCPROM.SU_CODIGO = :str_appgeninfo.sucursal
		and trunc(PS_FECCAD) >= trunc(sysdate);

		choose case lch_sucactivo	////Verifica si la sucursal participa en la promoción caso contrario no entra
			case '1'
	
						ls_rucci = dw_cab.GetItemString(dw_cab.GetRow(),"cliente")
						select em_ruc, trunc(sysdate)
						into :ls_rucemp
						from pr_empre t
						where em_codigo = :str_appgeninfo.empresa;
						
						if (ls_rucci=ls_rucemp or ls_rucci = '1') then
							borra_fila_promo(1)
						end if
						
						if(ls_rucci<>ls_rucemp and ls_rucci <> '1' and is_estado = '2' and is_entro[15] <>'S'  ) then
						
							li_filas_detail = dw_det.rowcount()
							for li_recorre_filas = 1 to li_filas_detail 
								ls_itorigen = ''
								ls_itcodigo =  dw_det.object.it_codigo[li_recorre_filas]
								ls_mrcodigo = dw_det.object.mr_codigo[li_recorre_filas]
								ls_clcodprom = dw_det.object.cl_codprom[li_recorre_filas]
								lc_desc3 =	dw_det.getitemnumber(li_recorre_filas,"dv_desc3") 
										
								SELECT IT_CODORIGEN, IT_CODIGO
								INTO :ls_itorigen, :ls_itprom
								FROM PM_ITEMXPROM
								WHERE IT_CODORIGEN = :ls_itcodigo 
								AND PP_CODIGO = '15';
							
							
									if Not isNull(ls_itorigen) and ls_itorigen  <> '' and  lc_desc3 = 0  then  
										ls_prod_cantid = ls_prod_cantid + dw_det.object.dv_cantid[li_recorre_filas]		
									end if
						
							next
						
					
							
							ls_premios = f_promociones(15,String(ls_prod_cantid),ls_itprom,'0','0','0','0','0','0','0','0')
							
							li_numpremios = 1
							li_codant = 2
							lc_pedido = 1
							lc_stock = 0
					
							 
								select it_codigo, it_kit
								into :ls_codprod, :lch_kit
								from in_item
								where it_codant = :ls_premios[li_codant];
				
								si_hay = f_dame_stock_sucursal_pos (ls_codprod, lc_pedido, lc_stock,lch_kit,ic_recargo,ld_desc)
								
															
								if si_hay = true  and Dec(ls_premios[1]) > 0  and (ls_premios[2] <> '' and not IsNull(ls_premios[2]))   then
								
											ll_new = dw_det.insertrow(0)
											dw_det. scrolltorow(ll_new)
											dw_det.object.codant[ll_new] = ls_premios[2]
											dw_det.object.prodpromo[ll_new] = 'P'
											dw_det.object.pp_codigo[ll_new] = '15'
											dw_det.setcolumn('codant')
											dw_det.triggerevent('itemchanged') 
											dw_det.object.dv_cantid[ll_new] = Dec(ls_premios[1])
											dw_cab.setcolumn('cliente')
											dw_cab.setfocus( )
											
												
											
								elseif si_hay = false  and Dec(ls_premios[1]) > 0  and (ls_premios[2] <> '' and not IsNull(ls_premios[2]))   then 
									SELECT  PP_STOCK
									INTO  :lch_validastock
									from pm_promocion
									where  pm_promocion.pp_codigo ='15'
									and pp_activo = '1';
			
											
									if lch_validastock = 'N' or IsNull(lch_validastock) then
												messagebox('Aviso', 'El Stock es menor al requerido para la promoción DEWALT', StopSign!)							
												return 1
									end if
								end if
									
								is_entro[15] = 'S'
									//		li_codant = li_codant + 1
								
						end if
			end choose
	end choose	
	
	lch_promactivo = '0'
	
	
////************************PROMOCION ARTE CARTULINAS II************************************///
	
	////Promoción que permite ingresar items de Camiseta Dewalt cuando cumple los requisitos de compra para productos DURATEX --- POR MARCA
select pp_activo, pp_feccad
into :lch_promactivo, :ld_feccad_prom
from pm_promocion, pm_sucprom
where pm_promocion.pp_codigo ='16'
and pp_pos = '1'
and ps_estado = '1'
and pp_feccad >= sysdate
and pp_feccre <= sysdate;
ld_suma = 0
ls_prod_cantid = 0
ls_itorigen=''
choose case lch_promactivo  
	
	case '1'							//Si la promoción se encuentra activa va a realizar la validación, caso contrario lo anula.
	
		SELECT  PS_ESTADO
		INTO  :lch_sucactivo
		FROM  PM_SUCPROM
	     WHERE PM_SUCPROM.PP_CODIGO = '16'
		AND PM_SUCPROM.SU_CODIGO = :str_appgeninfo.sucursal
		and trunc(PS_FECCAD) >= trunc(sysdate);

		choose case lch_sucactivo	////Verifica si la sucursal participa en la promoción caso contrario no entra
			case '1'
	
						ls_rucci = dw_cab.GetItemString(dw_cab.GetRow(),"cliente")
						select em_ruc, trunc(sysdate)
						into :ls_rucemp
						from pr_empre t
						where em_codigo = :str_appgeninfo.empresa;
						
						if (ls_rucci=ls_rucemp or ls_rucci = '1') then
							borra_fila_promo(1)
						end if
						
						if(ls_rucci<>ls_rucemp and ls_rucci <> '1' and is_estado = '2' and is_entro[16] <>'S'  ) then
						
							li_filas_detail = dw_det.rowcount()
							for li_recorre_filas = 1 to li_filas_detail 
								
								ls_itorigen = ''
								
								ls_itcodigo =  dw_det.object.it_codigo[li_recorre_filas]
								ls_mrcodigo = dw_det.object.mr_codigo[li_recorre_filas]
								ls_clcodprom = dw_det.object.cl_codprom[li_recorre_filas]
								lc_desc3 =	dw_det.getitemnumber(li_recorre_filas,"dv_desc3") 
								
								SELECT IT_CODORIGEN, IT_CODIGO
								INTO :ls_itorigen, :ls_itprom
								FROM PM_ITEMXPROM
								WHERE IT_CODORIGEN = :ls_itcodigo 
								AND PP_CODIGO = '16';
							
							
									if Not isNull(ls_itorigen) and ls_itorigen  <> ''  and  lc_desc3 = 0  then  
										ls_prod_cantid = ls_prod_cantid + dw_det.object.dv_cantid[li_recorre_filas]		
									end if
						
							next
				
								ls_premios = f_promociones(16,String(ls_prod_cantid),ls_itprom,'0','0','0','0','0','0','0','0')
							
							li_numpremios = 1
							li_codant = 2
							lc_pedido = 1
							lc_stock = 0
					
							 
								select it_codigo, it_kit
								into :ls_codprod, :lch_kit
								from in_item
								where it_codant = :ls_premios[li_codant];
				
								si_hay = f_dame_stock_sucursal_pos (ls_codprod, lc_pedido, lc_stock,lch_kit,ic_recargo,ld_desc)
								
															
								if si_hay = true  and Dec(ls_premios[1]) > 0  and (ls_premios[2] <> '' and not IsNull(ls_premios[2]))   then
								
											ll_new = dw_det.insertrow(0)
											dw_det. scrolltorow(ll_new)
											dw_det.object.codant[ll_new] = ls_premios[2]
											dw_det.object.prodpromo[ll_new] = 'P'
											dw_det.object.pp_codigo[ll_new] = '16'
											dw_det.setcolumn('codant')
											dw_det.triggerevent('itemchanged') 
											dw_det.object.dv_cantid[ll_new] = Dec(ls_premios[1])
											dw_cab.setcolumn('cliente')
											dw_cab.setfocus( )
								elseif si_hay = false  and Dec(ls_premios[1]) > 0  and (ls_premios[2] <> '' and not IsNull(ls_premios[2]))   then 
									SELECT  PP_STOCK
									INTO  :lch_validastock
									from pm_promocion
									where  pm_promocion.pp_codigo ='16'
									and pp_activo = '1';
			
											
										if lch_validastock = 'N' or IsNull(lch_validastock) then
											messagebox('Aviso', 'El Stock es menor al requerido para la promoción DEWALT', StopSign!)							
											return 1
										end if
								end if
										
											is_entro[16] = 'S'
		
									//		li_codant = li_codant + 1
						end if	
						
			end choose
	end choose	
	
	lch_promactivo = '0'
	
	
	
////**********************FIN PROMOCION ARTE CARTULINA*********************************///




//********************** PROMOCION  PINTUCO************************ /

select pp_activo, pp_feccad
into :lch_promactivo, :ld_feccad_prom
from pm_promocion, pm_sucprom
where pm_promocion.pp_codigo = pm_sucprom.pp_codigo
and pm_promocion.pp_codigo ='19'
and su_codigo = :str_appgeninfo.sucursal
and ps_estado = '1'
and trunc(pp_feccad) >= trunc(sysdate);

ld_suma = 0


choose case lch_promactivo
	
	case '1'							//Si la promoción se encuentra activa va a realizar la validación, caso contrario lo anula.
	ls_prod_cantid = 0

		ls_rucci = dw_cab.GetItemString(dw_cab.GetRow(),"cliente")
		select em_ruc, trunc(sysdate)
		into :ls_rucemp
		from pr_empre t
		where em_codigo = :str_appgeninfo.empresa;
		
		if (ls_rucci=ls_rucemp or ls_rucci = '1') then
			borra_fila_promo(1)
		end if
		
		if(ls_rucci<>ls_rucemp and ls_rucci <> '1' and is_estado = '2' and is_entro[19] <>'S'  ) then
			li_filas_detail = dw_det.rowcount()
			for li_recorre_filas = 1 to li_filas_detail 
				ls_codant = dw_det.object.codant[li_recorre_filas]	
				ls_itcodigo = dw_det.object.it_codigo[li_recorre_filas]	
				ls_fbcodigo = dw_det.object.fb_codigo[li_recorre_filas]	
				lc_desc3 =	dw_det.getitemnumber(li_recorre_filas,"dv_desc3") 
	
				lc_pedido = 1
				lc_stock = 0
					
				
					SELECT IT_CODORIGEN, IT_CODIGO
					INTO :ls_itorigen, :ls_itprom
					FROM PM_ITEMXPROM
					WHERE IT_CODORIGEN = :ls_itcodigo 
					AND PP_CODIGO = '19';
				
				
					if Not isNull(ls_itorigen) and ls_itorigen  <> ''  and  lc_desc3 = 0  then  
									ld_cantidad = 	dw_det.getitemnumber(li_recorre_filas,"cc_coniva")
									ld_suma = ld_suma + ld_cantidad         
						end if
//							ls_prod_cantid = ls_prod_cantid + dw_det.object.dv_cantid[li_recorre_filas]		
					
			next
					
					if ld_suma >= 40 then
						ls_premios = f_promociones(19,String(ld_suma),ls_codant,'0','0','0','0','0','0','0','0')
						lc_pedido = Integer(ls_premios[1])
									
						if lc_pedido > 0 then				
								dw_itemspremios.settransobject(sqlca)		
								 dw_itemspremios.reset()
												 
								ls_itcod[1] = 'CP2'
								ls_itcod[2] = 'DCP'
								ls_itcod[3] = 'TPP'
								ls_itcod[4] = 'GPP'
							
								for li_i = 1 to 4
									
							 	SELECT IT_NOMBRE
								INTO :ls_nomitem_prom
								 FROM IN_ITEM
								 WHERE IT_CODANT = :ls_itcod[li_i];
								 
								 ls_itcod[li_i] = ls_itcod[li_i] + '/ '+ ls_nomitem_prom
								next 
							
								for li_i = 1 to 4
									 dw_itemspremios.insertrow(li_i)
									dw_itemspremios.object.it_codant[li_i] =ls_itcod[li_i]
									dw_itemspremios.object.cantprem[li_i] =lc_pedido
								//	dw_itemspremios.object.amplifi[2] = Integer(ls_itcod[4])
								next
									 is_accespromgen = 'N' 
									dw_cab.visible = true
									dw_itemspremios.visible =true
									//dw_cantitem_gen.setcolumn('cantidad')
									//dw_cantitem_gen.setfocus()
						end if
					end if
								is_entro[19] = 'S'
							
	end if
	end choose	

//***********************************************************************************************************//


////************************PROMOCION PORTEN	************************************///
	


	////Promoción que permite ingresar items de Camiseta Dewalt cuando cumple los requisitos de compra para productos DURATEX --- POR MARCA
select pp_activo, pp_feccad
into :lch_promactivo, :ld_feccad_prom
from pm_promocion, pm_sucprom
where pm_promocion.pp_codigo ='24'
and pp_pos = '1'
and ps_estado = '1'
and pp_feccad >= sysdate
and pp_feccre <= sysdate;
ld_suma = 0
ls_prod_cantid = 0
ls_itorigen=''
lc_pedido = 0
choose case lch_promactivo  
	
	case '1'							//Si la promoción se encuentra activa va a realizar la validación, caso contrario lo anula.
	
		SELECT  PS_ESTADO
		INTO  :lch_sucactivo
		FROM  PM_SUCPROM
	     WHERE PM_SUCPROM.PP_CODIGO = '24'
		AND PM_SUCPROM.SU_CODIGO = :str_appgeninfo.sucursal
		and trunc(PS_FECCAD) >= trunc(sysdate);

		choose case lch_sucactivo	////Verifica si la sucursal participa en la promoción caso contrario no entra
			case '1'
	
						ls_rucci = dw_cab.GetItemString(dw_cab.GetRow(),"cliente")
						select em_ruc, trunc(sysdate)
						into :ls_rucemp
						from pr_empre t
						where em_codigo = :str_appgeninfo.empresa;
						
						if (ls_rucci=ls_rucemp or ls_rucci = '1') then
							borra_fila_promo(1)
						end if
						
						if(ls_rucci<>ls_rucemp and ls_rucci <> '1' and is_estado = '2' and is_entro[24] <>'S'  ) then
						
							li_filas_detail = dw_det.rowcount()
							for li_recorre_filas = 1 to li_filas_detail 
								
								ls_itorigen = ''
								
								ls_itcodigo =  dw_det.object.it_codigo[li_recorre_filas]
								ls_mrcodigo = dw_det.object.mr_codigo[li_recorre_filas]
								ls_clcodprom = dw_det.object.cl_codprom[li_recorre_filas]
								lc_desc3 =	dw_det.getitemnumber(li_recorre_filas,"dv_desc3") 
								
								SELECT IT_CODORIGEN
								INTO :ls_itorigen
								FROM PM_ITEMXPROM
								WHERE IT_CODORIGEN = :ls_itcodigo 
								AND PP_CODIGO = '24';
							
							
									if Not isNull(ls_itorigen) and ls_itorigen  <> ''  and  lc_desc3 = 0  then  
										ld_cantidad = 	dw_det.getitemnumber(li_recorre_filas,"cc_coniva")
										ld_suma = ld_suma + ld_cantidad      	
									end if
						
							next
				
							if ld_suma > 0 then
								ls_premios = f_promociones(24,String(ls_prod_cantid),ls_itprom,'0','0','0','0','0','0','0','0')
							
							
								li_numpremios = 1
								li_codant = 2
								lc_pedido = Dec(ls_premios[1] )
								lc_stock = 0
							
								end if
							
							if  lc_pedido > 0 then
								
								dw_promcli_datos.visible = true
								
								dw_promcli_datos.settransobject( sqlca)
								dw_promcli_datos.retrieve(is_codcli)
							//	dw_promcli_datos.object.cod_unico[1] =String(ii_codunico)
								
								 is_accespromgen = 'N' 
								 
											
								
							end if
//								select it_codigo, it_kit
//								into :ls_codprod, :lch_kit
//								from in_item
//								where it_codant = :ls_premios[li_codant];
//				
//								si_hay = f_dame_stock_sucursal_pos (ls_codprod, lc_pedido, lc_stock,lch_kit,ic_recargo,ld_desc)
//								
//															
//								if si_hay = true  and Dec(ls_premios[1]) > 0  and (ls_premios[2] <> '' and not IsNull(ls_premios[2]))   then
//								
//											ll_new = dw_det.insertrow(0)
//											dw_det. scrolltorow(ll_new)
//											dw_det.object.codant[ll_new] = ls_premios[2]
//											dw_det.object.prodpromo[ll_new] = 'P'
//											dw_det.object.pp_codigo[ll_new] = '24'
//											dw_det.setcolumn('codant')
//											dw_det.triggerevent('itemchanged') 
//											dw_det.object.dv_cantid[ll_new] = Dec(ls_premios[1])
//											dw_cab.setcolumn('cliente')
//											dw_cab.setfocus( )
//								elseif si_hay = false  and Dec(ls_premios[1]) > 0  and (ls_premios[2] <> '' and not IsNull(ls_premios[2]))   then 
//											messagebox('Aviso', 'El Stock es menor al requerido para la promoción DEWALT', StopSign!)							
//											return 1
//								end if
//										
											is_entro[24] = 'S'
		
									//		li_codant = li_codant + 1
						end if	
						
			end choose
	end choose	
	
	lch_promactivo = '0'
	
	
	
////**********************FIN PROMOCION ARTE CARTULINA*********************************///





//PROMOCIONES EMPRESA BIGBOSS
//Estas Promociones estan generadas para la empresa bigboss el numero en el que comienzarn estas promociones es 501

////************************PROMOCION WESCO BIGBOSS I************************************///
	
////Promoción que permite regalar un galon por cada caneca de wesco en promocion en la tabla ITEMXPROM

select pp_activo, pp_feccad
into :lch_promactivo, :ld_feccad_prom
from pm_promocion, pm_sucprom
where pm_promocion.pp_codigo ='501'
and pp_pos = '1'
and ps_estado = '1'
and pp_feccad >= sysdate
and pp_feccre <= sysdate;
ld_suma = 0
ls_prod_cantid = 0
ls_itorigen=''
choose case lch_promactivo  
	
	case '1'							//Si la promoción se encuentra activa va a realizar la validación, caso contrario lo anula.
	
		SELECT  PS_ESTADO
		INTO  :lch_sucactivo
		FROM  PM_SUCPROM
	     WHERE PM_SUCPROM.PP_CODIGO = '501'
		AND PM_SUCPROM.SU_CODIGO = :str_appgeninfo.sucursal
		and trunc(PS_FECCAD) >= trunc(sysdate);

		choose case lch_sucactivo	////Verifica si la sucursal participa en la promoción caso contrario no entra
			case '1'
	
						ls_rucci = dw_cab.GetItemString(dw_cab.GetRow(),"cliente")
						select em_ruc, trunc(sysdate)
						into :ls_rucemp
						from pr_empre t
						where em_codigo = :str_appgeninfo.empresa;
						
						if (ls_rucci=ls_rucemp or ls_rucci = '1') then
							borra_fila_promo(1)
						end if
						
						if(ls_rucci<>ls_rucemp and ls_rucci <> '1' and is_estado = '2' and is_entro[501] <>'S'  ) then
						
							li_filas_detail = dw_det.rowcount()
							for li_recorre_filas = 1 to li_filas_detail 
								
								ls_itorigen = ''
								
								ls_itcodigo =  dw_det.object.it_codigo[li_recorre_filas]
								ls_mrcodigo = dw_det.object.mr_codigo[li_recorre_filas]
								ls_clcodprom = dw_det.object.cl_codprom[li_recorre_filas]
								lc_desc3 =	dw_det.getitemnumber(li_recorre_filas,"dv_desc3") 
								
								SELECT IT_CODORIGEN, IT_CODIGO
								INTO :ls_itorigen, :ls_itprom
								FROM PM_ITEMXPROM
								WHERE IT_CODORIGEN = :ls_itcodigo 
								AND PP_CODIGO = '501';
							
							
									if Not isNull(ls_itorigen) and ls_itorigen  <> ''  and  lc_desc3 = 0  then  
										ls_prod_cantid = ls_prod_cantid + dw_det.object.dv_cantid[li_recorre_filas]		
									end if
						
							next
				
								ls_premios = f_promociones(501,String(ls_prod_cantid),ls_itprom,'0','0','0','0','0','0','0','0')
							
							li_numpremios = 1
							li_codant = 2
							lc_pedido = 1
							lc_stock = 0
					
							 
								select it_codigo, it_kit
								into :ls_codprod, :lch_kit
								from in_item
								where it_codant = :ls_premios[li_codant];
				
								si_hay = f_dame_stock_sucursal_pos (ls_codprod, lc_pedido, lc_stock,lch_kit,ic_recargo,ld_desc)
								
															
								if si_hay = true  and Dec(ls_premios[1]) > 0  and (ls_premios[2] <> '' and not IsNull(ls_premios[2]))   then
								
											ll_new = dw_det.insertrow(0)
											dw_det. scrolltorow(ll_new)
											dw_det.object.codant[ll_new] = ls_premios[2]
											dw_det.object.prodpromo[ll_new] = 'P'
											dw_det.object.pp_codigo[ll_new] = '501'
											dw_det.setcolumn('codant')
											dw_det.triggerevent('itemchanged') 
											dw_det.object.dv_cantid[ll_new] = Dec(ls_premios[1])
											dw_cab.setcolumn('cliente')
											dw_cab.setfocus( )
								elseif si_hay = false  and Dec(ls_premios[1]) > 0  and (ls_premios[2] <> '' and not IsNull(ls_premios[2]))   then 
											messagebox('Aviso', 'El Stock es menor al requerido para la promoción WESCO', StopSign!)							
											return 1
								end if
										
											is_entro[501] = 'S'
		
									//		li_codant = li_codant + 1
						end if	
						
			end choose
	end choose	
	
	lch_promactivo = '0'
	
	
	
	////************************PROMOCION WESCO BIGBOSS II************************************///
	
	////Promoción que permite regalar un galon por cada caneca de wesco en promocion en la tabla ITEMXPROM

select pp_activo, pp_feccad
into :lch_promactivo, :ld_feccad_prom
from pm_promocion, pm_sucprom
where pm_promocion.pp_codigo ='502'
and pp_pos = '1'
and ps_estado = '1'
and pp_feccad >= sysdate
and pp_feccre <= sysdate;
ld_suma = 0
ls_prod_cantid = 0
ls_itorigen=''
choose case lch_promactivo  
	
	case '1'							//Si la promoción se encuentra activa va a realizar la validación, caso contrario lo anula.
	
		SELECT  PS_ESTADO
		INTO  :lch_sucactivo
		FROM  PM_SUCPROM
	     WHERE PM_SUCPROM.PP_CODIGO = '502'
		AND PM_SUCPROM.SU_CODIGO = :str_appgeninfo.sucursal
		and trunc(PS_FECCAD) >= trunc(sysdate);

		choose case lch_sucactivo	////Verifica si la sucursal participa en la promoción caso contrario no entra
			case '1'
	
						ls_rucci = dw_cab.GetItemString(dw_cab.GetRow(),"cliente")
						select em_ruc, trunc(sysdate)
						into :ls_rucemp
						from pr_empre t
						where em_codigo = :str_appgeninfo.empresa;
						
						if (ls_rucci=ls_rucemp or ls_rucci = '1') then
							borra_fila_promo(1)
						end if
						
						if(ls_rucci<>ls_rucemp and ls_rucci <> '1' and is_estado = '2' and is_entro[502] <>'S'  ) then
						
							li_filas_detail = dw_det.rowcount()
							for li_recorre_filas = 1 to li_filas_detail 
								
								ls_itorigen = ''
								
								ls_itcodigo =  dw_det.object.it_codigo[li_recorre_filas]
								ls_mrcodigo = dw_det.object.mr_codigo[li_recorre_filas]
								ls_clcodprom = dw_det.object.cl_codprom[li_recorre_filas]
								lc_desc3 =	dw_det.getitemnumber(li_recorre_filas,"dv_desc3") 
								
								SELECT IT_CODORIGEN, IT_CODIGO
								INTO :ls_itorigen, :ls_itprom
								FROM PM_ITEMXPROM
								WHERE IT_CODORIGEN = :ls_itcodigo 
								AND PP_CODIGO = '502';
							
							
									if Not isNull(ls_itorigen) and ls_itorigen  <> ''  and  lc_desc3 = 0  then  
										ls_prod_cantid = ls_prod_cantid + dw_det.object.dv_cantid[li_recorre_filas]		
									end if
						
							next
				
								ls_premios = f_promociones(502,String(ls_prod_cantid),ls_itprom,'0','0','0','0','0','0','0','0')
							
							li_numpremios = 1
							li_codant = 2
							lc_pedido = 1
							lc_stock = 0
					
							 
								select it_codigo, it_kit
								into :ls_codprod, :lch_kit
								from in_item
								where it_codant = :ls_premios[li_codant];
				
								si_hay = f_dame_stock_sucursal_pos (ls_codprod, lc_pedido, lc_stock,lch_kit,ic_recargo,ld_desc)
								
															
								if si_hay = true  and Dec(ls_premios[1]) > 0  and (ls_premios[2] <> '' and not IsNull(ls_premios[2]))   then
								
											ll_new = dw_det.insertrow(0)
											dw_det. scrolltorow(ll_new)
											dw_det.object.codant[ll_new] = ls_premios[2]
											dw_det.object.prodpromo[ll_new] = 'P'
											dw_det.object.pp_codigo[ll_new] = '502'
											dw_det.setcolumn('codant')
											dw_det.triggerevent('itemchanged') 
											dw_det.object.dv_cantid[ll_new] = Dec(ls_premios[1])
											dw_cab.setcolumn('cliente')
											dw_cab.setfocus( )
								elseif si_hay = false  and Dec(ls_premios[1]) > 0  and (ls_premios[2] <> '' and not IsNull(ls_premios[2]))   then 
											messagebox('Aviso', 'El Stock es menor al requerido para la promoción WESCO', StopSign!)							
											return 1
								end if
										
											is_entro[502] = 'S'
		
									//		li_codant = li_codant + 1
						end if	
						
			end choose
	end choose	
	
	lch_promactivo = '0'
	
	////************************PROMOCION WESCO BIGBOSS III************************************///
	
	////Promoción que permite regalar un galon por cada caneca de wesco en promocion en la tabla ITEMXPROM

select pp_activo, pp_feccad
into :lch_promactivo, :ld_feccad_prom
from pm_promocion, pm_sucprom
where pm_promocion.pp_codigo ='503'
and pp_pos = '1'
and ps_estado = '1'
and pp_feccad >= sysdate
and pp_feccre <= sysdate;
ld_suma = 0
ls_prod_cantid = 0
ls_itorigen=''
choose case lch_promactivo  
	
	case '1'							//Si la promoción se encuentra activa va a realizar la validación, caso contrario lo anula.
	
		SELECT  PS_ESTADO
		INTO  :lch_sucactivo
		FROM  PM_SUCPROM
	     WHERE PM_SUCPROM.PP_CODIGO = '503'
		AND PM_SUCPROM.SU_CODIGO = :str_appgeninfo.sucursal
		and trunc(PS_FECCAD) >= trunc(sysdate);

		choose case lch_sucactivo	////Verifica si la sucursal participa en la promoción caso contrario no entra
			case '1'
	
						ls_rucci = dw_cab.GetItemString(dw_cab.GetRow(),"cliente")
						select em_ruc, trunc(sysdate)
						into :ls_rucemp
						from pr_empre t
						where em_codigo = :str_appgeninfo.empresa;
						
						if (ls_rucci=ls_rucemp or ls_rucci = '1') then
							borra_fila_promo(1)
						end if
						
						if(ls_rucci<>ls_rucemp and ls_rucci <> '1' and is_estado = '2' and is_entro[503] <>'S'  ) then
						
							li_filas_detail = dw_det.rowcount()
							for li_recorre_filas = 1 to li_filas_detail 
								
								ls_itorigen = ''
								
								ls_itcodigo =  dw_det.object.it_codigo[li_recorre_filas]
								ls_mrcodigo = dw_det.object.mr_codigo[li_recorre_filas]
								ls_clcodprom = dw_det.object.cl_codprom[li_recorre_filas]
								lc_desc3 =	dw_det.getitemnumber(li_recorre_filas,"dv_desc3") 
					
								
								SELECT IT_CODORIGEN, IT_CODIGO
								INTO :ls_itorigen, :ls_itprom
								FROM PM_ITEMXPROM
								WHERE IT_CODORIGEN = :ls_itcodigo 
								AND PP_CODIGO = '503';
							
							
									if Not isNull(ls_itorigen) and ls_itorigen  <> ''  and  lc_desc3 = 0  then  
										ls_prod_cantid = ls_prod_cantid + dw_det.object.dv_cantid[li_recorre_filas]		
									end if
						
							next
				
								ls_premios = f_promociones(503,String(ls_prod_cantid),ls_itprom,'0','0','0','0','0','0','0','0')
							
							li_numpremios = 1
							li_codant = 2
							lc_pedido = 1
							lc_stock = 0
					
							 
								select it_codigo, it_kit
								into :ls_codprod, :lch_kit
								from in_item
								where it_codant = :ls_premios[li_codant];
				
								si_hay = f_dame_stock_sucursal_pos (ls_codprod, lc_pedido, lc_stock,lch_kit,ic_recargo,ld_desc)
								
															
								if si_hay = true  and Dec(ls_premios[1]) > 0  and (ls_premios[2] <> '' and not IsNull(ls_premios[2]))   then
								
											ll_new = dw_det.insertrow(0)
											dw_det. scrolltorow(ll_new)
											dw_det.object.codant[ll_new] = ls_premios[2]
											dw_det.object.prodpromo[ll_new] = 'P'
											dw_det.object.pp_codigo[ll_new] = '503'
											dw_det.setcolumn('codant')
											dw_det.triggerevent('itemchanged') 
											dw_det.object.dv_cantid[ll_new] = Dec(ls_premios[1])
											dw_cab.setcolumn('cliente')
											dw_cab.setfocus( )
								elseif si_hay = false  and Dec(ls_premios[1]) > 0  and (ls_premios[2] <> '' and not IsNull(ls_premios[2]))   then 
											messagebox('Aviso', 'El Stock es menor al requerido para la promoción WESCO', StopSign!)							
											return 1
								end if
										
											is_entro[503] = 'S'
		
									//		li_codant = li_codant + 1
						end if	
						
			end choose
	end choose	
	
	lch_promactivo = '0'
	


////**********************FIN PROMOCION WESCO BIGBOSS*********************************///



////************************PROMOCION DEWALT PARA BIGBOSS***********************************///
////Promoción que permite ingresar items de Camiseta Dewalt cuando cumple los requisitos de compra para productos DURATEX --- POR MARCA
select pp_activo, pp_feccad
into :lch_promactivo, :ld_feccad_prom
from pm_promocion, pm_sucprom
where pm_promocion.pp_codigo = pm_sucprom.pp_codigo
and pm_promocion.pp_codigo ='504'
and su_codigo = :str_appgeninfo.sucursal
and ps_estado = '1'
and trunc(pp_feccad) >= trunc(sysdate);
ld_suma = 0
ls_prod_cantid = 0

choose case lch_promactivo  
	
	case '1'							//Si la promoción se encuentra activa va a realizar la validación, caso contrario lo anula.
	
		SELECT  PS_ESTADO
		INTO  :lch_sucactivo
		FROM  PM_SUCPROM
	     WHERE PM_SUCPROM.PP_CODIGO = '504'
		AND PM_SUCPROM.SU_CODIGO = :str_appgeninfo.sucursal
		and trunc(PS_FECCAD) >= trunc(sysdate);

		choose case lch_sucactivo	////Verifica si la sucursal participa en la promoción caso contrario no entra
			case '1'
	
						ls_rucci = dw_cab.GetItemString(dw_cab.GetRow(),"cliente")
						select em_ruc, trunc(sysdate)
						into :ls_rucemp
						from pr_empre t
						where em_codigo = :str_appgeninfo.empresa;
						
						if (ls_rucci=ls_rucemp or ls_rucci = '1') then
							borra_fila_promo(1)
						end if
						
						if(ls_rucci<>ls_rucemp and ls_rucci <> '1' and is_estado = '2' and is_entro[504] <>'S'  ) then
						
							li_filas_detail = dw_det.rowcount()
							for li_recorre_filas = 1 to li_filas_detail 
								
								ls_itorigen = ''
								
								ls_itcodigo =  dw_det.object.it_codigo[li_recorre_filas]
								ls_mrcodigo = dw_det.object.mr_codigo[li_recorre_filas]
								ls_clcodprom = dw_det.object.cl_codprom[li_recorre_filas]
								lc_desc3 =	dw_det.getitemnumber(li_recorre_filas,"dv_desc3") 
								
								SELECT IT_CODORIGEN, IT_CODIGO
								INTO :ls_itorigen, :ls_itprom
								FROM PM_ITEMXPROM
								WHERE IT_CODORIGEN = :ls_itcodigo 
								AND PP_CODIGO = '504';
								
										if Not isNull(ls_itorigen) and ls_itorigen  <> ''  and  lc_desc3 = 0  then  
										ls_prod_cantid = ls_prod_cantid + dw_det.object.dv_cantid[li_recorre_filas]		
									end if
						
							next
				
							ls_premios = f_promociones(504,String(ls_prod_cantid),ls_itprom,'0','0','0','0','0','0','0','0')
							li_numpremios = 1
							li_codant = 2
							lc_pedido = 1
							lc_stock = 0
					
							 
								select it_codigo, it_kit
								into :ls_codprod, :lch_kit
								from in_item
								where it_codant = :ls_premios[li_codant];
				
								si_hay = f_dame_stock_sucursal_pos (ls_codprod, lc_pedido, lc_stock,lch_kit,ic_recargo,ld_desc)
								
															
								if si_hay = true  and Dec(ls_premios[1]) > 0  and (ls_premios[2] <> '' and not IsNull(ls_premios[2]))   then
								
											ll_new = dw_det.insertrow(0)
											dw_det. scrolltorow(ll_new)
											dw_det.object.codant[ll_new] = ls_premios[2]
											dw_det.object.prodpromo[ll_new] = 'P'
											dw_det.object.pp_codigo[ll_new] = '504'
											dw_det.setcolumn('codant')
											dw_det.triggerevent('itemchanged') 
											dw_det.object.dv_cantid[ll_new] = Dec(ls_premios[1])
											dw_cab.setcolumn('cliente')
											dw_cab.setfocus( )
								elseif si_hay = false  and Dec(ls_premios[1]) > 0  and (ls_premios[2] <> '' and not IsNull(ls_premios[2]))   then 
											messagebox('Aviso', 'El Stock es menor al requerido para la promoción DEWALT', StopSign!)							
											return 1
								end if
										
											is_entro[504] = 'S'
							end if
									//		li_codant = li_codant + 1
								
						
			end choose
	end choose	
	
	lch_promactivo = '0'
	
	
////**********************FIN PROMOCION DEWALT BIGBOSS*********************************///



////************************PROMOCION PERMASIL PARA BIGBOSS***********************************///
////Promoción que permite ingresar items de Camiseta Dewalt cuando cumple los requisitos de compra para productos DURATEX --- POR MARCA
select pp_activo, pp_feccad
into :lch_promactivo, :ld_feccad_prom
from pm_promocion, pm_sucprom
where pm_promocion.pp_codigo = pm_sucprom.pp_codigo
and pm_promocion.pp_codigo ='505'
and su_codigo = :str_appgeninfo.sucursal
and ps_estado = '1'
and trunc(pp_feccad) >= trunc(sysdate);
ld_suma = 0
ls_prod_cantid = 0

choose case lch_promactivo  
	
	case '1'							//Si la promoción se encuentra activa va a realizar la validación, caso contrario lo anula.
	
		SELECT  PS_ESTADO
		INTO  :lch_sucactivo
		FROM  PM_SUCPROM
	     WHERE PM_SUCPROM.PP_CODIGO = '505'
		AND PM_SUCPROM.SU_CODIGO = :str_appgeninfo.sucursal
		and trunc(PS_FECCAD) >= trunc(sysdate);

		choose case lch_sucactivo	////Verifica si la sucursal participa en la promoción caso contrario no entra
			case '1'
	
						ls_rucci = dw_cab.GetItemString(dw_cab.GetRow(),"cliente")
						select em_ruc, trunc(sysdate)
						into :ls_rucemp
						from pr_empre t
						where em_codigo = :str_appgeninfo.empresa;
						
						if (ls_rucci=ls_rucemp or ls_rucci = '1') then
							borra_fila_promo(1)
						end if
						
						if(ls_rucci<>ls_rucemp and ls_rucci <> '1' and is_estado = '2' and is_entro[505] <>'S'  ) then
						
							li_filas_detail = dw_det.rowcount()
							for li_recorre_filas = 1 to li_filas_detail 
								
								ls_itorigen = '' 
								
								ls_itcodigo =  dw_det.object.it_codigo[li_recorre_filas]
								ls_mrcodigo = dw_det.object.mr_codigo[li_recorre_filas]
								ls_clcodprom = dw_det.object.cl_codprom[li_recorre_filas]
								lc_desc3 =	dw_det.getitemnumber(li_recorre_filas,"dv_desc3") 
								
								SELECT IT_CODORIGEN, IT_CODIGO
								INTO :ls_itorigen, :ls_itprom
								FROM PM_ITEMXPROM
								WHERE IT_CODORIGEN = :ls_itcodigo  
								AND PP_CODIGO = '505';
								
									if Not isNull(ls_itorigen) and ls_itorigen  <> ''  and  lc_desc3 = 0  then  
										ls_prod_cantid = ls_prod_cantid + dw_det.object.dv_cantid[li_recorre_filas]		
									end if
						
							next
				
							ls_premios = f_promociones(505,String(ls_prod_cantid),ls_itprom,'0','0','0','0','0','0','0','0')
							li_numpremios = 1
							li_codant = 2
							lc_pedido = 1
							lc_stock = 0
					
							 
								select it_codigo, it_kit
								into :ls_codprod, :lch_kit
								from in_item
								where it_codant = :ls_premios[li_codant];
				
								si_hay = f_dame_stock_sucursal_pos (ls_codprod, lc_pedido, lc_stock,lch_kit,ic_recargo,ld_desc)
								
															
								if si_hay = true  and Dec(ls_premios[1]) > 0  and (ls_premios[2] <> '' and not IsNull(ls_premios[2]))   then
								
											ll_new = dw_det.insertrow(0)
											dw_det. scrolltorow(ll_new)
											dw_det.object.codant[ll_new] = ls_premios[2]
											dw_det.object.prodpromo[ll_new] = 'P'
											dw_det.object.pp_codigo[ll_new] = '505'
											dw_det.setcolumn('codant')
											dw_det.triggerevent('itemchanged') 
											dw_det.object.dv_cantid[ll_new] = Dec(ls_premios[1])
											dw_cab.setcolumn('cliente')
											dw_cab.setfocus( )
								elseif si_hay = false  and Dec(ls_premios[1]) > 0  and (ls_premios[2] <> '' and not IsNull(ls_premios[2]))   then 
											messagebox('Aviso', 'El Stock es menor al requerido para la promoción DEWALT', StopSign!)							
											return 1
								end if
										
											is_entro[505] = 'S'
							end if
									//		li_codant = li_codant + 1
								
						
			end choose
	end choose	
	
	lch_promactivo = '0'
	
	
////**********************FIN PROMOCION PERMASIL*********************************///



////************************PROMOCION RODILLO PARA BIGBOSS***********************************///
////Promoción que permite ingresar items de Camiseta Dewalt cuando cumple los requisitos de compra para productos DURATEX --- POR MARCA
select pp_activo, pp_feccad
into :lch_promactivo, :ld_feccad_prom
from pm_promocion, pm_sucprom
where pm_promocion.pp_codigo = pm_sucprom.pp_codigo
and pm_promocion.pp_codigo ='506'
and su_codigo = :str_appgeninfo.sucursal
and ps_estado = '1'
and trunc(pp_feccad) >= trunc(sysdate);
ld_suma = 0
ls_prod_cantid = 0

choose case lch_promactivo  
	
	case '1'							//Si la promoción se encuentra activa va a realizar la validación, caso contrario lo anula.
	
		SELECT  PS_ESTADO
		INTO  :lch_sucactivo
		FROM  PM_SUCPROM
	     WHERE PM_SUCPROM.PP_CODIGO = '506'
		AND PM_SUCPROM.SU_CODIGO = :str_appgeninfo.sucursal
		and trunc(PS_FECCAD) >= trunc(sysdate);

		choose case lch_sucactivo	////Verifica si la sucursal participa en la promoción caso contrario no entra
			case '1'
	
						ls_rucci = dw_cab.GetItemString(dw_cab.GetRow(),"cliente")
						select em_ruc, trunc(sysdate)
						into :ls_rucemp
						from pr_empre t
						where em_codigo = :str_appgeninfo.empresa;
						
						if (ls_rucci=ls_rucemp or ls_rucci = '1') then
							borra_fila_promo(1)
						end if
						
						if(ls_rucci<>ls_rucemp and ls_rucci <> '1' and is_estado = '2' and is_entro[506] <>'S'  ) then
						
							li_filas_detail = dw_det.rowcount()
							for li_recorre_filas = 1 to li_filas_detail 
								
								ls_itorigen = '' 
								
								ls_itcodigo =  dw_det.object.it_codigo[li_recorre_filas]
								ls_mrcodigo = dw_det.object.mr_codigo[li_recorre_filas]
								ls_clcodprom = dw_det.object.cl_codprom[li_recorre_filas]
								lc_desc3 =	dw_det.getitemnumber(li_recorre_filas,"dv_desc3") 
								
								SELECT IT_CODORIGEN
								INTO :ls_itorigen
								FROM PM_ITEMXPROM, PM_PROMOCION
								WHERE PM_PROMOCION.PP_CODIGO = PM_ITEMXPROM.PP_CODIGO
								AND IT_CODORIGEN = :ls_itcodigo
								AND PP_ACTIVO = '1';
			
								
									if sqlca.sqlcode <> 0 and  lc_desc3 = 0  then  
										ld_cantidad = dw_det.getitemnumber(li_recorre_filas,"cc_coniva")
										ld_suma = ld_suma + ld_cantidad         
									end if
						
							next
				
							ls_premios = f_promociones(506,String(ld_suma),ls_itprom,'0','0','0','0','0','0','0','0')
							li_numpremios = 1
							li_codant = 2
							lc_pedido = 1
							lc_stock = 0
					
							 
								select it_codigo, it_kit
								into :ls_codprod, :lch_kit
								from in_item
								where it_codant = :ls_premios[li_codant];
				
								si_hay = f_dame_stock_sucursal_pos (ls_codprod, lc_pedido, lc_stock,lch_kit,ic_recargo,ld_desc)
								
															
								if si_hay = true  and Dec(ls_premios[1]) > 0  and (ls_premios[2] <> '' and not IsNull(ls_premios[2]))   then
								
											ll_new = dw_det.insertrow(0)
											dw_det. scrolltorow(ll_new)
											dw_det.object.codant[ll_new] = ls_premios[2]
											dw_det.object.prodpromo[ll_new] = 'P'
											dw_det.object.pp_codigo[ll_new] = '506'
											dw_det.setcolumn('codant')
											dw_det.triggerevent('itemchanged') 
											dw_det.object.dv_cantid[ll_new] = Dec(ls_premios[1])
											dw_cab.setcolumn('cliente')
											dw_cab.setfocus( )
								elseif si_hay = false  and Dec(ls_premios[1]) > 0  and (ls_premios[2] <> '' and not IsNull(ls_premios[2]))   then 
											messagebox('Aviso', 'El Stock es menor al requerido para la promoción RODILLO', StopSign!)							
											return 1
								end if
										
											is_entro[506] = 'S'
							end if
									//		li_codant = li_codant + 1
								
						
			end choose
	end choose	
	
	lch_promactivo = '0'
	
	
////**********************FIN PROMOCION DEWALT*********************************///




//************************APLICA PARA DEVOLUCION IVA 2% EN SUCURSALES AFECTADAS********************************///

Decimal{2} ldd_iva, ldd_valiva, ld_desc_iva, ld_valdes_iva, ldd_poriva, ldd_valivaact,valor_iva

ls_rucci = dw_cab.GetItemString(dw_cab.GetRow(),"cliente")
valor_iva= dw_det.GetitemDecimal(1,"cc_sumconiva")


				IF (ls_ceexiva = '1') THEN

							SELECT NVL(SU_DESCIVA,0)
							INTO :ldd_poriva
							FROM PR_SUCUR
							WHERE SU_CODIGO = :str_appgeninfo.sucursal;
							
					IF ldd_poriva >0.00 then 

												
												IF dw_cab.getitemNumber(1,"cc_tarifa0") > 0.00 THEN
													
													dw_cab.Modify("t_9.text = 'Comp.~r Solidaria "+String(Integer(ldd_poriva))+"%'")
										
													ldd_poriva = s_iva.im_valor - (ldd_poriva/100)
													ldd_valivaact = valor_iva / (s_iva.im_valor + 1)
													
													ldd_valiva =  ldd_valivaact * ldd_poriva
													
													ld_valdes_iva = ldd_valivaact + ldd_valiva 
													ld_desc_iva = (ldd_valivaact*(1+s_iva.im_valor))  - ld_valdes_iva 
													
													IF(ls_rucci<>ls_rucemp and is_estado = '2' ) THEN 				
														dw_cab.SetItem(li_fila,"desc", ld_desc_iva)
													ELSE
														dw_cab.SetItem(li_fila,"desc", 0)
													END IF
														dw_cab.Modify("cc_cuotafacil.Expression='"+string(ld_valdes_iva +  dw_cab.getitemNumber(1,"cc_tarifa0") )+"'")
														dw_cab.SetItem(li_fila,'efectivo',ld_valdes_iva +  dw_cab.getitemNumber(1,"cc_tarifa0")  )
														dw_cab.SetItem(li_fila,"valor_pagar",  ld_valdes_iva +  dw_cab.getitemNumber(1,"cc_tarifa0") )
														
												ELSE			
												
											
													
													dw_cab.Modify("t_9.text = 'Comp.~r Solidaria "+String(Integer(ldd_poriva))+"%'")
													
													ldd_poriva = s_iva.im_valor - (ldd_poriva/100)
													ldd_valiva =  ic_valor * ldd_poriva
													 
													ld_valdes_iva = ic_valor + ldd_valiva
													ld_desc_iva = valor_iva - (ld_valdes_iva)
													
													IF(ls_rucci<>ls_rucemp and is_estado = '2' ) THEN 				
														dw_cab.SetItem(li_fila,"desc", ld_desc_iva)
													ELSE
														dw_cab.SetItem(li_fila,"desc", 0)
													END IF
													dw_cab.SetItem(li_fila,'efectivo',ld_valdes_iva)
													dw_cab.SetItem(li_fila,'valor_otras',0)
													 dw_cab.Modify("cc_cuotafacil.Expression='"+string(ld_valdes_iva)+"'")
													 dw_cab.SetItem(li_fila,"valor_pagar",  ld_valdes_iva)
													
												END IF
	
			ELSE
				
					dw_cab.SetItem(li_fila,"desc", 0)
		
			END IF
			
			ELSE 
					dw_cab.SetItem(li_fila,"desc", 0)

			END IF
  	




//********************************************************************************************************//	


//************************APLICA PARA AUTOCONSUMOS EN LA SEPARACION DE IVA A CUENTA GASTO IVA ********************///

IF(is_cliruc=ls_rucemp and is_estado = '2'   ) THEN

date ld_hoy

	select trunc(sysdate)
	into :ld_hoy 
	from dual;
	
	 dw_cab.object.efectivo[dw_cab.GetRow()] = 0.00
	 dw_cab.object.efectivo.TabSequence = 0
 	 dw_forma_pago.visible = true
	 dw_forma_pago.SetFocus()


	 dw_forma_pago.Reset()	
	  idwc_ctas.reset()
       idwc_ctas.insertrow(0)
	 
	dw_forma_pago.InsertRow(0)
	dw_forma_pago.SetColumn('fp_codigo')
	
	dw_forma_pago.getChild("fp_codigo", ldwc_fp)	
	ldwc_fp.SetFilter("( rp_tipo = 'A' ) and ( fp_string like '%V%')")
	ldwc_fp.filter()	
	
	dw_forma_pago.object.rp_valor[dw_forma_pago.GetRow()] =	dw_cab.object.cc_neto[dw_cab.GetRow()]
	dw_forma_pago.object.if_codigo[dw_forma_pago.GetRow()] = '0'
	dw_forma_pago.object.rp_fecven[dw_forma_pago.GetRow()] = ld_hoy
	dw_forma_pago.object.rp_fecha[dw_forma_pago.GetRow()] = ld_hoy
	
	dw_forma_pago.getChild("if_codigo", ldwc_if)	
	ldwc_if.SetFilter("( if_codigo = '0' ) ")
	ldwc_if.filter()	
	
	
	
	dw_forma_pago.InsertRow(0)
	dw_forma_pago.object.fp_codigo[2] = '289'
	dw_forma_pago.object.if_codigo[2] = '0'
	dw_forma_pago.object.rp_valor[2] = dw_cab.object.iva[dw_cab.GetRow()]
	dw_forma_pago.object.rp_fecha[2] = ld_hoy
	dw_forma_pago.object.rp_fecven[2] = ld_hoy

	
	dw_forma_pago.modify("if_codigo.protect=1")
	dw_forma_pago.modify("rp_valor.protect=1")
	
//	dw_forma_pago.SetColumn('fp_codigo')


ELSE 
	 dw_cab.object.efectivo.TabSequence = 40
END IF




//*********************************************************************************************************//


                                                
// ///*************************PROMOCION GALON PINTURA BLANCA*********************************************//                              
//
//                IF(ls_rucci<>'1' ) THEN
//                    IF is_estado = '2'  THEN
//                                                                                                                                                             
//				                   if gana_promo <> 3 THEN
//															   promociones(14)
//															   dw_det.triggerevent("ue_pasadatos")
//					                end if
//										 
//						
//                         END IF
//          
//		END IF                                    
//
//
////****************************************************************************************//        




		IF(is_cliruc=ls_rucemp and is_estado = '2'   ) THEN

				dw_forma_pago.object.if_codigo[dw_forma_pago.GetRow()] = '0'
				ls_grupoven = 'U'

		ELSEIF (ls_relac = 'R' and is_estado = '2' ) THEN
				ls_grupoven = 'R'
		END IF

////*************************PROMOCION KIT WESCO*********************************************//
//
// COMENTADO POR FALTA DE AUTORIZACIÓN DE LANZAMIENTO DE PROMOCION
               
//
//         IF(ls_rucci<>'1' ) THEN
//                    IF is_estado = '2'  THEN
//                                                                                                                                                             
//				                   if gana_promo_wesco <> 3 THEN
//															   promociones(15)
//															   dw_det.triggerevent("ue_pasadatos")
//					                end if
//										 
//						
//                         END IF
//          
//		END IF         

//****************************************************************************************//      

   
	//Activa el campos para colocal el origen de la proforma.

		if ls_rucci<>ls_rucemp  and is_estado = '3' then
				this.object.t_proorg.visible = 1
				this.object.prof_origen.visible = 1
			else 		
				this.object.t_proorg.visible = 0
				this.object.prof_origen.visible = 0
			//	this.object.origen_txt.visible = 0
		end if
end if

CASE "efectivo"
                
                

                
                lc_efectivo = dec(this.GetText())
                lc_valor = dw_cab.GetitemDecimal(li_fila,"valor_pagar")                           
                
                
                
//            if is_tipcli = 'LNE' then select * from fa_formpag where rp_tipo in ('E','T','D')
//                           messageBox('ALERTA','CLIENTE EN LISTA NEGRA CON PROBLEMAS DE CREDITO...<VENDER SOLO EN EFECTIVO>',Exclamation!)
//                           return
//            end if
                
                
                if lc_efectivo < 0 then
                               messageBox('Error','No se permite cantidades negativas',stopsign!) 
                               dw_cab.SetItem(li_fila,'efectivo',lc_valor)                         
                               return 1
                end if
                if lc_efectivo >= lc_valor then
                               dw_cab.SetItem(li_fila,"otra",'N')          
                               dw_cab.SetItem(li_fila,"valor_otras",0)
                               if ich_iva = 'S' then
                                               ii_estado = 0
                               else
                                               ii_estado = 1
                               end if                                   
                               dw_cab.SetItem(li_fila,"subtotal",ic_valor)                       
                               dw_cab.Setitem(li_fila,"descuento",ic_descuento)
                               dw_cab.Setitem(li_fila,"iva",ic_iva * ii_estado)                                               
//                           dw_cab.Setitem(li_fila,"cargo",0)                           
                               lc_valor = (ic_valor - ic_descuento) + ic_iva * ii_estado
                               dw_cab.SetItem(li_fila,"valor_pagar", lc_valor)
                                dw_cab.Modify("cc_cuotafacil.Expression='"+string(lc_valor)+"'")
                               dw_forma_pago.visible = false
                               dw_forma_pago.reset()
										 




//************************APLICA PARA DEVOLUCION IVA 2% EN SUCURSALES AFECTADAS********************************///

valor_iva= dw_det.GetitemDecimal(1,"cc_sumconiva")

IF(is_cliruc<>ls_rucemp and is_estado = '2'   ) THEN

				IF (ls_ceexiva = '1') THEN

							SELECT NVL(SU_DESCIVA,0)
							INTO :ldd_poriva
							FROM PR_SUCUR
							WHERE SU_CODIGO = :str_appgeninfo.sucursal;
							
					IF ldd_poriva >0.00 then 

												
												IF dw_cab.getitemNumber(1,"cc_tarifa0") > 0.00 THEN
													
													dw_cab.Modify("t_9.text = 'Comp.~r Solidaria "+String(Integer(ldd_poriva))+"%'")
										
													ldd_poriva = s_iva.im_valor - (ldd_poriva/100)
													ldd_valivaact = valor_iva / (s_iva.im_valor + 1)
													
													ldd_valiva =  ldd_valivaact * ldd_poriva
													
													ld_valdes_iva = ldd_valivaact + ldd_valiva 
													ld_desc_iva = (ldd_valivaact*(1+s_iva.im_valor))  - ld_valdes_iva 
													
												IF(ls_rucci<>ls_rucemp and is_estado = '2' ) THEN 				
													dw_cab.SetItem(li_fila,"desc", ld_desc_iva)
												ELSE
													dw_cab.SetItem(li_fila,"desc", 0)
												END IF
												
													dw_cab.Modify("cc_cuotafacil.Expression='"+string(ld_valdes_iva +  dw_cab.getitemNumber(1,"cc_tarifa0") )+"'")
													dw_cab.SetItem(li_fila,'efectivo',ld_valdes_iva +  dw_cab.getitemNumber(1,"cc_tarifa0")  )
													dw_cab.SetItem(li_fila,"valor_pagar",  ld_valdes_iva +  dw_cab.getitemNumber(1,"cc_tarifa0") )
														
												ELSE			
												
											
													
													dw_cab.Modify("t_9.text = 'Comp.~r Solidaria "+String(Integer(ldd_poriva))+"%'")
													
													ldd_poriva = s_iva.im_valor - (ldd_poriva/100)
													ldd_valiva =  ic_valor * ldd_poriva
													
													ld_valdes_iva = ic_valor + ldd_valiva
													ld_desc_iva = valor_iva - (ld_valdes_iva)
													
													IF(ls_rucci<>ls_rucemp and is_estado = '2' ) THEN 				
														dw_cab.SetItem(li_fila,"desc", ld_desc_iva)
													ELSE
														dw_cab.SetItem(li_fila,"desc", 0)
													END IF
							
													dw_cab.SetItem(li_fila,'efectivo',ld_valdes_iva)
													dw_cab.SetItem(li_fila,'valor_otras',0)
													 dw_cab.Modify("cc_cuotafacil.Expression='"+string(ld_valdes_iva)+"'")
													 dw_cab.SetItem(li_fila,"valor_pagar",  ld_valdes_iva)
													
												END IF   //Fin verifica iva0
	
			ELSE
				
					dw_cab.SetItem(li_fila,"desc", 0)
		
			END IF // fin verifica compensacion en sucursal 
			
			ELSE 
					dw_cab.SetItem(li_fila,"desc", 0)

			END IF// fin verifica cliente excento de iva
  	
END IF // fin verifica que factura no sea autoconsumo




//********************************************************************************************************//													 
												 

                else       //verifico si pagó en tarjeta
                               
                               
                               if dw_cab.GetitemDecimal(li_fila,"cc_saldo")   <> 0 then
                               dw_cab.SetItem(li_fila,"otra",'S')           
                               dw_cab.SetItem(li_fila,"valor_otras",0)
                
                               ls_datos[1] = str_appgeninfo.empresa
                               
                               dw_forma_pago.Reset()                                            
                               dw_forma_pago.getChild("fp_codigo", ldwc_fp)           
                               if is_tipcli = 'LNE' then  //filtrar solo efectivo y tarjetas de debito y credito
										ldwc_fp.setfilter("( fp_codigo <> '0' ) and ( rp_tipo in ('E','T','D','S','R', 'N') ) and ( fp_string like '%V%')")
                               elseif is_cliruc = ls_rucemp then
                                               //** Permite definir fp como autoconsumos para la empresa
                                                               ldwc_fp.SetFilter("( rp_tipo = 'A' ) and ( fp_string like '%V%')")
														dw_cab.SetItem(li_fila,'efectivo',0.00)                 
																					
                               else
                                               ldwc_fp.setfilter("( fp_codigo <> '0' ) and ( fp_string like '%V%' ) and ( rp_tipo <> 'A' )")
                               end if
                               ldwc_fp.filter() 
                               
										 
				            dw_forma_pago.visible = true
                               dw_forma_pago.SetFocus()
						      
                               idwc_ctas.reset()
            				    idwc_ctas.insertrow(0)
                                                               
                               dw_forma_pago.InsertRow(0)
						    dw_forma_pago.SetColumn('fp_codigo')
                               end if
                end if

	
		

CASE "ve_motivo" 
                setnull(ls_nulo)
                dw_cab.SetItem(li_fila,"subtotal",ic_valor)
                dw_cab.SetItem(li_fila,"descuento",ic_descuento)
                dw_cab.SetItem(li_fila,"iva",ic_iva*ii_estado) 
    lc_valor = (ic_valor - ic_descuento) + ic_iva*ii_estado              
                dw_cab.SetItem(li_fila,"valor_pagar", lc_valor)               
                dw_cab.SetItem(li_fila,'efectivo',lc_valor)         
                dw_cab.Modify("cc_cuotafacil.Expression='"+string(lc_valor)+"'")        
                ls_valiva = string(tasa.iva*100,'#,##0')
                ls_datcli =  is_tipcli+' / Credito: '+ is_estcre + ' - Saldo Cred.: '+string(ic_salcre)+' - Cupo: '+string(ic_cupcre)+' - Plazo: '+string(ii_plazo)+ ' / Exento IVA:'+ich_iva+' - C.Esp.:'+is_contesp
                modify("t_iva.text = 'IVA "+ls_valiva+"%:'")
                modify("param_cli.text = '"+ls_datcli+"'")
                setitem(li_fila,'nombre_cli',is_nomcli)
                if getitemstring(row,"ve_motivo") = 'S' then
                               dw_cab.SetItem(row,'ve_preant',ls_nulo)
                end if
                
                dw_cab.setcolumn('cliente')
                dw_cab.setfocus()         

	
								 

CASE "otra"
   ls_codigo = this.getText()
                if ls_codigo = 'N' then
                               dw_cab.SetItem(li_fila,"valor_otras",0)
                               dw_forma_pago.visible = false
                               idwc_ctas.reset()
                               dw_forma_pago.reset()
                else
                               if is_tipcli = 'LNE' then
                                               messageBox('ALERTA','CLIENTE EN LISTA NEGRA...<NO VENDER A CRÉDITO>',Exclamation!)
                                               return
                               end if
                               if not ib_recuperar then 
                                               dw_forma_pago.Settransobject(sqlca)
                                               ls_datos[1] = str_appgeninfo.empresa
                                               dw_forma_pago.Reset()

                                               dw_forma_pago.visible = true
                                               dw_forma_pago.SetFocus()
                                               idwc_ctas.insertrow(0)
                                               dw_forma_pago.InsertRow(0)
                                               dw_forma_pago.SetColumn('fp_codigo')
                               else
                                               dw_forma_pago.visible = true
                                               idwc_ctas.insertrow(0)
                                               dw_forma_pago.InsertRow(0)
                               end if
                end if



CASE "observacion"
   is_observacion = this.getText()
                if is_observacion <> '' then
                               dw_cab.SetItem(li_fila,"observacion",is_observacion)
                end if
END CHOOSE


li_impreso = 1
ic_orig_subtotal   = dw_cab.Object.subtotal[li_fila]
ic_orig_descuento  = dw_cab.object.descuento[li_fila]
ic_orig_iva        = dw_cab.object.iva[li_fila]
ic_orig_valorpagar = dw_cab.Object.valor_pagar[li_fila]



end event

event itemerror;return 1
end event

event getfocus;str_cliparam.ventana = parent
str_cliparam.datawindow = this
str_cliparam.fila = GetRow() 



end event

event clicked;datawindowchild dwc_profori
if dwo.name =  "prof_origen" then
	dw_cab.getchild( 'prof_origen', dwc_profori)
	dwc_profori.settransobject( sqlca)
	dwc_profori.retrieve('3')
end if
end event

type dw_sel_recuperar from datawindow within w_pos
event ue_keydown pbm_dwnkey
boolean visible = false
integer x = 315
integer y = 84
integer width = 1893
integer height = 268
boolean bringtotop = true
boolean titlebar = true
string title = "Documento a recuperar"
string dataobject = "d_sel_retrieve"
boolean livescroll = true
end type

event ue_keydown;if KeyDown(KeyEscape!) then
                this.Reset()
                this.visible = false
                dw_det.setfocus()
end if
end event

event itemchanged;long numero, nuevo

if dwo.name = 'sucursal' then

                numero = longlong(this.object.numero[1])                  
                if ib_facturar = true then
                               if wf_proforma_a_factura(numero, nuevo) > 0 then 
                                               ib_facturar = false
                                               this.visible = false
                                               
														
															IF	li_preimpre = 2 THEN
																	  dw_det.SetItem(1,'c_formato','Factura PREMIPRESA')
                                                   
														ELSE
																	  dw_det.SetItem(1,'c_formato','Factura ELECTRÓNICA')
                                                   
														END IF	
											                             
                               end if
                end if

                if ib_facturar_anulada = true then
                               if wf_copia_factura_anulada(numero, nuevo) > 0 then
                                               ib_facturar_anulada = false
                                               this.visible = false
                                               IF	li_preimpre = 2 THEN
											  dw_det.SetItem(1,'c_formato','Factura PREMIPRESA')
                                 			ELSE
											 dw_det.SetItem(1,'c_formato','Factura ELECTRÓNICA')
                                 			END IF	
											                                                          
                               end if
                end if


		
	if ib_recuperar = true then
                               If dw_det.Retrieve(str_appgeninfo.empresa,this.gettext(),'3', numero) = 0 Then
                                               messagebox("Atención","No existe proforma con este número")
                                               return
                               End if
                               dw_det.SetItem(1,'c_formato','Proforma')                                                                      
                               il_num_venta = numero
                               dw_det.setcolumn("codant")
                               dw_det.enabled = false
                               dw_sel_recuperar.visible = false                            
                end if
                dw_det.setfocus()




end if

end event

type dw_rep_ticket from datawindow within w_pos
boolean visible = false
integer x = 562
integer y = 436
integer width = 1865
integer height = 896
string dataobject = "d_facpos_new"
boolean livescroll = true
end type

type dw_consulta_stk from datawindow within w_pos
event ue_dwnkey pbm_dwnkey
boolean visible = false
integer x = 946
integer y = 340
integer width = 2112
integer height = 956
boolean titlebar = true
string title = "Stock por bodega"
string dataobject = "d_consulta_stk_productosxbodega"
boolean vscrollbar = true
string icon = "imagenes\pos.ico"
boolean livescroll = true
end type

event ue_dwnkey;if KeyDown(KeyEscape!) then
                dw_consulta_stk.visible = false
                dw_det.setcolumn("codant")
                dw_det.setfocus()
end if
 
end event

type dw_stock_sucur from datawindow within w_pos
event ue_dwnkey pbm_dwnkey
string tag = "nuevamente"
boolean visible = false
integer x = 256
integer y = 16
integer width = 2693
integer height = 2572
boolean titlebar = true
string title = "Stock por Sucursales"
string dataobject = "d_rep_max_min_aux_item_rango"
boolean controlmenu = true
boolean vscrollbar = true
string icon = "imagenes\pos.ico"
boolean livescroll = true
borderstyle borderstyle = styleraised!
end type

event ue_dwnkey;if KeyDown(KeyEscape!) then
                dw_stock_sucur.visible = false
                dw_det.setcolumn("codant")
                dw_det.setfocus()
end if
end event

type p_producto from picture within w_pos
boolean visible = false
integer x = 1303
integer y = 516
integer width = 1499
integer height = 924
boolean border = true
borderstyle borderstyle = styleraised!
boolean focusrectangle = false
end type

type dw_cliente from datawindow within w_pos
event ue_keydown pbm_dwnkey
boolean visible = false
integer x = 270
integer y = 428
integer width = 2857
integer height = 844
integer taborder = 50
boolean titlebar = true
string title = "Cliente"
string dataobject = "d_cliente_punto_venta"
boolean controlmenu = true
string icon = "imagenes\pos.ico"
boolean livescroll = true
borderstyle borderstyle = styleraised!
end type

event ue_keydown;if (KeyDown(KeyControl!)) and (KeyDown(KeyEnter!)) then          
                triggerevent("buttonclicked")
                return
end if

if (KeyDown(Keyescape!)) then              
                dw_cliente.visible = false
                dw_cab.setcolumn("cliente")
                dw_cab.setfocus()
                return
end if

end event

event buttonclicked;long ll_cliente, li_fila
string ls_null

li_fila=dw_cliente.GetRow()
if dw_cliente.getItemString(li_fila,'ce_exiva') = 'S' then
                               ii_estado = 0.0
else
                               ii_estado = 1.0
end if

if dw_cliente.update(True, False) = 1 then
    commit;
                is_codcli = dw_cliente.getItemString(li_fila,'ce_codigo')
               is_nomcli = dw_cliente.GetItemString(li_fila,'ce_nombre')+' '+dw_cliente.GetItemString(li_fila,'ce_apelli')
                visible = false
                dw_cab.setitem(1,"nombre_cli",is_codcli+' '+is_nomcli)
                dw_cab.setitem(1,"cliente",'1')
                dw_cab.setfocus()
else
                setnull(ls_null)
                is_codcli = ls_null
               rollback;
                Messagebox("Error","No puede cambiar datos a este cliente",StopSign!)
                return
end if

end event

type dw_codbar from datawindow within w_pos
event ue_keydown pbm_dwnkey
boolean visible = false
integer x = 325
integer y = 732
integer width = 2839
integer height = 452
integer taborder = 150
boolean titlebar = true
string title = "Grabar Código de Barras"
string dataobject = "d_grabar_codbar"
boolean livescroll = true
borderstyle borderstyle = styleraised!
end type

event ue_keydown;if keydown(KeyEscape!) = true then
                visible = false
                dw_det.enabled = true
                dw_det.setfocus()
end if
end event

event buttonclicking;string ls_codant,ls_codbar
//integer li_fila, li_count


//li_fila = dw_det.getrow()
//if li_fila < 1 then return

setpointer (Hourglass!)
acceptText()
if dwo.name = "b_1" then
                ls_codant = getitemstring(1,"codant")
                ls_codbar = getitemstring(1,"codbar")
//            Select count(*)
//            into :li_count
//            from in_item
//            where em_codigo = :str_appgeninfo.empresa
//            and it_codant = :ls_codant;
//            if li_count = 0 then
//                           beep(1)
//                           messagebox("Atención","No existe código de producto")
//                           return 1               
//            end if
                
                if Messagebox("Confirmar","Esta seguro que desea grabar: "+ls_codant+ & 
                                                                                              "~r~nCon el código de barras: "+ls_codbar,question!,yesno!) = 2 then
                               return 1
                end if
                
                update in_item
                set it_codbar = :ls_codbar,
                               it_feccam = sysdate
                where em_codigo = :str_appgeninfo.empresa
                and it_codant = :ls_codant;
                if sqlca.sqlcode <> 0 then
                               rollback;
                               Messagebox("Error","Problemas al actualizar el código de barras",stopsign!)
                               return 1
                else
                               commit;
                               Messagebox("Confirmación","Código de Barras grabado con éxito...")                
                               visible = false
                               dw_det.enabled = true
                               dw_det.setitem(dw_det.getrow(),"codant",ls_codbar)
                               dw_det.triggerevent(itemchanged!)
                end if
end if

if dwo.name = "b_2" then
                visible = false
                dw_det.enabled = true
                dw_det.setcolumn("codant")
                dw_det.setfocus()
end if
setpointer (arrow!)
end event

event itemerror;return 1
end event

event itemchanged;string ls_nombre, ls_codbar

accepttext( )

select it_nombre,it_codbar
into :ls_nombre, :ls_codbar
from in_item
where em_codigo = :str_appgeninfo.empresa
and it_codant = :data;   
If sqlca.sqlcode <> 0 then
                beep(1)
                setnull(ls_nombre)
                setitem(row,"codant",ls_nombre)                        
                setitem(row,"nombre",ls_nombre)
                messagebox("Atención","No existe código de producto")
                return 1               
end if

if not isnull(ls_codbar) and trim(ls_codbar) <> "" then
                beep(1)
                If messagebox("Confirmación","El código: "+data+" ya tiene asignado el código de barras: "+ls_codbar+"~n~r"+&
                                                                                              "Seguro que desea reemplazarlo",question!,yesno!,2) = 2 then return 1
end if
setitem(row,"nombre",ls_nombre)
end event

type dw_det from datawindow within w_pos
event ue_keydown pbm_dwnkey
event ue_ultimo pbm_custom01
event ue_pasadatos pbm_custom02
event ue_darimagen pbm_custom03
event ue_darstk pbm_custom04
event ue_darstk_suc pbm_custom05
event ue_tabout pbm_dwntabout
integer y = 8
integer width = 3803
integer height = 2140
string dataobject = "d_detalle_ticket_new"
boolean minbox = true
boolean maxbox = true
boolean hscrollbar = true
boolean vscrollbar = true
boolean resizable = true
boolean livescroll = true
borderstyle borderstyle = styleraised!
end type

event ue_keydown;int li_fila, i
dec{2} lc_descue, lc_dscpos,ld_stock_disponible
string ls_nombre,ls_codant,ls_codigo_atomo,ls_itcodigo
char lch_kit, lch_itcosto,lch_itdescue
datetime ld_valdate

li_fila = this.getrow()

if (KeyDown(KeyUpArrow!)) then
                if li_fila > 1 then 
                               dw_det.setcolumn('dv_cantid')
                else
                               beep(1)
                end if
end if

if (KeyDown(KeyDownArrow!)) then
                dw_det.triggerevent('ue_ultimo')
end if

if (KeyDown(Keycontrol!) and KeyDown(Keyd!)) then
                               lc_descue = getitemdecimal(li_fila,'dv_desc2')
                               If lc_descue = 0 Then
                           
									  Select ps_valor
                                               into :lc_dscpos 
                                               from pr_numsuc
                                               where em_codigo = :str_appgeninfo.empresa
									  and su_codigo = :str_appgeninfo.sucursal
                                               and pr_nombre = 'DSC_POS';
								        if sqlca.sqlcode <> 0 Then
                                                 messagebox('Error Interno','Problemas con descuento en efectivo POS...<Informe a sistemas>')
                                                 return
                                               End if    
                                               for i = 1 to this.rowcount()
                                                               accepttext()
												lch_itdescue = dw_det.object.it_descue[i]							
                                    					if lch_itdescue = 'S' then	
                                                               setitem(i,"dv_desc2",lc_dscpos)     
  												end if									
														lch_itcosto = dw_det.object.it_valcosto[i]
                                               				if lch_itcosto='S' then   
																If getitemdecimal(i,"desc3") < (getitemdecimal(i,"it_costo")*getitemdecimal(i,"dv_cantid")) then
	//                                                                          setitem(li_fila,"dv_desc2",0.00) corregido igual que el dobleclick
																	  setitem(i,"dv_desc2",0.00)
																
																	 return
															  End if          
														END IF
                                               next
											    	if ii_visdesc2 = 1 then
													dw_det.object.p_desc2.visible = false
												elseif ii_visdesc2 = 0 then
													dw_det.object.p_desc2.visible  = true
													    messagebox('Aviso','Se acaba de aplicar el descuento 2 en los items de la factura....!', Exclamation!)
												end if
									  	      
                
                               else
                                              for i = 1 to this.rowcount()
                                                               setitem(i,"dv_desc2",0.00)
											    
                                               next      
									  if ii_visdesc2 = 0 then
											dw_det.object.p_desc2.visible  = false
										   messagebox('Aviso','Se desactivo el descuento  2 en los items de la factura....!', Exclamation!)
									 end if
									   
                               End if
end if

if (KeyDown(Keycontrol!) and KeyDown(Keys!)) then

                ls_codant = getitemstring(getrow(),"codant")
                 
                select it_codigo,it_nombre,it_kit
                into :ls_itcodigo, :ls_nombre,:lch_kit
                from in_item
                where em_codigo = :str_appgeninfo.empresa
                and (it_codbar = :ls_codant or  it_codant = :ls_codant);               
                If sqlca.sqlcode <> 0 then
                                 beep(1)
                                 messagebox('Atención','No existe código de producto')                             
                                 return
                end if
                If lch_kit = 'S' or lch_kit = 'C' Then
                               select y.it_codigo,y.ri_cantid
                               into :ls_codigo_atomo,:ld_stock_disponible
                               from  in_item x,in_relitem y
                               where x.em_codigo = y.em_codigo
                               and x.it_codigo = y.it_codigo1
                               and y.em_codigo = trim(:str_appgeninfo.empresa)
                               and x.it_codant = trim(:ls_codant)
                               and y.tr_codigo = '1';
                else
                               ls_codigo_atomo = ls_itcodigo
                               ld_stock_disponible = 1
                end if    
					 
			   setnull(ld_valdate)		 
                dw_stock_sucur.retrieve(1,ls_codigo_atomo,2,ld_stock_disponible,ls_codant,ls_nombre,lch_kit,ld_valdate,ld_valdate ) 
                dw_stock_sucur.visible = true
                dw_stock_sucur.setfocus()       
end if
end event

event ue_ultimo;int li_max
li_max = this.rowcount()
this.setrow(li_max)
this.scrolltorow(li_max)
this.setcolumn('codant')
this.setfocus()

   
//settaborder("dv_desc3",0)
end event

event ue_pasadatos;int li_fila, li_i, li_stock, i, li_aplica_descuento2, li_fdesc2
dec{2} lc_valor,retiva,lc_tarifa0,lc_tarifa12, lc_valor_pagar, lc_valfac, ldec_total, lc_dscpos
string ls_filaenb,ls_codigo,ls_motor,ls_chasis, ls_gana, ls_premio
char lch_veh
boolean lb_sino
longlong ll_ticked
string  ls_cadena
//variables navidad
boolean lb_navidad = false
integer li_stockpremio
string ls_pecodigo
datawindowchild dwc_profori
//if gs_estado = '3' then //es proforma y voy a sacar un mensaje
//            MessageBox("Confirmación","Recuerde que está en modo de PROFORMA")
//end if




if this.accepttext() < 1 then return

li_fila = this.rowcount()
if li_fila < 1 then 
                MessageBox("Atención","Ingrese Items as Cancelar",StopSign!)
                return
end if

ls_filaenb = dw_det.GetItemString(li_fila,'codant')
if isnull(ls_filaenb) or ls_filaenb = '' then
   dw_det.DeleteRow(li_fila)
end if

if is_estado = '2' then
                
                
                ls_chasis = GetItemString(getrow(),'dv_chasis')
                ls_motor = GetItemString(getrow(),'dv_motor')
                lch_veh = GetItemString(getrow(),'it_kit')
                
                
                if (isnull(ls_motor) or trim(ls_motor) = '') and lch_veh = 'V'then
                               MessageBox("Atención","Ingrese número de MOTOR",StopSign!)
                               return
                end if
                
                if (isnull(ls_chasis) or trim(ls_chasis) = '') and lch_veh = 'V'then
                               MessageBox("Atención","Ingrese número de CHASIS",StopSign!)
                               return
                end if
end if

accepttext()
lc_valor = this.GetitemDecimal(1,"cc_total")
lc_tarifa0 = this.GetitemDecimal(1,"cc_sumsiniva")
lc_tarifa12 = this.GetitemDecimal(1,"cc_sumconiva")
dw_cab.Modify("t_12.text ='Tarifa "+string(int(tasa.iva*100))+"%:' cc_tarifa0.Expression='"+string(lc_tarifa0)+"' cc_tarifa12.Expression='"+string(lc_tarifa12)+"'")
ic_tarifa0 = lc_tarifa0

if lc_valor <= 0 or isnull(lc_valor) then
                MessageBox("Atención","Ingrese Items a Cancelar",StopSign!)
                return
end if


dw_cab.SetItem(li_fila,"observacion",is_observacion)

If ib_pasa_tarj = true Then 
                dw_cab.setcolumn("cliente")   
                dw_cab.setitem(1,"cliente",is_rucic)
                dw_cab.setitem(1,"rucci",is_rucic)    

elseif is_cliruc <> "" and is_cliruc <> '1' Then
   dw_cab.setitem(1,"cliente",is_cliruc)                
else
                dw_cab.setcolumn("cliente")   
                dw_cab.SetItem(1,'cliente','1') 
end if


                
//*************************PROMOCION LATEX US*********************************************//



                                               ls_rucci = dw_cab.GetItemString(dw_cab.GetRow(),"cliente")
                                               
                                               select em_ruc
                                               into :ls_rucemp
                                               from pr_empre t
                                               where em_codigo = :str_appgeninfo.empresa;
                                               
                                               IF Pos(ls_promociones, '30816') = 0 THEN

                                                                                              IF(ls_rucci<>ls_rucemp OR IsNull(ls_rucci) ) THEN 
                                                                                                                                              IF is_estado = '2'  THEN
                                                                                                                                             promociones(2)
                                                                                                                             END IF
                                                                                              END IF
                                               END IF
//****************************************************************************************//                



//////*************************PROMOCION MOCHILA US*********************************************//
////
//
//                Integer existe_cliente // Toma el valor de 0 si no existe cliente en fa_obsequio, caso contrario pone 1 y ya no entrega premio
//
//IF Pos(ls_promociones, '31932') = 0 THEN                                           
//                IF(ls_rucci<>'1' ) THEN
//                                               
//                                               
//                                               existe_cliente = busca_cliente(ls_rucci)
//                
//                                              IF(existe_cliente = 0) THEN  //Si existe el cliente en la promocion ya no entra...
//
//                                                                                                             IF(ls_rucci<>ls_rucemp or ls_rucci <> '' ) THEN 
//                                                                
//                                                                                                               IF is_estado = '2'   THEN
//                                                                                                                             
//                                                                                                                                                             if gana_promo <> 3 THEN
//                                                                                                                                                                                            dw_cab.object.cliente.protect = 0
//                                                                                                                                                                                            gana_promo = promociones(3)
//                                                                                                                                                                                            dw_det.triggerevent("ue_pasadatos")
//                                                                                                                                                                                            IF ib_pasa_tarj = true THEN
//                                                                                                                                                                                                                            dw_cab.object.cliente.protect = 1
//                                                                                                                                                                                            END IF  
//                                                                                                                                                                            
//                                                                                                                                                             end if
//                                                                                              
//                                                                                                                                                                                                                                                                          
//                                                                                                              END IF
//                                                                              END IF
//                               END IF
//                END IF
//END IF
//****************************************************************************************//                


//////*************************PROMOCION GALON PINTURAS*********************************************//
////
//
//                Integer existe_cliente // Toma el valor de 0 si no existe cliente en fa_obsequio, caso contrario pone 1 y ya no entrega premio
//
//                                          
//                IF(ls_rucci<>'1' ) THEN
//                                   IF(ls_rucci<>ls_rucemp or ls_rucci <> '' ) THEN 
//                                                                
//													IF is_estado = '2'   THEN
//																	  
//																												 if gana_promo <> 3 THEN
//																																						gana_promo = promociones(14)
//																																						  dw_det.triggerevent("ue_pasadatos")
//																																						  gana_promo = 3
//																																																																						 
//																												 end if
//							 
//																																																																  
//												  END IF
//									END IF
//                               END IF
//      
//
////****************************************************************************************//       


//
//////*************************PROMOCION KIT WESCO*********************************************//
////
//   COMENTADO POR FALTA DE AUTORIZACION DE LANZAMIENTO   11/05/2016
//               
//
//                                    
//                IF(ls_rucci<>'1' ) THEN 
//                                   IF(ls_rucci<>ls_rucemp or ls_rucci <> '' ) THEN 
//                                                                
//													IF is_estado = '2'   THEN
//																	  
//																												 if gana_promo_wesco <> 3 THEN
//																																						gana_promo_wesco = promociones(15)
//																																						  dw_det.triggerevent("ue_pasadatos")
//																																						  gana_promo_wesco = 3
//																																																																						 
//																												 end if
//							 
//																																																																  
//												  END IF
//									END IF
//                               END IF
//
////****************************************************************************************//       

 dw_cab.TriggerEvent(ItemChanged!)
if dw_cab.visible = false then
	
	if dw_promcli_datos.visible = true then
		dw_cab.visible = true
		dw_promcli_datos.visible = true
	else
		dw_cab.visible = true
	end if
	
end if
li_premio = 0
//obsequio navideño 

// Permite verificar que producto se va a escoger para entregar entre los disponibles
select em_ruc, trunc(sysdate)
into :ls_rucemp
from pr_empre t
where em_codigo = :str_appgeninfo.empresa;


IF(ls_rucci<>ls_rucemp and is_estado = '2'   and ls_rucemp <>'' ) THEN 

                               IF is_codcli <> '1'   THEN
                                                                              
                                                                              IF lc_tarifa12 >= 10 and  lc_tarifa12 <=  29.99  then
                                                                                              rb_cal.checked = false
                                                                                             rb_na.checked = false
                                                                                              promociones(7)
                                                                              
                                                                              ELSE       
                                                                                              dw_cab.enabled = TRUE
                                                                              END IF
                                               END IF
END IF



IF (li_preimpre=2 and li_entro <>1 and  is_estado = '2') THEN

	dw_cab.object.ve_preant[dw_cab.GetRow()] = ''
	dw_cab.object.t_13.visible = true
	dw_cab.object.b_1.visible = true
	dw_cab.object.ve_preant.visible = true
	dw_cab.object.prof_origen.visible = false
	dw_cab.object.ve_preant.protect = 0
	dw_cab.object.cliente.protect = 1
	dw_cab.object.efectivo.protect = 1
	dw_cab.object.observacion.protect = 1
	dw_cab.setcolumn("ve_preant")														
	dw_cab.setfocus()
	
	SELECT cj_ticket
	INTO :ll_ticked
	FROM fa_caja
	WHERE fa_caja.cj_caja = :caja.caja
	AND fa_caja.su_codigo = :str_appgeninfo.sucursal ;
				
//	dw_cab.modify("t_9.text  ="+ String(ll_ticked))
	ls_cadena = left(string(ll_ticked),3) 

	
	for i = 1 to len(String(ll_ticked))-3
		ls_cadena = ls_cadena + '0'
	next	

		dw_cab.object.numejm[dw_cab.GetRow()] = ls_cadena
	//	dw_cab.modify("ve_preant.tip ="+ls_cadena)
ELSEIF (is_estado ='3') THEN
	
		dw_cab.setitem(1,"prof_origen",is_valprof)  
		dw_cab.setitem(1,"origen_txt",is_valotros)  
		dw_cab.object.t_13.visible =false
		dw_cab.object.b_1.visible = false
		dw_cab.object.ve_preant.visible = false
		dw_cab.object.prof_origen.visible = true
		dw_cab.object.cliente.protect = 0
		dw_cab.object.efectivo.protect = 0
		dw_cab.object.observacion.protect = 0
		dw_cab.setcolumn( "cliente")
		dw_cab.setfocus()
	
ELSE
	dw_cab.object.cliente.protect = 0
	dw_cab.object.efectivo.protect = 0
	dw_cab.object.observacion.protect = 0
	IF(ls_preant <> 0 )THEN	
	

				SELECT cj_ticket
				INTO :ll_ticked
				FROM fa_caja
				WHERE fa_caja.cj_caja = :caja.caja
				AND fa_caja.su_codigo = :str_appgeninfo.sucursal ;
				
	
				IF ( ll_ticked = ls_preant) THEN
					dw_cab.object.cliente.protect = 0
					dw_cab.object.efectivo.protect = 0
					dw_cab.object.observacion.protect = 0
					dw_cab.object.ve_preant[dw_cab.GetRow()] = String(ls_preant)
					dw_cab.object.ve_preant.protect=1
					dw_cab.setcolumn( "cliente")
					dw_cab.setfocus()
					return 0
					
				ELSE 
					dw_cab.object.cliente.protect = 1
					dw_cab.object.efectivo.protect = 1
					dw_cab.object.observacion.protect =1
					dw_cab.object.ve_preant.protect =0
					dw_cab.setcolumn( "ve_preant")
					dw_cab.setfocus()
					return 0
				END IF
				
		END IF					
END IF

//setcolumn('dv_desc2')
li_fdesc2 = dw_det.object.dv_desc2[1]
// 
 if li_fdesc2 > 0  then
	for i = 1 to dw_det.rowcount( ) 
			dw_det.object.dv_desc2[i] = li_fdesc2
	next 
end if

//
dw_det.enabled = false				

ldec_total = dw_det.getitemdecimal(1,"cc_totbruto") - dw_det.getitemdecimal(1,"cc_total") 
dw_cab.object.t_15.text ='Su ahorro en esta compra es:  '+ String(ldec_total)






end event

event ue_darimagen;int li_fila, li
string ls_produ, ls

if prod_visible then
                prod_visible = false
                p_producto.Visible = false
else
   prod_visible = true 
                li_fila = this.getrow()
                ls_produ = dw_det.GetItemString(li_fila,'codant')
                if not isnull(ls_produ) and ls_produ <> '' then
                               Select it_imagen
                                 into :ls
                                 from in_item
                               where em_codigo = :str_appgeninfo.empresa
                                               and it_codant = :ls_produ;
                               if sqlca.sqlcode <> 0 then
                                               messageBox('Atención','Ingrese primero un producto')
                               end if
                               p_producto.PictureName = ls
                               p_producto.Height = 307.6666 //56.5 ( hasta 10)
                               p_producto.Width = 500.3333 //91.9
                               p_producto.Visible = true 
                               for li = 1 to 2  //10 //565 es el alto máximo (factor 6)
                                               p_producto.Visible = false
                                               p_producto.Height = p_producto.Height+307.6666
                                               p_producto.Width = p_producto.Width + 500.3333 //(919 es ancho máximo)
                                               p_producto.Visible = true
                               next
                end if    
end if
end event

event ue_darstk;int li_fila, li
string ls_produ, ls,ls_kit

if dw_consulta_stk.visible then
                dw_consulta_stk.visible = false
else
                li_fila = this.getrow()
                ls_produ = dw_det.GetItemString(li_fila,'it_codigo')
                ls_kit = dw_det.GetItemString(li_fila,'it_kit')     
                if not isnull(ls_produ) and ls_produ <> '' then
                               If ls_kit = 'S' or ls_kit = 'C' then 
                                               Select it_codigo
                                                 into :ls
                                                 from in_relitem
                                               where em_codigo = :str_appgeninfo.empresa
                                                               and it_codigo1 = :ls_produ;
                                               if sqlca.sqlcode <> 0 then
                                                               messageBox('Atención','Ingrese primero un producto')
                                                               return
                                               end if
                               else
                                               ls = ls_produ
                               End if
                               dw_consulta_stk.SetTransObject(sqlca)
                               dw_consulta_stk.Retrieve(str_appgeninfo.empresa, str_appgeninfo.sucursal, ls)                        
   end if 
   dw_consulta_stk.visible = true 
                dw_consulta_stk.setfocus()      
end if
end event

event ue_darstk_suc;int li_fila, li
dec{2} lc_equivalencia
string ls_atomo,ls_codant, ls_nombre
char lch_kit

if dw_stock_sucur.visible then
                dw_stock_sucur.visible = false
else
                li_fila = this.getrow()
                ls_codant = dw_det.GetItemString(li_fila,'codant')
                ls_nombre = getitemstring(li_fila,"nombre")    
                lch_kit = dw_det.GetItemString(li_fila,'it_kit')                  

                If lch_kit = 'S' or lch_kit = 'C' Then
                               select y.it_codigo,y.ri_cantid
                               into :ls_atomo,:lc_equivalencia
                               from  in_item x,in_relitem y
                               where x.em_codigo = y.em_codigo
                               and x.it_codigo = y.it_codigo1
                               and y.em_codigo = trim(:str_appgeninfo.empresa)
                               and x.it_codant = trim(:ls_codant)
                               and y.tr_codigo = '1';
                else
                               ls_atomo = getitemstring(li_fila,"it_codigo")
                               lc_equivalencia = 1
                end if    
                dw_stock_sucur.retrieve(ls_atomo,2,lc_equivalencia,ls_codant,ls_nombre,lch_kit) 
                dw_stock_sucur.visible = true  
end if
end event

event ue_tabout;// Comentado el 03/08/2016 17:35
// Modificado por: Henry Pinchao
// Detalle: Se comenta la función wf_insertafila para que permita mas de 12 items por factura, debido a la promoción de cliente_100
wf_insertarfila()
scrolltorow(rowcount() + 1)
setcolumn('codant')
setfocus()
end event

event itemchanged;integer li_max,li_find,li_itgarant,  li_count_cant, li_cantida_stock
boolean si_hay
long li_descadic, ll_candes, ll_costo_porc, ll_precioform
string ls_null,ls_pepa,ls_nombre,ls_codant,ls_tipo_desc,&
                               ls_col,ls_codaux,ls_codigo_atomo,ls_marca,ls_base,ls_itcodigo,ls_promocion,ls_unibas, ls_marcas, ls_fbcodigo, ls_clcodigo,ls_usuario_pos, ls_status, ls_tipodesp, ls_rentab, ls_desctarj, ls_igcodigo, ls_clcodprod, ls_desci_prom, ls_zmarco
dec{2} ld_null,lc_precio,ld_desc1,ld_desc2,ld_desc3,lc_prefab,&
                               lc_pedido,lc_descue,lc_stock,ld_stock_disponible,ld_desc, lc_desc1, lc_desc2, lc_desc3, lc_total, lc_preciodesc, lc_preciofin
dec{4} lc_costo
char lch_kit,lch_aux,lch_prepa, lch_estado,  lch_itcosto,  lch_valstk, lch_descue, lch_activo, lch_descue3

datetime ld_stock

ic_recargo = 0 
li_max = this.RowCount() 
If li_max < 1 then return
setnull(ls_null)
setnull(ld_null)
ls_col = this.getcolumnName()
CHOOSE CASE ls_col
CASE 'codant'

				
                data = gettext()
                row = this.getrow()

                select co_codigo,ma_codigo,it_iva,it_codigo, it_nombre, it_prefab, it_valstk,it_kit,it_costo,it_codant,it_base,it_preparado,ub_codigo, it_garant,mr_codigo, fb_codigo, substr(cl_codigo,1,2), it_status, it_valcosto, it_tipodesp, it_descue, it_activo, it_desc3, it_rentab, it_desc3tarj, ig_codigo, cl_codigo
                into :ls_promocion,:ls_marca,:li_itemiva,:ls_pepa, :ls_nombre, :lc_prefab, :lch_valstk,:lch_kit,:lc_costo,:ls_codant,:ls_base,:lch_prepa,:ls_unibas,:li_itgarant,:ls_marcas, :ls_fbcodigo, :ls_clcodigo, :ls_status, :ls_valcosto, :ls_tipodesp, :lch_descue, :lch_activo, :lch_descue3,:ls_rentab,:ls_desctarj, :ls_igcodigo, :ls_clcodprod
                from in_item
                where em_codigo = :str_appgeninfo.empresa
                and it_codant = :data;   
                If sqlca.sqlcode <> 0 then
                               
                               select estado
                               into :lch_estado
                               from sg_acceso
                               where em_codigo = :str_appgeninfo.empresa
                               and sa_login = :str_appgeninfo.username
                               and sa_activo = 'S';
                               if lch_estado = 'S' then
                                               select co_codigo,ma_codigo,it_iva,it_codigo, it_nombre, it_prefab, it_valstk,it_kit,it_costo,it_codant,it_base,it_preparado,ub_codigo, it_garant, mr_codigo, fb_codigo, substr(cl_codigo,1,2), it_status, it_valcosto, it_tipodesp, it_descue, it_activo, it_desc3, it_rentab, it_desc3tarj, ig_codigo, cl_codigo
                                               into :ls_promocion,:ls_marca,:li_itemiva,:ls_pepa, :ls_nombre, :lc_prefab, :lch_valstk,:lch_kit,:lc_costo,:ls_codant,:ls_base,:lch_prepa,:ls_unibas,:li_itgarant,:ls_marcas, :ls_fbcodigo, :ls_clcodigo, :ls_status, :ls_valcosto, :ls_tipodesp, :lch_descue, :lch_activo, :lch_descue3,:ls_rentab, :ls_desctarj, :ls_igcodigo, :ls_clcodprod
                                               from in_item
                                               where em_codigo = :str_appgeninfo.empresa
                                               and it_codbar = :data;                                  
                                               If sqlca.sqlcode <> 0 then                           
                                                               this.SetItem(row,"codant",ls_null)
                                                               this.SetItem(row,"nombre",ls_null)
                                                               this.SetItem(row,"ma_codigo",ls_null)                                 
                                                               this.SetItem(row,"co_codigo",ls_null)  
                                                               this.setitem(row, 'mr_codigo',ls_null)
                                                               this.SetItem(row,"it_preparado",ls_null)                             
                                                               this.SetItem(row,"dv_cantid",ld_null)
                                                               this.SetItem(row,"dv_precio",ld_null)
                                                               this.setitem(row, 'dv_desc1',ld_null)
                                                               this.setitem(row, 'dv_desc2',ld_null)
                                                               this.setitem(row, 'dv_desc3',ld_null)                                                   
                                                               this.setitem(row, 'dv_motor',ls_null)
                                                               this.setitem(row, 'fb_codigo',ls_null)
										             this.setitem(row, 'it_descue',ls_null)																					
 										             this.setitem(row, 'it_desc3',ls_null)				
                                                               this.setitem(row, 'cl_codigo',ls_null)
											 	   this.setitem(row, 'it_tipodesp',ls_null)
//                                                           dw_codbar.visible = true
//                                                           dw_codbar.reset()
//                                                           dw_codbar.insertrow(1)
//                                                           dw_codbar.setitem(1,"codbar",data)
//                                                           enabled = false
                                                               beep(1)
                                                               is_mensaje = "No existe código de barras"
                                                               return 1
                                               End if
                               else
                                               this.SetItem(row,"codant",ls_null)
                                               this.SetItem(row,"nombre",ls_null)
                                               this.SetItem(row,"ma_codigo",ls_null)                                 
                                               this.SetItem(row,"co_codigo",ls_null)                                 
                                               this.setitem(row, 'mr_codigo',ls_null)
                                               this.SetItem(row,"it_preparado",ls_null)                             
                                               this.SetItem(row,"dv_cantid",ld_null)
                                               this.SetItem(row,"dv_precio",ld_null)
                                               this.setitem(row, 'dv_desc1',ld_null)
                                               this.setitem(row, 'dv_desc2',ld_null)
                                               this.setitem(row, 'dv_desc3',ld_null)                                                                                                 
                                               this.setitem(row, 'dv_motor',ls_null)                                   
                                               this.setitem(row, 'fb_codigo',ls_null)
                                               this.setitem(row, 'cl_codigo',ls_null)
         						             this.setitem(row, 'it_descue',ls_null)																																				  
							             this.setitem(row, 'it_desc3',ls_null)				
									  this.setitem(row, 'it_tipodesp',ls_null)
                                               beep(1)
                                               is_mensaje = "No existe código de producto"
                                               return 1 
                               End if
    End if 


				  if  lch_activo = 'I'   Then
                               is_mensaje = 'Código dado de baja'
                               this.SetItem(row,'codant',ls_null)
                               return 1
                end if 

this.setitem(row, 'codant',ls_codant) 
  
CHOOSE CASE ls_status
	CASE 'B', 'L'
			  messagebox("Atención","Este Producto esta Bajo Pedido o Liquidación, NO SE ACEPTARAN DEVOLUCIONES DEL MISMO...!",Exclamation!)
END CHOOSE
 
  
  
  if ( isNull(dw_det.object.prodpromo[row]) or dw_det.object.prodpromo[row] = 'N') then
	  CHOOSE CASE data
			CASE 'GPW','CPW','CHPW','2015P', 'PPW', 'CPD', 'CPK' 
			  is_mensaje = "Este Producto es promocional, no se pueden facturar directamente" 
	           this.SetItem(row,'codant',ls_null)
                 return 1 
		END CHOOSE
  end if
  
  this.SetItem(row,"it_kit",lch_kit)
  this.SetItem(row,"it_preparado",lch_prepa)
  this.SetItem(row,"ma_codigo",ls_marca)  
  this.SetItem(row,"co_codigo",ls_promocion)    
//Comentado por Paco Flores 2014-03-19 para vender maquinaria
//   if row > 1  then
//                           lch_aux = getitemstring(1,"it_kit")
//                           choose case lch_aux
//                                           case 'N','S','C'
//////                                                           if getitemstring(1,"it_kit") <> lch_kit then 
//                                                                          if lch_kit = 'V' then
//                                                                                          this.SetItem(row,'codant',ls_null)
//                                                                                          beep(1)
//                                                                                          is_mensaje  = 'No puede facturar vehiculo junto con items'
//                                                                                          return 1
//                                                                          end if
//                                                           end if
//                           end choose
//            end if    



//Promociónes Bloque Items



/////************************Busca los descuentos y recargos para el producto Seleccionado******************************

							select nvl(it_recargo,0), nvl(it_desc,0)
							into:ic_recargo, :ld_desc
							from in_itesucur
							where em_codigo = :str_appgeninfo.empresa
							and su_codigo = :str_appgeninfo.sucursal
							and it_codigo = :ls_pepa;																//*****1*****///
	
							 lc_prefab += ic_recargo
	     
							 select td_codigo
							 into :ls_tipo_desc
							 from in_descitem
							 where em_codigo = :str_appgeninfo.empresa
							 and it_codigo = :ls_pepa
							 and es_codigo = '2'         
							 and di_vigente = 'S';
							 
							 select td_desc1,td_desc2,td_desc3
							 into :ld_desc1,:ld_desc2,:ld_desc3
							 from in_tippre
							 where em_codigo = :str_appgeninfo.empresa
							 and td_codigo = :ls_tipo_desc
							 and td_vigente = 'S';
							 
							 If sqlca.sqlcode <> 0      Then
												 ld_desc1 = 0
												 ld_desc2 = 0
												 ld_desc3 = 0
							 end if
		
							 ld_desc3 = ld_desc3 + ld_desc 														///*****2****//
		
/*************************Fin Busqueda descuentos ********************************************/////
                If lch_valstk = 'S'  and is_estado = '2'  or is_estado = '3' Then
						

                                 lc_pedido = 1.0
                                 si_hay = f_dame_stock_sucursal_pos (ls_pepa, lc_pedido, lc_stock,lch_kit,ic_recargo,ld_desc)
                                 ls_codant = dw_det.GetItemString(li_max,'codant')
                                 if isnull(ls_codant) or ls_codant = '' then 
                                                               dw_det.DeleteRow(li_max)
                                 end if
                                 li_max = rowcount()
                                 li_find =  dw_det.find("codant = '"+ls_codant+"'",1, li_max - 1)
							ls_zmarco =  dw_det.object.prodpromo[row] 		 
                                 if li_find > 0 and li_max > 1 and (ls_zmarco <>'P' or IsNull(ls_zmarco)) then
                                               messagebox("Atención","Ya está ingresado el código...Por favor revise, la línea "+string(li_find)+"~r~n"+&
                                                                  "STOCK EN SUCURSAL: " + string (lc_stock,"#,##0"))
                                 end if
                                 if lch_estado = 'S' then
                                                 li_find =  dw_det.find("codant = '"+data+"'",1, li_max - 1)
                                                 if li_find > 0 and li_max > 1 and dw_det.object.prodpromo[row]  <>'P' then
                                                               messagebox("Atención","Ya está ingresado el código...Por favor revise, la línea "+string(li_find)+"~r~n"+&
                                                                                                                                                             "STOCK EN SUCURSAL: " + string (lc_stock,"#,##0"))
                                                 end if                                 
                                 end if
					
								
  
  //Control para cuando el costo total es menor al costo del producto después de aplicar los descuentos tanto de sucursal como por cantidad//
					//Autor: Henry Pinchao
					//Fecha_Creación:12-10-2015
						
						
													
							lc_preciofin = (((lc_prefab * ((100 - ld_desc1)/100))*((100 - ld_desc2)/100))*((100 - ld_desc3)/100))
					
					
							if si_hay = true and lc_preciofin < lc_costo then		//Valida si el producto permite facturar bajo el costo
								if ls_valcosto='S' then
									    is_mensaje = "El PRECIO DE VENTA no puede ser inferior al COSTO... por favor reviselo antes de continuar.....! "
			                               this.SetItem(row,'codant',ls_null)
										 dw_det.object.ma_codigo[dw_det.GetRow()] =ls_null
         			                      return 1
			
								end if
							 end if 			


End if //Fin enlace proforma y factura   If lch_valstk = 'S'  and is_estado = '2'  or is_estado = '3' Then

/******************** Fin Control ************///////////////////////////////////					
If lch_valstk = 'S'  and is_estado = '2' Then						
							
							  If si_hay = true and lc_pedido = 1 Then // si existe por lo menos uno disponible
							  
												  	li_cantida_stock= wf_stock_sucursal(ls_pepa,lch_kit)		
														//*****1*****///	  
													
                                                            //   lc_prefab += ic_recargo
                                                               this.setitem(row, 'dv_cantid', 1)
                                                               this.setitem(row, 'nombre',ls_nombre)
                                                               this.setitem(row, 'dv_precio', lc_prefab)
                                                               this.setitem(row, 'dv_desc2',0)
                                                               this.setitem(row, 'it_codigo',ls_pepa)
                                                               this.setitem(row, 'it_costo',lc_costo)
                                                               this.setitem(row, 'ma_codigo',ls_marca)                                                           
                                                               this.setitem(row, 'co_codigo',ls_promocion)
                                                               this.setitem(row, 'mr_codigo',ls_marcas)
												  this.SetItem(row,"ig_codigo",ls_igcodigo)  
                                                               this.SetItem(row,"it_preparado",lch_prepa)                                                   
                                                               this.setitem(row, 'it_kit',lch_kit)                                                                                                                           
                                                               this.SetItem(row,"it_valstk",lch_valstk)
                                                               this.setitem(row, 'fb_codigo',ls_fbcodigo)
                                                               this.setitem(row, 'cl_codigo',ls_clcodigo)
												   this.setitem(row, 'cl_codprom',ls_clcodprod)
										             this.setitem(row, 'it_descue',lch_descue)	 
  												   this.setitem(row, 'it_desc3', lch_descue3)	 
                                                               this.setitem(row, 'it_sucstock',li_cantida_stock)
                                                               this.setitem(row, 'it_rentab',ls_rentab)
 												   this.setitem(row, 'it_desc3tarj',ls_desctarj)

												  
												    if ( isNull(dw_det.object.prodpromo[row]) ) then
															dw_det.object.prodpromo[row] = 'N'			
  												    elseif dw_det.object.prodpromo[row] = 'P' then
															this.setitem(row, 'dv_precio', 0)	
															  This.setitem(row, 'dv_desc1',0)
										          			 This.setitem(row, 'dv_desc2', 0)
										               		 This.setitem(row, 'dv_desc3',0)
												   end if
														
													if li_itemiva	= 1 then
														this.setitem(row, 'im_codigo',s_iva.im_codigo)		
													else
														this.setitem(row, 'im_codigo','0')
													end if

                                                               if ls_clcodigo = 'A5' then //linea automotriz
                                                                              ib_clcodigo = true
                                                               end if
																					
											//		dw_det.object.b_nostock.visible = false 
                                 else 
                                               If lch_kit = 'S' or lch_kit = 'C'  Then
                                                               select y.it_codigo,y.ri_cantid
                                                               into :ls_codigo_atomo,:ld_stock_disponible
                                                               from  in_item x,in_relitem y
                                                               where x.em_codigo = y.em_codigo
                                                               and x.it_codigo = y.it_codigo1
                                                               and y.em_codigo = :str_appgeninfo.empresa
                                                               and x.it_codant = :ls_codant
                                                               and y.tr_codigo = '1';
                                               else
                                                               ls_codigo_atomo = ls_pepa
                                                               ld_stock_disponible = 1
                                               end if                    
															  
									setnull(ld_stock)
									
									 // dw_det.object.b_nostock.visible = true
									  dw_stock_sucur.retrieve(1,ls_codigo_atomo,2,ld_stock_disponible,ls_codant,ls_nombre,lch_kit, ld_stock, ld_stock) 
                              
									  dw_stock_sucur.visible = true
                                       		  is_mensaje = 'Stock en sucursal: ' + string (lc_stock,"#,##0")                      
							               messagebox("Atención","Stock en sucursal: "+ string (lc_stock,"#,##0"))
                                         //      messagebox("Atención","Stock en sucursal: "+ string (lc_stock,"#,##0") + '~t Puede Acceder al Stock en otras Sucursales para realizar una pre-venta presionando el boton Stock_Insuficiente')
                                               this.SetItem(row,'codant',ls_null)
                                               this.SetItem(row,"ma_codigo",ls_null)                                               
                                               this.SetItem(row,"co_codigo",ls_null)
                                               this.setitem(row, 'mr_codigo',ls_null)
                                               this.SetItem(row,"it_preparado",lch_prepa)
                                               this.SetItem(row,"nombre",ls_null)
                                               this.SetItem(row,"dv_cantid",ld_null)
                                               this.SetItem(row,"dv_precio",ld_null)
                                               this.setitem(row, 'dv_desc1',ld_null)
                                               this.setitem(row, 'dv_desc2',ld_null)
                                               this.setitem(row, 'dv_desc3',ld_null)
                                               this.setitem(row, 'dv_motor',ls_null)
                                               this.setitem(row, 'dv_chasis',ls_null)
                                               this.setitem(row, 'fb_codigo',ls_null)
						  	            this.setitem(row, 'it_descue',ls_null)	
									  this.setitem(row, 'it_desc3', ls_null)	 
                                               this.setitem(row, 'cl_codigo',ls_null)
 									  this.setitem(row, 'it_tipodesp',ls_null)
                                               dw_stock_sucur.setfocus()
                                               beep(1)
                                               return                                                                                                                                                
                               end if // fin de si hay o no
                else
                                        
											//*****1*****///               
											
                                              // lc_prefab += ic_recargo
                                               this.setitem(row, 'dv_cantid', 1)
                                               this.setitem(row, 'nombre',ls_nombre)
                                               this.setitem(row, 'dv_precio', lc_prefab)
                                               this.setitem(row, 'dv_desc2',0)                                               
                                               this.setitem(row, 'it_codigo',ls_pepa)
                                               this.setitem(row, 'ma_codigo',ls_marca)                            
                                               this.setitem(row, 'co_codigo',ls_promocion)
                                               this.setitem(row, 'mr_codigo',ls_marcas)
                                               this.setitem(row, 'it_preparado',lch_prepa)
                                               this.setitem(row, 'it_costo',lc_costo)
                                               this.setitem(row, 'it_kit',lch_kit)                                                                                                                           
                                               this.SetItem(row,"it_valstk",lch_valstk)
                                               this.setitem(row, 'fb_codigo',ls_fbcodigo)
									  this.SetItem(row,"ig_codigo",ls_igcodigo)  
									  this.setitem(row, 'it_descue',lch_descue)		
									  this.setitem(row, 'it_desc3', lch_descue3)	 
                                               this.setitem(row, 'cl_codigo',ls_clcodigo)
								       this.setitem(row, 'cl_codprom',ls_clcodprod)
								       this.setitem(row, 'it_rentab',ls_rentab)
									   this.setitem(row, 'it_desc3tarj',ls_desctarj)
										 
									  if ( isNull(dw_det.object.prodpromo[row]) ) then
															dw_det.object.prodpromo[row] = 'N'		

							  	    elseif dw_det.object.prodpromo[row] = 'P' then
															this.setitem(row, 'dv_precio', 0)	
															  This.setitem(row, 'dv_desc1',0)
										          			 This.setitem(row, 'dv_desc2', 0)
										               		 This.setitem(row, 'dv_desc3',0)
									end if
										 
										  this.setitem(row, 'it_valcosto',ls_valcosto)	
 	    						  			  if li_itemiva	= 1 then
													this.setitem(row, 'im_codigo',s_iva.im_codigo)		
											else
													this.setitem(row, 'im_codigo','0')
										end if
   										  this.setitem(row, 'it_tipodesp',ls_tipodesp)
                                               if ls_clcodigo = 'A5' then
                                                                              ib_clcodigo = true
                                               end if
                end if

/*           if is_estado = '2' then //Factura
                               //filtrado para verificar si a este item le falta realizar el ajuste de egreso             
                               select it_codigo
                               into :ls_itcodigo
                               from in_ajuste
                               where tm_codigo = '3'
                               and tm_ioe = 'I'
                               and it_codigo = trim(:ls_pepa)
                               and su_codigo = trim(:str_appgeninfo.sucursal)
                               and em_codigo = trim(1)
                               and bo_codigo = trim(:str_appgeninfo.seccion)
                               and da_estado = 'N';
                
                               if ls_itcodigo = ls_pepa then
                                               deleterow(row)                              
                                               is_mensaje  = 'Falta realizar egreso x preventa de este item'
                                                 If str_appgeninfo.estado = '1' Then
                                                               SetItem(1,'c_formato','Nota de Venta POS')
                                               else
                                                               SetItem(1,'c_formato','Factura POS')
                                               end if
                                               return 1
                               end if
                end if */

				
					// Mensaje de alerta cuando se factura uno de los codigo que se encuentran en la consulta para que se pueda controlar la asesoría de los mismos
					//	Henry Pinchao -- 22/11/2016
					
							choose case data
								case 'M3600-GL', 'M3610-20K', 'M3615-15L'
									messagebox('Aviso', 'Confirmar con Ventas Externas que el cliente haya sido asesorado por el Arq. Madrid' , Exclamation!)
							end choose 
								
					//fin Mensaje de alerta ...
						
                	
					 //Busco los descuentos
            
					///*********2***************//
                
                This.setitem(row, 'dv_desc1',ld_desc1)
                This.setitem(row, 'dv_desc2', ld_desc2)
                This.setitem(row, 'dv_desc3',ld_desc3)
                this.setitem(row, 'it_iva',li_itemiva)
                this.setitem(row, 'it_base',ls_base)
	  		 this.setitem(row, 'it_tipodesp',ls_tipodesp)
 			   this.SetItem(row,"ub_codigo",ls_unibas)       
		      this.setitem(row, 'it_rentab',ls_rentab)
			  this.setitem(row, 'it_desc3tarj',ls_desctarj)
			 if ( isNull(dw_det.object.prodpromo[row]) ) then
				dw_det.object.prodpromo[row] = 'N'			
  			elseif dw_det.object.prodpromo[row] = 'P' then
							this.setitem(row, 'dv_precio', 0)	
							This.setitem(row, 'dv_desc1',0)
							This.setitem(row, 'dv_desc2', 0)
							This.setitem(row, 'dv_desc3',0)
			end if
			this.setitem(row, 'it_descue',lch_descue)				 
                //jaic
                this.SetItem(row,"it_garant",li_itgarant)
                //end jaic
                setnull(ls_codaux)
                
                
                //choose case str_appgeninfo.sucursal //jaic LM-90P   
                //case '38' //jaic LM-90P              
                               //ls_itcodigo = getitemstring(i,"it_codigo") //jaic LM-90P           
                               if ls_pepa = ('25855') or  ls_pepa = ('27016') then //jaic LM-90P y LEO
                                               setitem(dw_det.GetRow(),"dv_desc3",100.00)//jaic LM-90P   
                               end if//jaic LM-90P        
                //end choose //jaic LM-90P       
                
                if lch_kit = 'V' then
//para recuperar con el código interno 2015-06-26 PF
//                               openwithparm(w_venta_vehiculo,data)
                               openwithparm(w_venta_vehiculo,ls_pepa)
                               li_find =  dw_det.find("dv_motor = '"+str_prodparam.motor+"'",1, li_max - 1)
                               if li_find <> 0 and li_max <> 1 then
                                               deleterow(row)                                                                                                                                            
                                               is_mensaje = "Ya está ingresado el vehículo con motor: "+str_prodparam.motor+" ...Por favor revise, la línea "+string(li_find)
                                               return 1
                               end if
                               this.setitem(row,'dv_motor',str_prodparam.motor)
                               this.setitem(row,'dv_chasis',str_prodparam.chasis)
                else
                               This.setitem(row, 'dv_motor',ls_codaux)
                               this.setitem(row, 'dv_chasis',ls_codaux)
                end if

                if isnull(ls_base) then
                               setnull(str_prodparam.codant)
                               setnull(str_prodparam.cod_base)
										 
                elseif len(ls_base) = 3 or ls_tipodesp='S' or ls_tipodesp='F' then
                               dw_det.Settaborder("dv_motor",25)

                else
                               str_prodparam.codant = ls_pepa
                               str_prodparam.cod_base = ls_base

                              SELECT IT_PRECIOFORM
						INTO :ll_precioform
						FROM IN_ITEM
						WHERE  IT_CODANT = :data;

						openwithparm(w_color_preparado_sif, string(ll_precioform))

                end if
					 
					 

			lc_des3 = dw_det.object.dv_desc3[dw_det.GetRow()]	 
                setcolumn('dv_cantid')
                setfocus()
			
				

case "dv_cantid"
                accepttext()
                lc_pedido = getitemnumber(row,"dv_cantid") 
                ls_codant = getitemstring(row,"codant") 
                If lc_pedido <= 0.00 Then
                               is_mensaje = 'La cantidad debe ser mayor a cero'
                               this.SetItem(row,'dv_cantid',ld_null)
                               return 1
                End if
                If isnull(ls_codant) Then
                               is_mensaje = 'Ingrese el código del producto'
                               this.SetItem(row,'dv_cantid',ld_null)
                               return 1
                End if    	

                lch_valstk = getitemstring(row,"it_valstk")
                ls_pepa = getitemstring(row,"it_codigo")           
                ls_nombre = getitemstring(row,"nombre")                       
                lc_prefab = getitemdecimal(row,"dv_precio")                                 
                lch_kit = getitemstring(row,"it_kit")

//promocion del 17 de noviembre de 2014
//ls_leyenda = ''
//**********************PROMOCION DE WESCO*********************************///	 

//				CHOOSE CASE ls_codant			 
//				CASE 'KW1', 'KW2','GPW','CPW'
//						  num_boletos = promociones(5)
//						IF  lc_pedido > (num_boletos ) THEN
//							 messagebox('Aviso','La cantidad de este producto debe ser menor o igual a '+String(num_boletos), StopSign!)
//							 dw_det.object.dv_cantid[this.getrow()] = 0
//							 return 1 
//						
//						END IF
//				END CHOOSE

//////////////////*****************************************************************************///////////	 	

                if lch_kit = 'V' and lc_pedido > 1 then
                               messagebox('Error','La cantidad debe ser uno (1) para este producto',stopsign!)
                               lc_pedido = 1
                end if
                If lch_valstk =  'S'  Then
                    f_dame_stock_sucursal_pos(ls_pepa, lc_pedido, lc_stock,lch_kit,ic_recargo,ld_desc)
                    If is_estado = '2' Then // si existe por lo menos uno disponible
                       If lc_stock >= lc_pedido  Then
                                                              if lch_kit = 'V' then
                                                                              setnull(is_mensaje)
                                                                              this.setitem(row, 'dv_cantid', lc_pedido)
                                                                              return 1
                                                               else
                                                                this.setitem(row, 'dv_cantid', lc_pedido)
                                                               end if
                                   else 
                                                               is_mensaje = 'Stock en sucursal: ' + string (lc_stock,"#,##0")
                                                               this.SetItem(row,"dv_cantid",lc_stock)
                                                               beep(1)
                                                               return 1
                                   end if // fin de si hay o no
                               End if
                If is_estado = '3' Then 
       					If lc_stock < lc_pedido  Then
                                                               is_mensaje = 'Stock en sucursal: ' + string (lc_stock,"#,##0")
                                                               this.setitem(row, 'dv_cantid', lc_pedido)
                                                               scrolltorow(row + 1)
                                                               setcolumn('codant')
                                                               setfocus()
                                                               return 1
                               End if
                End if
					 
			//descuentos de items en tabla in_desccant
SELECT GV_CODIGO
INTO  :ls_usuario_pos
FROM PR_SUCUR
WHERE SU_CODIGO =:str_appgeninfo.sucursal;

IF (ls_usuario_pos <> 'M') THEN
		select count(*) into :li_count_cant from in_desccant where it_codigo = :ls_pepa 	;
	
		if li_count_cant > 0 then  //count
		select nvl(max(td_desc3),-1)
		into :li_descadic
		from in_desccant
		where it_codigo = :ls_pepa and td_cantid <= :lc_pedido
		and es_codigo = '2';
		
		if li_descadic >= 0 Then 
			setitem(row,"dv_desc3",li_descadic)			
		ELSE
			setitem(row,"dv_desc3",lc_des3)			
		End if
			lc_costo = dw_det.getitemdecimal(row,"it_costo")		
			ll_candes = dw_det.getitemnumber(row,"dv_candes")				
			lc_precio = dw_det.getitemdecimal(row,"dv_precio")
			lc_desc1 = dw_det.getitemdecimal(row,"dv_desc1")
			lc_desc2 = dw_det.getitemdecimal(row,"dv_desc2") 
			lc_desc3 = dw_det.getitemdecimal(row,"dv_desc3")
			lch_itcosto = dw_det.object.it_valcosto[row]
			lc_total = ll_candes*(((lc_precio * ((100 - lc_desc1)/100))*((100 - lc_desc2)/100))*((100 - lc_desc3)/100))
			lc_preciodesc = (((lc_precio * ((100 - lc_desc1)/100))*((100 - lc_desc2)/100))*((100 - lc_desc3)/100))
			lc_costo = lc_costo / (1 - ic_descuento) 
			if lc_preciodesc < lc_costo  then
				if ls_valcosto='S' then
					messagebox('Error','El precio no puede ser menor a $'+ string(lc_costo,'#,##0.00')+' dólares.')
					lc_desc3 = 0.00 
					SetItem(row,'dv_desc3',lc_desc3)
				end if
			End if
			dw_det.setitem(row,"dv_total",lc_total)
	
	end if	 //count
			 	
END IF
	
End if
case "dv_precio"
	  accepttext()
                ls_codant =        getitemstring(row,"codant")
                lc_costo = getitemdecimal(row,"it_costo")
                lc_precio = getitemdecimal(row,"desc3")                           
                lc_pedido = getitemdecimal(row,"dv_cantid")        
  			   lch_itcosto = dw_det.object.it_valcosto[row]
                lc_costo = lc_costo *lc_pedido
                If lc_precio < lc_costo then
						if ls_valcosto='S' then
                                 	setitem(row,"dv_desc3",0.00)
							setitem(row,"dv_precio",0.00)
                                 is_mensaje = 'El precio de venta del item [ '+ls_codant+' ] no puede ser menor a $'+ string(lc_costo,'#,##0.00')+' dólares.'
                                 return 1
						end if
                  End if

case "dv_desc1" 
                accepttext()
                ls_codant =        getitemstring(row,"codant")
                lc_costo = getitemdecimal(row,"it_costo")
                lc_precio = getitemdecimal(row,"desc3")                           
                lc_pedido = getitemdecimal(row,"dv_cantid")        
  			   lch_itcosto = dw_det.object.it_valcosto[row]
			   lc_costo = lc_costo *lc_pedido
                If lc_precio < lc_costo then
						if ls_valcosto='S' then
                                 setitem(row,"dv_desc3",0.00)
                                 is_mensaje = 'El precio de venta del item [ '+ls_codant+' ] no puede ser menor a $'+ string(lc_costo,'#,##0.00')+' dólares.'
                                 return 1
						end if
                  End if
case "dv_desc2" 
                accepttext()
                ls_codant =        getitemstring(row,"codant")     
                lc_costo = getitemdecimal(row,"it_costo")
                lc_precio = getitemdecimal(row,"desc3")                           
                lc_pedido = getitemdecimal(row,"dv_cantid")                                
                lc_costo = lc_costo *lc_pedido
                If lc_precio < lc_costo then
						if ls_valcosto='S' then
                                 setitem(row,"dv_desc3",0.00)
                                 is_mensaje = 'El precio de venta del item [ '+ls_codant+' ] no puede ser menor a $'+ string(lc_costo,'#,##0.00')+' dólares.'
                                 return 1
						end if
                  End if

case "dv_desc3" 
                //jaic
                accepttext()
                ls_codant =        getitemstring(row,"codant")     
                lc_costo = getitemdecimal(row,"it_costo")
                lc_precio = getitemdecimal(row,"desc3")                           
                lc_pedido = getitemdecimal(row,"dv_cantid")                                
//            lc_costoiva = (lc_costo / (1 - lc_descue))*lc_pedido
                lc_costo = (lc_costo / ((100 - ii_sucodautoriza) / 100) ) * lc_pedido
 
         	   ll_costo_porc = lc_costo * (1+ll_check_porcentaje_aut)
				
//				IF lc_precio < ll_costo_porc and ll_chek_autoriza = 1 THEN
//							  setitem(row,"dv_desc3",0.00)
//                                 is_mensaje = 'El precio de venta del item [ '+ls_codant+' ] no puede ser menor a $'+ string(ll_costo_porc,'#,##0.00')+' dólares.'
//                                 return 1
//				END IF

		
			dw_ori_descuento.visible = true
			dw_det.enabled = false
			
			If lc_precio < lc_costo then
					if ls_valcosto='S' then
                                 setitem(row,"dv_desc3",0.00)
                                 is_mensaje = 'El precio de venta del item [ '+ls_codant+' ] no puede ser menor a $'+ string(lc_costo,'#,##0.00')+' dólares.'
                                 return 1
				end if
                  End if
						
						
		
End choose
end event

event itemerror;messagebox("Atención",is_mensaje)
//if dw_codbar.visible = true then
//            dw_codbar.setcolumn("codant")
//            dw_codbar.setfocus()
//end if
return 1

end event

event buttonclicked;int li_max,li_itetar,li_i, li_cantid, li_cantprom, i, li_visdesc2//, li_countlm90
long ll_pos,ll_pos1,ll_pos2, ll_verifica,ll_ticket, ll_filadet
string ls_codcli,ls_cliente,ls_numtarj,ls_pepa,ls_codtarj,&
                               ls_numtar,ls_ifcodigo, ls_itcodprom, ls_codant, ls_desc3, ls_desctarj3, ls_premios[], ls_estadotarj, ls_itcodorg
dec{2} lc_desc,lc_descaux,lc_desc3, lc_porctj, ld_total, ld_dtemin, ld_dtemax, lc_desc_proescuelas
date ld_hoy
char lch_desc

li_cantid = 0  //leo

if dwo.name = "b_nostock" then
	dw_stock_sucur.visible = true

end if


if dwo.name = 'b_6' then
dec{2} lc_descue,lc_dscpos
string ls_itcodigo, ls_costo             //jaic LM-90P
char lch_itcosto, lch_itdescue
			
		           if dw_cab.visible = false then
                               lc_descue = getitemdecimal(row,'dv_desc2')
                               If lc_descue = 0 Then  
											
                                               Select ps_valor
                                               into :lc_dscpos 
                                               from pr_numsuc
                                               where em_codigo = :str_appgeninfo.empresa
									  and su_codigo = :str_appgeninfo.sucursal
                                               and pr_nombre = 'DSC_POS';
															  

															  
                                               if sqlca.sqlcode <> 0 Then
                                                 messagebox('Error Interno','Problemas con descuento en efectivo POS...<Informe a sistemas>')
                                                 return
                                               End if    
                                               
                                               for i = 1 to this.rowcount()
//                                                           choose case str_appgeninfo.sucursal //jaic LM-90P       
//                                                           case '38' //jaic LM-90P  
                                                                              ls_itcodigo = getitemstring(i,"it_codigo") //jaic LM-90P               
                                                                              if ls_itcodigo = '25855' or ls_itcodigo = '27016' then //jaic LM-90P y LEO
                                                                                              setitem(i,"dv_desc3",100.00)//jaic LM-90P        
                                                                              end if//jaic LM-90P        
//                                                           end choose //jaic LM-90P           
                                                               
                                                               
                                                               //            if ls_itcodigo = '4391'  or ls_itcodigo = '11356' then //jaic obsequio
                                                               //            else  //jaic obsequios
																					
                                                               accepttext()

												 lch_itdescue = dw_det.object.it_descue[i]							
                                    
												if lch_itdescue = 'S' then		
                                                             	  setitem(i,"dv_desc2",lc_dscpos)
												end if


														lch_itcosto = dw_det.object.it_valcosto[i]
                                                               If getitemdecimal(i,"desc3") < (getitemdecimal(i,"it_costo")*getitemdecimal(i,"dv_cantid")) then
															if lch_itcosto='S' then   
															     setitem(row,"dv_desc2",0.00) //cambiado row a i por que pone el descuento en la fila equivocada Paco Flores 2014-04-24
                                                                                setitem(i,"dv_desc2",0.00)
                                                                                messagebox("Error",'El precio de venta del item [ '+getitemstring(i,"codant")+' ] no puede ser menor a $'+ string(getitemdecimal(i,"it_costo"),'#,##0.00')+' dólares.')
                                                                                return
 														end if
									                  End if
                                                                              //end if //jaic obsequios
                                               next
															  
											   	if ii_visdesc2 = 1 then
													dw_det.object.p_desc2.visible = false
												elseif ii_visdesc2 = 0 then
													dw_det.object.p_desc2.visible  = true
													      messagebox('Aviso','Se acaba de aplicar el descuento 2 en los items de la factura....!', Exclamation!)
												end if
									       
											 
											
												

                               else
                                               for i = 1 to this.rowcount()
                                                               
							                          ls_itcodigo = getitemstring(i,"it_codigo") //jaic LM-90P
										 		 setitem(i,"dv_desc2",0.00)
											
                                                               
//                                                           choose case str_appgeninfo.sucursal //jaic LM-90P       
//                                                           case '12','11' //jaic LM-90P
//                                                                          if ls_itcodigo = '22757' then //jaic LM-90P
//                                                                                          setitem(i,"dv_desc3",0.00) //jaic LM-90P            
//                                                                          end if //jaic LM-90P       
//                                                           end choose
                                                               
                                               next      
								
									if ii_visdesc2 = 0 then
											dw_det.object.p_desc2.visible  = false
											messagebox('Aviso','Se desactivo el descuento  2 en los items de la factura....!', Exclamation!)
									end if
               
									
							
							
                end if
End if

end if

if dwo.name = "b_5" then  // Condición que verifica los codigos de Movistar 

li_max = this.RowCount()
if isnull(getitemstring(li_max,"codant"))Then
                deleterow(li_max)
End if
li_max = this.RowCount()
if isnull(getitemstring(getrow(),"codant")) then return
ls_codtarj = sle_3.text

is_tarj = f_control_codmovi(ls_codtarj)


CHOOSE CASE is_tarj[2]
	CASE 'N'
		   messagebox("Atención","El codigo Movistar  No Existe", StopSign!)
                return 
	CASE 'C'
			   messagebox("Atención","El Codigo Movistar esta Caducada", StopSign!)
                return 
	CASE 'U'
			   messagebox("Atención","El Codigo Movistar Ya se Utilizo", StopSign!)
                return 
	CASE 'S'				 
			is_tarj[3] =ls_codtarj
			ll_filadet = dw_det.rowcount()
			if ll_filadet = 0 then 
			   messagebox("Atención","Ingrese Primero los productos para generar el descuento", StopSign!)
				 sle_1.text = ''
				 dw_det.insertrow(0)
				 dw_det.setcolumn('codant')
 				 dw_det.setfocus()
				return 
			else
				this.accepttext( )
				ld_total = this.object.cc_tarjeta[1]

					dw_det.enabled = false
					dw_cab.visible = false
					dw_actuclimovi.visible = true
					dw_actuclimovi.settransobject( sqlca)
					dw_actuclimovi.insertrow(0)
					dw_actuclimovi.object.cod_promo[1] = sle_3.text
					dw_actuclimovi.setcolumn('celular')
					dw_actuclimovi.setfocus()
					sle_3.enabled = false

					return 1
			
		
		end if	

END CHOOSE

end if

if dwo.name = "b_4" then  // Condición que verifica los codigos de Tarjeta Amigo 
li_max = this.RowCount()
if isnull(getitemstring(li_max,"codant"))Then
                deleterow(li_max)
End if
li_max = this.RowCount()
if isnull(getitemstring(getrow(),"codant")) then return
ls_codtarj = sle_2.text

is_tarj = f_control_tarjeta(ls_codtarj)



CHOOSE CASE is_tarj[2]
	CASE 'N'
		   messagebox("Atención","La Tarjeta No Existe", StopSign!)
                return 
	CASE 'C'
			   messagebox("Atención","La Tarjeta esta Caducada", StopSign!)
                return 
	CASE 'U'
			   messagebox("Atención","La Tarjeta Ya se Utilizo", StopSign!)
                return 
	CASE 'S'				 
			is_tarj[3] =ls_codtarj
			ll_filadet = dw_det.rowcount()
			if ll_filadet = 0 then 
			   messagebox("Atención","Ingrese Primero los productos para generar el descuento", StopSign!)
				 sle_1.text = ''
				 dw_det.insertrow(0)
				 dw_det.setcolumn('codant')
 				 dw_det.setfocus()
				return 
			else
				this.accepttext( )
				ld_total = this.object.cc_tarjeta[1]
				/// Parametro Maximo Tarjeta Club Amigos
				select pr_valor
				into :ld_dtemax
				from pr_param 
				where em_codigo = :str_appgeninfo.empresa and 
					 pr_nombre = 'DTE_MAX';
				if sqlca.sqlcode < 0 then
					messagebox("Atención","No se puede obtener el Descuento Mínimo en Tarjeta Empleado", StopSign!)
					return
				end if
				/// Parametro Minimo Tarjeta Club Amigos
	 			select pr_valor
				into :ld_dtemin
				from pr_param 
				where em_codigo = :str_appgeninfo.empresa and 
					 pr_nombre = 'DTE_MIN';
				if sqlca.sqlcode < 0 then
					messagebox("Atención","No se puede obtener el Descuento Máximo en Tarjeta Empleado", StopSign!)
					return
				end if


				if ld_total < ld_dtemin or ld_total > ld_dtemax then
					messagebox("Atención","Los descuentos Tarjeta Club Amigos aplican en compras : ~r Mínimo: " + string(ld_dtemin,'#,##0.00' ) + " (USD).  ~r Máximo: " + string(ld_dtemax,'#,##0.00' ) + " (USD) ", StopSign!)
					return 
				end if
			for i = 1 to ll_filadet
				ls_desc3 = dw_det.object.it_desc3[i]
				ls_desctarj3 =  dw_det.object.it_desc3tarj[i]
				lc_desc3 = dw_det.object.dv_desc3[i]
				if ls_desc3 = 'S' and ls_desctarj3= 'S' and lc_desc3 = 0  then
					setitem(i,"dv_desc3",dec(is_tarj[1]))
				end if
				sle_2.text = ''  //Setea el campo Ingresado en la tarjeta descuento
			next
			end if
		   messagebox("Atención","El Descuento Fue Aplicado Satisfactoriamente...!", Exclamation!)
		    dw_det.object.b_5.enabled = false
		    sle_3.enabled = false

END CHOOSE

end if

li_cantid = 0  //leo

if dwo.name = "b_1" then  // Control de Otras Tarjetas de Descuento

ls_codtarj = sle_1.text		
ll_pos2 = pos(ls_codtarj,"_")
ls_numtar = mid( ls_codtarj , 2, ll_pos2 - 2)


If ls_numtar = '' or IsNull(ls_numtar) then
	    messagebox("Aviso","Ingrese la Tarjeta por el Lector de Banda Magnetica...",stopsign!)
	   sle_1.enabled = true
	   sle_1.setfocus()		

         return
end if

		
select cs_numero,if_codigo, ce_codigo, estado
into :ls_numtarj,:ls_ifcodigo, :ls_codcli, :ls_estadotarj
from fa_ctacli
where cs_numero = :ls_numtar
and cs_estado = 'E';


If ls_numtar = ls_numtarj Then
					 ib_pasa_tarj = true
					  sle_1.enabled = false
					  is_inprom_schools = 'T'
End if                                      

if ib_pasa_tarj = true  and is_inprom_schools = 'T' then

					
			select ce_codigo,ce_rucic
			into:ls_cliente,:is_rucic
			from fa_clien
			where ce_codigo = :ls_codcli
			and em_codigo = :str_appgeninfo.empresa;
			
			if sqlca.sqlcode < 0 Then
								 messagebox("Atención","Cliente no registrado")
								 return
			End if
			
			if dw_cedtarj.rowcount( ) = 0 and ls_cliente='1' then
				dw_cedtarj.visible = true
				dw_det.enabled = false
				dw_cab.enabled = false
				dw_cedtarj.settransobject(sqlca)
				dw_cedtarj.insertrow(0)
				dw_cedtarj.setcolumn('cedula')
				dw_cedtarj.setfocus()
				return 1
			end if
			
			
			If sqlca.sqlcode < 0 then
							messagebox("Error","Tarjeta no ingresada...Comuniquese con sistemas." +SQLCA.SQLErrText,stopsign!)
								 return
			else 
				
				ls_itcodprom = ''
			
				
				for li_i = 1 to dw_det.rowcount( )
					
					this.accepttext( )
					ls_premios[2] =  '0' 
					ls_itcodprom = ''
					ls_itcodorg = dw_det.object.it_codigo[li_i]
					SELECT IT_CODORIGEN
					INTO :ls_itcodprom 
					FROM PM_ITEMXPROM, PM_PROMOCION, PM_SUCPROM
					WHERE PM_PROMOCION.PP_CODIGO = PM_ITEMXPROM.PP_CODIGO
					AND PM_PROMOCION.PP_CODIGO = PM_SUCPROM.PP_CODIGO
					AND IT_CODORIGEN = :ls_itcodorg
					AND PM_PROMOCION.PP_CODIGO = 26
					AND PP_ACTIVO = '1'
					AND PP_POS = '1'
					AND PM_SUCPROM.PS_ESTADO = '1'
					AND TRUNC(PP_FECCAD) >= TRUNC(SYSDATE)
					AND TRUNC(PS_FECCAD) >= TRUNC(SYSDATE);
					
					
					
					if ls_itcodprom <> '' then
						//setcolumn('dv_cantid')
						li_cantid = li_cantid + this.object.dv_cantid[li_i]
						this.object.pp_codigo[li_i] = '26'
					end if
				
				next
				
				for li_i = 1 to dw_det.rowcount( )
						
						if li_cantid >=5 then
								ls_premios = f_promociones(26,String(li_cantid),ls_itcodprom,'0','0','0','0','0','0','0','0') 
						end if
							
						if ls_premios[2] <> '0' and this.object.pp_codigo[li_i] = '26' then 
							lc_desc = Dec(ls_premios[2])
							setitem(li_i,"dv_desc3",lc_desc)
							is_inprom_schools = 'S'
							is_codtarj = ls_numtarj
							is_codcli_school = ls_numtarj
						end if
					
				next 
				
			
				if is_inprom_schools = 'S' then
						 messagebox("Atención","El Descuento fue aplicado Satisfactoriamente.....!")
						 sle_1.text = ''
				else
						 messagebox("Atención","No se aplico el Descuento Promocional.....!")
						 sle_1.text = ''
				end if
				dw_cedtarj.reset()
				
			end if			
end if


IF is_inprom_schools <> 'T'  and   is_inprom_schools <> 'S'  THEN

		
		li_max = this.RowCount()
		if isnull(getitemstring(li_max,"codant"))Then
							 deleterow(li_max)
		End if
		li_max = this.RowCount()
		if isnull(getitemstring(getrow(),"codant")) then return
		ls_codtarj = sle_1.text
		If ls_codtarj <> ""  and ls_codtarj <> "" Then
		//Se obtiene el cod. de la empresa y cliente
		if is_codtarj = sle_1.text then 
							 messagebox("Atención","La Tarjeta ya fue leida...DEBE INICIAR UN NUEVO TICKET")
							 return
		end if
		ib_pasa_tarj = false
		//ll_pos = pos(ls_codtarj," ") 
		//ls_codcli = mid(ls_codtarj,2,ll_pos - 2)
		//ll_pos2 = pos(ls_codtarj,"_") - ll_pos
		//ls_numtar = mid(ls_codtarj,ll_pos + 1,ll_pos2 - 1)
		
		ll_pos2 = pos(ls_codtarj,"_")
		ls_numtar = mid( ls_codtarj , 2, ll_pos2 - 2)
		
		select cs_numero,if_codigo, ce_codigo
		into :ls_numtarj,:ls_ifcodigo, :ls_codcli
		from fa_ctacli
		where cs_numero = :ls_numtar
		//and ce_codigo = :ls_codcli
		and cs_estado = 'T';
		
		If sqlca.sqlcode < 0 then
						messagebox("Error","Tarjeta no ingresada...Comuniquese con sistemas." +SQLCA.SQLErrText,stopsign!)
							 return
		end if
		
		
		select ce_codigo,ce_rucic
		into:ls_cliente,:is_rucic
		from fa_clien
		where ce_codigo = :ls_codcli
		and em_codigo = :str_appgeninfo.empresa;
		if sqlca.sqlcode < 0 Then
							 messagebox("Atención","Cliente no registrado")
							 return
		End if
		
		
		If ls_numtar = ls_numtarj Then
							 ib_pasa_tarj = true
		End if                                      
		
		if ib_pasa_tarj = true then
							 for li_i = 1 to li_max
												 ls_pepa = getitemstring(li_i,"it_codigo")
												 lc_desc3 = getitemdecimal(li_i,"dv_desc3")                      
												 li_itetar = 0
												
												
												 select count(it_codigo),it_desc, it_codprom
												 into:li_itetar,:lc_desc, :ls_itcodprom
												 from in_itetar
												 where it_codigo = :ls_pepa 
												 and if_codigo = :ls_ifcodigo
												 and em_codigo = :str_appgeninfo.empresa
												 group by it_desc,it_codprom;
												 
												 If sqlca.sqlcode < 0 then
																	  messagebox("Error","Comuniquese con sistemas " +SQLCA.SQLErrText,stopsign!)
																	  return
												 end if
												 
												 select pr_valor
												 into :li_cantprom
												 from pr_param
												 where pr_nombre = 'CANTPROMO';
												 
												 if li_itetar > 0 Then
																	  lc_desc = lc_desc + lc_desc3
																	  setitem(li_i,"dv_desc3",lc_desc)
																	  //if ls_ifcodigo = '102' then //LEO
																							li_cantid =  li_cantid + getitemnumber(li_i, "dv_cantid")  //leo
																							
																							//setitem(li_i,"dv_motor",'LEO') //LEO
																							setitem(li_i,"dv_motor",ls_itcodprom) //LEO
																							
																							//si entra aunmentar uno en la tabla ???? //LEO
																							integer li_countleo //LEO
																							
																												select nvl(sum(d.dv_cantid),0)  //LEO
																												into :li_countleo //LEO
																												from fa_venta c, fa_detve d //LEO
																												where c.em_codigo = d.em_codigo and //LEO
																												c.su_codigo = d.su_codigo and //LEO
																												c.bo_codigo = d.bo_codigo and //LEO
																												c.ve_numero = d.ve_numero and //LEO
																												trim(d.dv_motor) = :ls_itcodprom and  //LEO código de la in_itetar
																												c.ce_codigo = :ls_codcli; //LEO
																												li_countleo =  li_countleo + li_cantid
																												
																												if li_countleo >= 10 then //LEO
																																	 //mandar a buscar el producto que va a ser ingresado el XKM60-1G LEO
																																	 integer li_bombaleo
																																	 select sum(ib_stock)  //jaic LEO               
																																	 into :li_bombaleo //jaic LEO       
																																	 from in_itebod //jaic LEO
																																	 where em_codigo = :str_appgeninfo.empresa //jaic LEO
																																	 and su_codigo = :str_appgeninfo.sucursal  //jaic LEO
																																	 and it_codigo = :ls_itcodprom; //LEO
																																	 //and it_codigo = '23337';            //jaic LEO
																																	 
																																	 if li_bombaleo > 0 then
																																						  ib_premioleo = true
																																						  //si ya tiene 10 entonces actualizar todas las que dicen LEO en LEO PAGADO de ese cliente //LEO
																																						  select it_codant
																																						  into :ls_codant
																																						  from in_item
																																						  where it_codigo = :ls_itcodprom;
																																						  messagebox('Atención','El cliente recibe producto de promoción ' + ls_codant + ' . Favor Ingresar.')
																																																																						
																																							 update fa_detve z  //LEO
																																							 set Z.dv_motor = :ls_itcodprom ||' '||'PAGADO'  //LEO
												 																											 where (es_codigo = '2' and //LEO
																																							 trim(em_codigo) = :str_appgeninfo.empresa and  //LEO
																																							 trim(su_codigo) = :str_appgeninfo.sucursal and  //LEO
																																							 trim(bo_codigo) = :str_appgeninfo.seccion and  //LEO
																																							 ve_numero in (select c.ve_numero  //LEO
																																																							from fa_venta c, fa_detve d  //LEO
																																																							where c.em_codigo = d.em_codigo and  //LEO
																																																							c.su_codigo = d.su_codigo and  //LEO
																																																							c.bo_codigo = d.bo_codigo and  //LEO
																																																							c.ve_numero = d.ve_numero and  //LEO
																																																							trim(d.dv_motor) = :ls_itcodprom and   //LEO
																																																							c.ce_codigo = :ls_codcli  //LEO
																																																							)) and  //LEO
																																											  trim(z.dv_motor) = :ls_itcodprom;  //LEO
																																											  
																																											  if sqlca.sqlcode <> 0 then
																																																	rollback;
																																																	beep(1)               
																																																	messageBox('Error Interno', 'Al actualizar a PAGADO en detalle de facturas.' +sqlca.sqlerrtext)
																																																	return
																																											  end if
																																	 end if
		//                                                                          end if //LEO
																												
																	  end if
												 end if
		
							 next
							 is_codtarj = ls_codtarj
		else
							 messagebox("Error","Tarjeta no válida...",stopsign!)
							 return
		end if
		object.b_1.text = 'Tarj. Descto.'
		sle_1.text = ""
		else
							 messagebox("Error","Pase la tarjeta por el lector de banda magnética",stopsign!)
							 return
							 sle_1.setfocus()
		end if
	end if
end if
if dwo.name = "b_2" then

                Select sa_desc
                into :lch_desc
                from sg_acceso
                where em_codigo = :str_appgeninfo.empresa
                and sa_login = :str_appgeninfo.username;
					 
		
                
                If lch_desc = 'S' Then
                               dw_2.reset()
                               dw_2.insertrow(1)
                               dw_2.visible = true
                               dw_2.setfocus()
                else
                               MESSAGEBOX('Acceso negado','Usuario no autorizado...COMUNIQUECE CON SISTEMAS',Exclamation!)                
                end if
end if

if dwo.name = "b_3" then
                dw_3.retrieve(str_appgeninfo.empresa,str_appgeninfo.sucursal)        
                dw_3.visible = true
end if
end event

event doubleclicked;dec{2} lc_descue,lc_dscpos
int i 
string ls_itcodigo, ls_costo             //jaic LM-90P
char lch_itcosto, lch_itdescue

If dwo.name = "dv_desc2" Then
                if dw_cab.visible = false then
                               lc_descue = getitemdecimal(row,'dv_desc2')
                               If lc_descue = 0 Then  
											
                                               Select ps_valor
                                               into :lc_dscpos 
                                               from pr_numsuc
                                               where em_codigo = :str_appgeninfo.empresa
									  and su_codigo = :str_appgeninfo.sucursal
                                               and pr_nombre = 'DSC_POS';
															  
															  
                                               if sqlca.sqlcode <> 0 Then
                                                 messagebox('Error Interno','Problemas con descuento en efectivo POS...<Informe a sistemas>')
                                                 return
                                               End if    
                                               
                                               for i = 1 to this.rowcount()
//                                                           choose case str_appgeninfo.sucursal //jaic LM-90P       
//                                                           case '38' //jaic LM-90P  
                                                                              ls_itcodigo = getitemstring(i,"it_codigo") //jaic LM-90P               
                                                                              if ls_itcodigo = '25855' or ls_itcodigo = '27016' then //jaic LM-90P y LEO
                                                                                              setitem(i,"dv_desc3",100.00)//jaic LM-90P        
                                                                              end if//jaic LM-90P        
//                                                           end choose //jaic LM-90P           
                                                               
                                                               
                                                               //            if ls_itcodigo = '4391'  or ls_itcodigo = '11356' then //jaic obsequio
                                                               //            else  //jaic obsequios
																					
                                                               accepttext()

												 lch_itdescue = dw_det.object.it_descue[i]							
                                    
												if lch_itdescue = 'S' then		
                                                             	  setitem(i,"dv_desc2",lc_dscpos)
												end if


														lch_itcosto = dw_det.object.it_valcosto[i]
                                                               If getitemdecimal(i,"desc3") < (getitemdecimal(i,"it_costo")*getitemdecimal(i,"dv_cantid")) then
															if lch_itcosto='S' then   
															     setitem(row,"dv_desc2",0.00) //cambiado row a i por que pone el descuento en la fila equivocada Paco Flores 2014-04-24
                                                                                setitem(i,"dv_desc2",0.00)
                                                                                messagebox("Error",'El precio de venta del item [ '+getitemstring(i,"codant")+' ] no puede ser menor a $'+ string(getitemdecimal(i,"it_costo"),'#,##0.00')+' dólares.')
                                                                                return
 														end if
									                  End if
                                                                              //end if //jaic obsequios
                                               next
                               else
                                               for i = 1 to this.rowcount()
                                                               
							                          ls_itcodigo = getitemstring(i,"it_codigo") //jaic LM-90P
										 		 setitem(i,"dv_desc2",0.00)
												
                                                               
//                                                           choose case str_appgeninfo.sucursal //jaic LM-90P       
//                                                           case '12','11' //jaic LM-90P
//                                                                          if ls_itcodigo = '22757' then //jaic LM-90P
//                                                                                          setitem(i,"dv_desc3",0.00) //jaic LM-90P            
//                                                                          end if //jaic LM-90P       
//                                                           end choose
                                                               
                                               next      
															  
									
                               End if
					
							
                end if
End if
end event

event clicked;str_prodparam.ventana = parent
str_prodparam.datawindow = this
str_prodparam.fila = dw_det.GetRow() 
end event

event getfocus;
char lch_modifica, lch_caja
decimal{2} lc_desc1,lc_desc2,lc_desc3,lc_total, lc_costo, lc_pedido
long ll_candes
String  ls_codant

str_prodparam.ventana = parent
str_prodparam.datawindow = this
str_prodparam.fila = dw_det.GetRow() 

lch_modifica = Message.StringParm

if getrow() > 0 then
                if (isnull(lch_modifica) or lch_modifica ="") Then
                               return 0
                end if
                If lch_modifica = 'S' Then //Si es una base
					 
                        
						 lc_costo = getitemdecimal(str_prodparam.fila,"it_costo")
						 lc_pedido = getitemdecimal(str_prodparam.fila,"dv_cantid")        
						 ls_valcosto = getitemstring(str_prodparam.fila, 'it_valcosto')	
						 lc_costo = lc_costo *lc_pedido
						 
						 If str_prodparam.precio < lc_costo then
								if ls_valcosto='S' then
										setitem(str_prodparam.fila,"dv_desc3",0.00) 
										setitem(str_prodparam.fila,"dv_precio",0.00)
										messagebox("Aviso",'El precio de venta del item [ '+ls_codant+' ] no puede ser menor a $'+ string(lc_costo,'#,##0.00')+' dólares.',StopSign!)
										return 1
								end if
						else 
						
						
						setitem(str_prodparam.fila,"dv_precio",str_prodparam.precio)
                               setitem(str_prodparam.fila,"dv_motor",str_prodparam.formula)
                               ll_candes = getitemnumber(str_prodparam.fila,"dv_cantid")                  
                               lc_desc1 = getitemdecimal(str_prodparam.fila,"dv_desc1")
                               lc_desc2 = getitemdecimal(str_prodparam.fila,"dv_desc2")
                               lc_desc3 = getitemdecimal(str_prodparam.fila,"dv_desc3")
                               lc_total = ll_candes*(((str_prodparam.precio * ((100 - lc_desc1)/100))*((100 - lc_desc2)/100))*((100 - lc_desc3)/100))
                               setitem(str_prodparam.fila,"dv_total",lc_total)
                               setnull(Message.StringParm)
							
						End if
										 
										 
                End if
					 
                If lch_modifica = 'N' Then 
                               deleterow(getrow())
                               setnull(Message.StringParm)
                               messagebox("Atención","Debe ingresar la fórmula del tinte para la base")                       
                end if
					 
				
End if



return 0

end event

event itemfocuschanged;char lch_caja
Integer li_filas, ll_pos
String ls_codant, ls_codigo, ls_pepa, ls_desci_prom


IF(li_preimpre = 1) THEN 

	SELECT CJ_ESTADO 
	INTO :lch_caja
	FROM FA_CAJA
	WHERE FA_CAJA.CJ_CAJA = :caja.caja
	and FA_CAJA.SU_CODIGO= :str_appgeninfo.sucursal;

	IF	li_bloqueo = 1 THEN 
				messagebox("Atención","LAS FACTURAS DEL POS DE LA CAJA "+caja.caja+" ESTAN CADUCADAS, COMUNIQUESE CON SISTEMAS : " , StopSign!)
				close(parent)
	ELSEIF lch_caja='B' THEN
					messagebox("Atención","LAS FACTURAS DEL POS DE LA CAJA "+caja.caja+"  ESTA BLOQUEADA, COMUNIQUESE CON SISTEMAS : " , StopSign!)
					close(parent)
	END IF
END IF


//CREING: Añadir la promoción a la que pertenece el item ingresado en la factura.. Si esta no tiene promoción o si la promoción caduco no aparece nada..
//Creado Por: Henry Pinchao
//Fecha Creación: 05/05/2017   15:32


ls_pepa = dw_det.object.it_codigo[row]     //--------------------------------------------------------------------------------------------------------------------------Asignación de item para buscar si existe promoción
if ls_pepa <> '' and not IsNull(ls_pepa) then//-------------------------------------------------------------------------------------------------------------------------Condición que verifica si el se ha ingresado producto antes de validar promoción
	//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------Query que consulta si existe promoción para el item ingresado
	SELECT DISTINCT 'PROMOCION N°. '||PM_ITEMXPROM.PP_CODIGO||'/ '|| PM_PROMOCION.PP_NOMBRE
	INTO :ls_desci_prom
	FROM PM_ITEMXPROM, PM_PROMOCION
	WHERE (PM_PROMOCION.PP_CODIGO = PM_ITEMXPROM.PP_CODIGO)
	AND (PM_PROMOCION.PP_FECCAD >= SYSDATE)
	AND PP_POS = '1'
	AND IT_CODORIGEN = :ls_pepa
	AND PP_ACTIVO =1;
	//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------Fin Query de Consulta
	if sqlca.sqlcode = -1 then //------------------------------------------------------------------------------------------------------------------------------------------Fin Condición que verifica si existe algun problema en la consulta anterior
		messagebox('Aviso','No se pudo recuperar la informacion del producto de la tabla PM_ITEMXPROM...' + SQLCA.SQLErrText, StopSign!)
	end if//------------------------------------------------------------------------------------------------------------------------------------------------------------------Fin Condición de Consulta
	f_recupera_items(ls_pepa, ls_desci_prom)//----------------------------------------------------------------------------------------------------------------------Llama a la función para que se recupere la información de productos cruzados y promoción de participación
end if //---------------------------------------------------------------------------------------------------------------------------------------------------------------------Fin Condición agregar item.


end event

type rb_cal from radiobutton within w_pos
boolean visible = false
integer x = 1367
integer y = 1164
integer width = 416
integer height = 80
boolean bringtotop = true
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 12639424
string text = "Calendario"
end type

event clicked;       gb_obsequio.visible = false
                   rb_cal.visible = false
                   rb_na.visible = false
                   IF (rb_cal.checked = true) THEN
                                              li_premio = 2
                                              dw_cab.enabled = true
                                               dw_cab.setcolumn("cliente")
                                               dw_cab.setfocus()         

                               else 
                                                li_premio = 1
                                              dw_cab.enabled = true
                                              dw_cab.setcolumn("cliente")
                                               dw_cab.setfocus()         

                    END IF
                               
end event

type rb_na from radiobutton within w_pos
boolean visible = false
integer x = 1376
integer y = 1072
integer width = 402
integer height = 80
boolean bringtotop = true
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 12639424
string text = "Naipe"
end type

event clicked;       gb_obsequio.visible = false
                  rb_cal.visible = false
                   rb_na.visible = false
                   IF (rb_na.checked = true) THEN
                                              li_premio = 1
                               
                                               dw_cab.enabled = true
                                               dw_cab.setcolumn("cliente")
                                               dw_cab.setfocus()         

                               else 
                                                li_premio = 2
                                                               dw_cab.enabled = true
                                               dw_cab.setcolumn("cliente")
                                               dw_cab.setfocus()         

                    END IF
                               
                               

end event

type dw_cant_prodxprom from datawindow within w_pos
event ue_keydown pbm_dwnkey
event ue_dwnkey pbm_dwnkey
boolean visible = false
integer x = 3118
integer y = 476
integer width = 901
integer height = 736
integer taborder = 180
boolean bringtotop = true
boolean titlebar = true
string title = "PROMOCION QUILOSA"
string dataobject = "dw_cantidad_itemxprom"
boolean livescroll = true
borderstyle borderstyle = styleraised!
end type

event ue_dwnkey;longlong ll_ticked
integer li_cadena
String ced_ruc

if KeyDown(KeyEscape!) then
               wf_encera_pago()
		      borra_fila_promo( 1)
			dw_det.enabled = true
			dw_cab.enabled = true
                dw_det.setcolumn("codant")
                dw_det.setfocus()         
			 is_aceptxprom = 'O'
                              

end if

	
end event

event buttonclicked;Integer i, j = 1, li_i
String ls_codant, ls_codprod
char lch_kit, lch_validastock
decimal lc_pedido, lc_totprod, lc_cantprem
long ll_new
boolean si_hay = false


this.accepttext( )
j = 1
lc_cantprem = this.object.cantprem[1] 


for i = 1 to 4 
	if this.object.cantidad[i] >= 0 then
		lc_totprod = lc_totprod + this.object.cantidad[i]
	else 
		lc_totprod = 0
		for i = 1 to 4 
			this.object.cantidad[i] = 0 
		next 
		messagebox("Aviso","Los Valores ingresados no puede ser menores  a 0", StopSign!)
		return 1
	end if
next

if lc_cantprem <> lc_totprod then
		messagebox("Aviso","La suma de de los productos debe ser igual a "+ String(lc_cantprem), StopSign!)
		return 1
end if


for i = 1 to 4 
	ls_codant = this.object.it_codant[i] 
	lc_pedido = this.object.cantidad[i]
	
	if lc_pedido > 0 then 
	  
		select it_codigo, it_kit
		into :ls_codprod, :lch_kit
		from in_item
		where it_codant = :ls_codant;
		
		 si_hay = f_dame_stock_bodega_new(str_appgeninfo.seccion,ls_codprod,lch_kit,lc_pedido) 
		 
		if si_hay = false then
			SELECT  PP_STOCK
			INTO  :lch_validastock
			from pm_promocion
			where  pm_promocion.pp_codigo ='8'
			and pp_activo = '1';
			
				if lch_validastock = 'N' or IsNull(lch_validastock) then
					messagebox("Aviso","El Stock del producto "+ ls_codant + " es menor al requerido", StopSign!)
					return 1
				end if
		else 
	
			ll_new = dw_det.insertrow(0)
			dw_det. scrolltorow(ll_new)
			is_aceptxprom = 'S'
			dw_det.object.codant[ll_new] = ls_codant
			dw_det.object.prodpromo[ll_new] = 'P'
			dw_det.object.pp_codigo[ll_new] = '8'
			dw_det.setcolumn('codant')
			dw_det.triggerevent('itemchanged') 
			dw_det.object.dv_cantid[ll_new] = Dec(lc_pedido)
		end if
		
	end if
	
next

dw_cant_prodxprom.visible = false
dw_cab.enabled = true
dw_cab.setcolumn('efectivo')
dw_cab.setfocus( )
is_entro[8] = 'S' 





end event

type dw_cedtarj from datawindow within w_pos
event ue_keydown pbm_dwnkey
boolean visible = false
integer x = 2606
integer y = 380
integer width = 1239
integer height = 184
integer taborder = 160
boolean bringtotop = true
string title = "Ingrese Cédula"
string dataobject = "dw_ced_trjprom"
boolean resizable = true
boolean livescroll = true
end type

event ue_keydown;int li_fila, i
long ll_arc
dec{2} lc_descue, lc_dscpos,ld_stock_disponible
string ls_nombre,ls_codant,ls_codigo_atomo,ls_itcodigo
char lch_kit, lch_itcosto,lch_itdescue
datetime ld_valdate

li_fila = this.getrow()
//
//if (KeyDown(KeyUpArrow!)) then
//                if li_fila > 1 then 
//                               dw_det.setcolumn('dv_cantid')
//                else
//                               beep(1)
//                end if
//end if
//
//if (KeyDown(KeyDownArrow!)) then
//                dw_det.triggerevent('ue_ultimo')
//end if

if  (KeyDown(KeyEnter!) or KeyDown(KeyTab!) ) then
	dw_cedtarj.Event buttonClicked( dw_cedtarj.Getrow(), ll_arc, dw_cedtarj.object.b_1)
end if

end event

event buttonclicked;String ls_cedula, ls_cliente, ce_rucic, ls_tarjcli, ls_numtar
Long ll_pos2, ll_arc

dw_cedtarj.accepttext( )

is_rucic = dw_cedtarj.object.cedula[1]
if is_rucic ='' or IsNull(is_rucic)  then
	messagebox('Aviso', 'Ingrese la cedula del Cliente que se asignara la tarjeta', StopSign!)
	setcolumn('cedula')
	setfocus()
	return 1 
else 
	
		
	select ce_codigo
	into:ls_cliente
	from fa_clien
	where ce_rucic = :is_rucic
	and em_codigo = :str_appgeninfo.empresa;
	
	if sqlca.sqlcode <> 0 then
			messagebox('Aviso', 'Cliente No Existe o la Cedula esta Incorrecta. Verifique y Vuelva a Intentarlo...!', StopSign!)
			setcolumn('cedula')
			setfocus()
			return 
	end if
	
	ls_tarjcli = sle_1.text		
	ll_pos2 = pos(ls_tarjcli,"_")
	ls_numtar = mid( ls_tarjcli , 2, ll_pos2 - 2)
	
	
	UPDATE FA_CTACLI
	SET CE_CODIGO = :ls_cliente
	WHERE CS_NUMERO = :ls_numtar;
	
	if sqlca.sqlcode <> 0 then
			messagebox('Aviso', 'No se pudo Actualizar la Tabla Fa_CtaCli'  + Sqlca.sqlerrtext, StopSign! )
			Rollback;
			return
	elseif sqlca.sqlcode = 0 then	
		
			dw_det.Event buttonClicked( dw_det.Getrow(), ll_arc, dw_det.object.b_1)
			dw_cedtarj.visible = false
			dw_det.enabled= true
			dw_cab.enabled = true
			Commit;
	end if
	

end if	
end event

