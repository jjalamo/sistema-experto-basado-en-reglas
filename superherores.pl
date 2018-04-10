/*----------------------------------------------------------*/
/* BASE DE CONOCIMIENTO: SUPERHEROES                        */
/* FUNDAMENTOS DE INTELIGENCIA ARTIFICIAL CURSO 2012 - 2013 */
/* JACINTO ALAMO GALDON - 26224967E                         */
/* UNED - CENTRO ASOCIADO JAEN - UBEDA                      */
/*----------------------------------------------------------*/


/* CONSTANTES */
/* OCUPACIONES DE LOS SUPERHEROES CON SU IDENTIDAD PUBLICA */

abogado.
estudiante.
piloto.
cientifico.
fotografo.
periodista.
empresario.

/* DECLARAMOS PREDICADOS DINAMICOS PARA PODER INSERTAR Y BORRAR ELEMENTOS */

:-dynamic superheroe/1.
:-dynamic trabajo/2.
:-dynamic nombre/2.
:-dynamic villano/1.
:-dynamic enemigo_de_superheroe/2.
:-dynamic actua_en/2.
:-dynamic alianza/2.
:-dynamic origen_poderes/2.
:-dynamic poder/2.
:-dynamic rendimiento/2.


 
/* SUPERHEROES - NOMBRES DE LOS SUPERHEROES */

superheroe(daredevil).
superheroe(antorcha_humana).
superheroe(la_cosa).
superheroe(mujer_invisible).
superheroe(mr_fantastico).
superheroe(spiderman).
superheroe(superman).
superheroe(batman).
superheroe(ironman).
superheroe(hulk).

/* TRABAJOS DE LOS SUPERHEROES EN SU VIDA PUBLICA */

trabajo(daredevil,abogado).
trabajo(antorcha_humana,estudiante).
trabajo(la_cosa,piloto).
trabajo(mr_fantastico,cientifico).
trabajo(spiderman,fotografo).
trabajo(superman,periodista).
trabajo(batman,empresario).
trabajo(ironman,empresario).
trabajo(hulk,cientifico).

 
 
/* NOMBRE PUBLICO DE LOS SUPERHEROES */
 
nombre(daredevil,matt_murdock).
nombre(antorcha_humana,johnny_storm).
nombre(la_cosa,benn_grimm).
nombre(mujer_invisible,sue_storm).
nombre(mr_fantastico,reed_richards).
nombre(spiderman,peter_parker).
nombre(superman,clark_kent).
nombre(batman,bruce_wayne).
nombre(ironman,tony_stark).
nombre(hulk,bruce_banner).
 
 /* VILLANOS - DEFINE LOS VILLANOS POR BLOQUES */
 
villanos1(el_fijador).
villanos1(mr_miedo).
villanos1(stillman).
villanos1(el_gladiador). 
villanos1(hombre_purpura). 
 
villanos2(hydroman).
 
 
villanos3(dr_doom).
villanos3(fantasma_rojo).
villanos3(skrull).
villanos3(hombre_topo).
villanos3(namor).
villanos3(galactus).
 
villanos4(duende_verde).
villanos4(rhino).
villanos4(venom).
villanos4(dr_octopus).
villanos4(carnage).
villanos4(hombre_de_arena).
villanos4(mysterio).
villanos4(lagarto).
villanos4(camaleon).
 
villanos5(kingpin).
 
villanos6(lex_luthor).
villanos6(brainiac).
villanos6(bizarro).
villanos6(general_zod).
villanos6(metallo).
villanos6(darkseid).
villanos6(doomsday).
 
villanos7(jocker).
villanos7(anarquia).
villanos7(catwoman).
villanos7(dos_caras).
villanos7(espantapajaros).
villanos7(pinguino).
villanos7(sombrerero_loco).
villanos7(segador).
villanos7(hiedra_venenosa).
villanos7(ras_al_ghur).
villanos7(mr_frio).

villanos8(fin_fan_fung).
villanos8(inmortus).
villanos8(iron_morger).
villanos8(justin_hammer).

villanos9(abominacion).
villanos9(jueggernaut).
villanos9(general_ross).
villanos9(xemnu).
villanos9(xeron).
 
/* VILLANOS - DEFINE TODOS LOS VILLANOS */

villano(VILLANO):-villanos1(VILLANO).
villano(VILLANO):-villanos2(VILLANO).
villano(VILLANO):-villanos3(VILLANO).
villano(VILLANO):-villanos4(VILLANO).
villano(VILLANO):-villanos5(VILLANO).
villano(VILLANO):-villanos6(VILLANO).
villano(VILLANO):-villanos7(VILLANO).
villano(VILLANO):-villanos8(VILLANO).
villano(VILLANO):-villanos9(VILLANO).

/* ENEMIGOS DE LOS SUPERHEROES - DEFINE POR CADA SUPERHEROE QUE VILLANOS SON SUS ENEMIGOS */
 
enemigo_de_superheroe(daredevil,VILLANO):-villanos1(VILLANO).
enemigo_de_superheroe(daredevil,VILLANO):-villanos5(VILLANO).
enemigo_de_superheroe(antorcha_humana,VILLANO):-villanos2(VILLANO).
enemigo_de_superheroe(antorcha_humana,VILLANO):-villanos3(VILLANO).
enemigo_de_superheroe(la_cosa,VILLANO):-villanos3(VILLANO).
enemigo_de_superheroe(mujer_invisible,VILLANO):-villanos3(VILLANO).
enemigo_de_superheroe(mr_fantastico,VILLANO):-villanos3(VILLANO).
enemigo_de_superheroe(spiderman,VILLANO):-villanos5(VILLANO).
enemigo_de_superheroe(spiderman,VILLANO):-villanos4(VILLANO).
enemigo_de_superheroe(superman,VILLANO):-villanos6(VILLANO).
enemigo_de_superheroe(batman,VILLANO):-villanos7(VILLANO).
enemigo_de_superheroe(ironman,VILLANO):-villanos8(VILLANO).
enemigo_de_superheroe(hulk,VILLANO):-villanos9(VILLANO).




/* LUGAR EN EL QUE SUELE ACTUAR EL SUPERHEROE */

actua_en(daredevil,nueva_york).
actua_en(antorcha_humana,nueva_york).
actua_en(la_cosa,nueva_york).
actua_en(mujer_invisible,nueva_york).
actua_en(mr_fantastico,nueva_york).
actua_en(spiderman,nueva_york).
actua_en(superman,metropolis).
actua_en(batman,gotham).
actua_en(ironman,nueva_york).

/* ALIANZAS A LAS QUE PERTENECEN LOS SUPERHEROES */

alianza(daredevil,los_defensores).
alianza(antorcha_humana,los_4_fantasticos).
alianza(antorcha_humana,los_nuevos_vengadores).
alianza(la_cosa,los_4_fantasticos).
alianza(mujer_invisible,los_4_fantasticos).
alianza(mr_fantastico,los_4_fantasticos).
alianza(spiderman,los_nuevos_vengadores).
alianza(superman,legion_de_superheroes).
alianza(superman,liga_de_la_justicia).
alianza(batman,liga_de_la_justicia).
alianza(ironman,los_vengadores).
alianza(ironman,los_nuevos_vengadores).
alianza(hulk,los_vengadores).



/* ORIGEN DE LOS SUPERPODERES */

origen_poderes(daredevil,sustancia_radiactiva).
origen_poderes(antorcha_humana,rayos_cosmicos).
origen_poderes(la_cosa,rayos_cosmicos).
origen_poderes(mujer_invisible,rayos_cosmicos).
origen_poderes(mr_fantastico,rayos_cosmicos).
origen_poderes(spiderman,picadura_araña_radiactiva).
origen_poderes(superman,extraterrestre).
origen_poderes(hulk,accidente_laboratorio).

/* SUPERPODERES Y HABILIDADES DE LOS SUPERHEROES */

poder(daredevil,artes_marciales).
poder(daredevil,vision_por_ecolocalizacion).
poder(daredevil,equilibrio).
poder(daredevil,sentidos_aumentados).

poder(antorcha_humana,llamas).
poder(antorcha_humana,vuela).
poder(antorcha_humana,absorver_fuego).
poder(antorcha_humana,controlar_fuego).
poder(antorcha_humana,proyectar_fuego).
poder(antorcha_humana,vision_infraroja).

poder(la_cosa,cuerpo_de_piedra).
poder(la_cosa,super_fuerza).
poder(la_cosa,resistencia).
poder(la_cosa,combate_cuerpo_a_cuerpo).
poder(la_cosa,pilotar_transportes_aereos).
poder(la_cosa,entrenamiento_militar).
poder(la_cosa,artes_marciales).

poder(mujer_invisible,invisibilidad).
poder(mujer_invisible,campo_de_fuerza).
poder(mujer_invisible,proyectar_campo_de_fuerza).

poder(mr_fantastico,elasticidad).
poder(mr_fantastico,inteligencia).

poder(spiderman,super_fuerza).
poder(spiderman,rapidez).
poder(spiderman,agilidad).
poder(spiderman,reflejos).
poder(spiderman,lanza_telaraña).
poder(spiderman,rapida_curacion).
poder(spiderman,adherirse_a_superficies).
poder(spiderman,sentido_aracnido).
poder(spiderman,inteligencia).
poder(spiderman,sentidos_aumentados).

poder(superman,super_fuerza).
poder(superman,velocidad).
poder(superman,vision_de_rayos_x).
poder(superman,lanza_rayos_por_los_ojos).
poder(superman,vuela).
poder(superman,invulnerabilidad).
poder(superman,vision_infraroja).
poder(superman,vision_telescopica).
poder(superman,vision_microscopica).
poder(superman,super_oido).
poder(superman,super_aliento).
poder(superman,sentidos_aumentados).
 
poder(batman,alta_tecnologia).
poder(batman,inteligencia).
poder(batman,artes_marciales).
poder(batman,sigilo).

poder(ironman,alta_tecnologia).
poder(ironman,inteligencia).
poder(ironman,super_fuerza).
poder(ironman,vuela).
poder(ironman,rayos_de_energia).

poder(hulk,super_fuerza).
poder(hulk,velocidad).
poder(hulk,resistencia).
poder(hulk,rapida_curacion).

/* NIVEL DE RENDIMIENTO DEL SUPERHEROE  */
/* CUANTO MAS CANSADO ESTE EL SUPERHEROE DE LUCHAR CONTRA EL MAL */
/* SU NIVEL DE RENDIMIENTO SERA MENOR */
/* ESTE INDICE SE UTILIZA PARA REALIZAR UN CALCULO RECURSIVO */

rendimiento(superman,100).
rendimiento(hulk,90).
rendimiento(la_cosa,80).
rendimiento(spiderman,70).
rendimiento(antorcha_humana,60).
rendimiento(ironman,50).
rendimiento(batman,40).
rendimiento(mujer_invisible,30).
rendimiento(mr_fantastico,20).
rendimiento(daredevil,10).




/* DOS SUPERHEROES COLABORAN SI ESTAN EN LA MISMA ALIANZA */

colaboran(SUPERHEROE1,SUPERHEROE2):-alianza(SUPERHEROE1,ALIANZA),alianza(SUPERHEROE2,ALIANZA).

/* DOS SUPERHEROES SE CONOCEN SI ACTUAN EN LA MISMA CIUDAD */

se_conocen(SUPERHEROE1,SUPERHEROE2):-actua_en(SUPERHEROE1,CIUDAD),actua_en(SUPERHEROE2,CIUDAD).

/* DOS SUPERHEROES SON AMIGOS SI COLABORAN Y SE CONOCEN */
/* ES DECIR, SI PERTENECEN A LA MISMA ALIANZA Y ACTUAN EN LA MISMA CIUDAD */

son_amigos(SUPERHEROE1,SUPERHEROE2):-colaboran(SUPERHEROE1,SUPERHEROE2),se_conocen(SUPERHEROE1,SUPERHEROE2).

/* UN SUPERHEROE TIENE PODERES PROPIOS SI SUS PODERES TIENEN UN ORIGEN */
/* POR EJEMPLO, EL ORIGEN DE LOS PODERES DE SPIDERMAN ES LA PICADURA DE UNA ARAÑA RADIACTIVA */
/* MIENTRAS QUE LOS PODERES DE BATMAN, SE DEBEN A LA TECNOLOGIA, EN REALIDAD, BATMAN NO TIENE */
/* PODERES, SOLO UTILIZA ALTA TECNOLOGIA */

tiene_superpoderes(SUPERHEROE):-superheroe(SUPERHEROE),origen_poderes(SUPERHEROE,_).

/* UN SUPERHEROE PUEDE DERROTAR A ALGUIEN, SI ESE ALGUIEN ES UN VILLANO, ESTO NO QUIERE DECIR */
/* QUE LO DERROTE, SOLO QUE EXISTE LA POSIBILIDAD DE DERROTARLO */

puede_derrotar(SUPERHEROE,VILLANO):-superheroe(SUPERHEROE),villano(VILLANO).

/* UN SUPERHEROE DERROTA A ALGUIEN, SI ESE ALGUIEN ES UN VILLANO Y ADEMAS ES UN ENEMIGO */
/* DE ESE SUPERHEROE */

derrota(SUPERHEROE,VILLANO):-superheroe(SUPERHEROE),villano(VILLANO),enemigo_de_superheroe(SUPERHEROE,VILLANO).

/* DOS SUPERHEROES TIENEN PODERES SIMILARES SI TIENEN ALGUN PODER EN COMUN */
poderes_similares(SUPERHEROE1,SUPERHEROE2):-poder(SUPERHEROE1,PODER),poder(SUPERHEROE2,PODER).

/* UN SUPERHEROE ES ENEMIGO DE UN VILLANO, SI ESE VILLANO ES ENEMIGO DEL SUPERHEROE */
enemigo_de_villano(VILLANO,SUPERHEROE):-superheroe(SUPERHEROE),enemigo_de_superheroe(SUPERHEROE,VILLANO).

/* UN SUPERHEROE RINDE MAS QUE OTRO SI SU RENDIMIENTO ES MAYOR */

rinde_mas(SUPERHEROE1,SUPERHEROE2):-rendimiento(SUPERHEROE1,R1),rendimiento(SUPERHEROE2,R2),R1>R2.

/* RECURSIVIDAD */
/* CALCULA EL NIVEL DE RENDIMIENTO QUE LE QUEDA A UN SUPERHEROE TRANSCURIDOS X COMBATES */
		
cansancio(NIVEL,RESULTADO) :- NIVEL=<1,RESULTADO is 0.
cansancio(NIVEL,RESULTADO) :- NIVEL>1,cansancio(NIVEL-1,RESULTADO_AUX),RESULTADO is RESULTADO_AUX+NIVEL.
nivel_rendimiento(SH,COMBATES,PCENT) :- rendimiento(SH,RENDIMIENTO),cansancio(COMBATES,CANSANCIO),PCENT is RENDIMIENTO-CANSANCIO. 
		
/* INTRODUCCION DE NUEVOS DATOS EN LA BASE DE CONOCIMIENTO */

nuevo_superheroe(SUPERHEROE):-assert(superheroe(SUPERHEROE)).
nuevo_trabajo(SUPERHEROE,TRABAJO):-assert(trabajo(SUPERHEROE,TRABAJO)).
nuevo_nombre(SUPERHEROE,NOMBRE):-assert(nombre(SUPERHEROE,NOMBRE)).
nuevo_villano(VILLANO):-assert(villano(VILLANO)).
nuevo_enemigo_de_superheroe(SUPERHEROE,VILLANO):-assert(enemigo_de_superheroe(SUPERHEROE,VILLANO)).
nuevo_actua_en(SUPERHEROE,CIUDAD):-assert(actua_en(SUPERHEROE,CIUDAD)).
nuevo_alianza(SUPERHEROE,ALIANZA):-assert(alianza(SUPERHEROE,ALIANZA)).
nuevo_origen_poderes(SUPERHEROE,ORIGEN):-assert(origen_poderes(SUPERHEROE,ORIGEN)).
nuevo_poder(SUPERHEROE,PODER):-assert(poder(SUPERHEROE,PODER)).
nuevo_rendimiento(SUPERHEROE,RENDIMIENTO):-assert(rendimiento(SUPERHEROE,RENDIMIENTO)).


/* BORRADO DE DATOS DE LA BASE DE CONOCIMIENTO */

borrar_superheroe(SUPERHEROE):-retract(superheroe(SUPERHEROE)).
borrar_trabajo(SUPERHEROE,TRABAJO):-retract(trabajo(SUPERHEROE,TRABAJO)).
borrar_nombre(SUPERHEROE,NOMBRE):-retract(nombre(SUPERHEROE,NOMBRE)).
borrar_villano(VILLANO):-retract(villano(VILLANO)).
borrar_enemigo_de_superheroe(SUPERHEROE,VILLANO):-retract(enemigo_de_superheroe(SUPERHEROE,VILLANO)).
borrar_actua_en(SUPERHEROE,CIUDAD):-retract(actua_en(SUPERHEROE,CIUDAD)).
borrar_alianza(SUPERHEROE,ALIANZA):-retract(alianza(SUPERHEROE,ALIANZA)).
borrar_origen_poderes(SUPERHEROE,ORIGEN):-retract(origen_poderes(SUPERHEROE,ORIGEN)).
borrar_poder(SUPERHEROE,PODER):-retract(poder(SUPERHEROE,PODER)).
borrar_rendimiento(SUPERHEROE,RENDIMIENTO):-retract(rendimiento(SUPERHEROE,RENDIMIENTO)).



