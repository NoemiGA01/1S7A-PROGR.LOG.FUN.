:- discontiguous planta/1.
:- discontiguous uso/3.
:- discontiguous uso/2.
:- discontiguous uso/4.
% Hechos sobre propiedades de las plantas
planta(diente_de_leon, laxante).
planta(diente_de_leon, diuretica).
planta(diente_de_leon, colagoga).

planta(manzanilla, curativo).

planta(abrojo, diuretico).
planta(abrojo, curativo_infecciones_pecho).
planta(abrojo, antiinflamatorio_ojos).
planta(abrojo, antiinflamatorio_higado).
planta(abrojo, circulacion_sanguinea).

planta(acacia, alivio_dolor_garganta).
planta(acacia, alivio_tos).
planta(acacia, alivio_bronquitis).

planta(acanto, antiinflamatorio_arana).
planta(acanto, desintoxicante).
planta(acanto, tratamiento_hemorroides).
planta(acanto, tratamiento_quemaduras).
planta(acanto, tratamiento_dispepsia).
planta(acanto, tratamiento_disenteria).

planta(aceitilla, alivio_cansancio_intelectual).
planta(aceitilla, alivio_depresion_nerviosa).

planta(achicoria, diuretica).
planta(achicoria, depurativa).
planta(achicoria, alivio_digestion_dificil).
planta(achicoria, alivio_colicos_biliosos).
planta(achicoria, alivio_estrenimiento).
planta(achicoria, purifica_rinones).

% Hechos sobre efectos de las medicinas convencionales
efecto_medicina(aspirina, hemorragias_internas).
efecto_medicina(aspirina, afecta_higado).
efecto_medicina(aspirina, afecta_sistema_nervioso).

efecto_medicina(generico, congestion_hepatica).
efecto_medicina(generico, congestion_renal).
efecto_medicina(generico, fatiga_excesiva).
efecto_medicina(generico, adiccion).
efecto_medicina(generico, alergias).
efecto_medicina(generico, eliminacion_flora_intestinal).
efecto_medicina(generico, gastritis).

% Reglas sobre medicina de origen vegetal vs. medicina convencional
medicina_herbal(Planta) :- planta(Planta, _).
medicina_quimica(Medicina) :- efecto_medicina(Medicina, _).

% Reglas sobre efectos estimulantes de las plantas
estimulante(Planta) :- planta(Planta, _).

% Reglas sobre acciones de las plantas
accion(Planta, Accion) :- planta(Planta, Accion).

%Paginas 86-88
% Hechos sobre propiedades y usos del fenogreco
planta(fenogreco).
uso(fenogreco, semillas, lavativa, grandioso_remedio).
uso(fenogreco, semillas, cataplasma, hinchazones).
uso(fenogreco, semillas, gargaras, garganta_inflamada).
receta(estrenimiento, fenogreco).
preparacion(estrenimiento, fenogreco, remojar_agua).
preparacion(estrenimiento, fenogreco, ciruelas).
preparacion(estrenimiento, fenogreco, miel).

% Hechos sobre propiedades y usos de la genciana
planta(genciana).
uso(genciana, raiz).
uso(genciana, estimulante_apetito).
uso(genciana, tonico_amargo).
uso(genciana, combatir_escorbuto).
uso(genciana, combatir_anemia).
uso(genciana, combatir_clorosis).
uso(genciana, combatir_debilidad).
uso(genciana, combatir_escrofulosis).
uso(genciana, combatir_leucorrea).
uso(genciana, aclarar_pecas).
uso(genciana, digestion).

%uso(genciana, raiz, "Uso específico de la raíz de la genciana").
%uso(genciana, hojas, "Uso específico de las hojas de la genciana").

% Hechos sobre propiedades y usos del eucalipto
planta(eucalipto).
uso(eucalipto, hojas_verdes, te).
uso(eucalipto, hojas_verdes, desinfectar_ambiente).
efecto(eucalipto, aliviar_tos).
efecto(eucalipto, aliviar_asma).
efecto(eucalipto, aliviar_bronquitis).
efecto(eucalipto, aliviar_mal_aliento).
efecto(eucalipto, aliviar_tisis).
efecto(eucalipto, aliviar_gripe).
efecto(eucalipto, aliviar_catarros).
efecto(eucalipto, aliviar_pulmonia).

% Reglas sobre el uso del fenogreco para el estreñimiento
uso_para_estrenimiento(Planta) :- uso(Planta, _, _, _), receta(estrenimiento, Planta).
preparacion_para_estrenimiento(Planta, Preparacion) :- preparacion(estrenimiento, Planta, Preparacion).

% Reglas sobre el uso de la genciana para aclarar las pecas
uso_para_aclarar_pecas(Planta) :- uso(Planta, _, aclarar_pecas).

% Reglas sobre el uso del eucalipto para aliviar problemas respiratorios
uso_para_respiratorios(Planta) :- uso(Planta, _, _), efecto(Planta, aliviar_tos).
uso_para_respiratorios(Planta) :- uso(Planta, _, _), efecto(Planta, aliviar_asma).
uso_para_respiratorios(Planta) :- uso(Planta, _, _), efecto(Planta, aliviar_bronquitis).
uso_para_respiratorios(Planta) :- uso(Planta, _, _), efecto(Planta, aliviar_mal_aliento).
uso_para_respiratorios(Planta) :- uso(Planta, _, _), efecto(Planta, aliviar_tisis).
uso_para_respiratorios(Planta) :- uso(Planta, _, _), efecto(Planta, aliviar_gripe).
uso_para_respiratorios(Planta) :- uso(Planta, _, _), efecto(Planta, aliviar_catarros).
uso_para_respiratorios(Planta) :- uso(Planta, _, _), efecto(Planta, aliviar_pulmonia).

%Paginas 162-173
% Hechos sobre las plantas y sus usos para diferentes condiciones

% Abscesos
planta(malva).
uso(abscesos, malva).

% Absceso hepático
planta(zarzaparrilla).
uso(absceso_hepatico, zarzaparrilla).

% Acidez estomacal
planta(anis).
planta(perejil).
uso(acidez_estomacal, anis).
uso(acidez_estomacal, perejil).

% Ácido úrico
planta(sanguinaria).
planta(limon).
planta(savco).
uso(acido_urico, sanguinaria).
uso(acido_urico, limon).
uso(acido_urico, savco).

% Acné
planta(ornica).
uso(acne, ornica).

% Aftas
planta(llanten).
planta(fenogreco).
planta(zarzamora).
uso(aftas, llanten).
uso(aftas, fenogreco).
uso(aftas, zarzamora).

% Agotamiento
planta(salvia).
planta(tilo).
planta(valeriana).
uso(agotamiento, salvia).
uso(agotamiento, tilo).
uso(agotamiento, valeriana).

% Agruras
planta(yerbabuena).
planta(manzanilla).
uso(agruras, yerbabuena).
uso(agruras, manzanilla).

% Albuminaria
planta(pinguica).
planta(quina_roja).
planta(encino_rojo).
uso(albuminaria, pinguica).
uso(albuminaria, quina_roja).
uso(albuminaria, encino_rojo).

% Alcoholismo
planta(pimiento).
uso(alcoholismo, pimiento).

% Almorranas
planta(hamamelis).
planta(sanguinaxia).
planta(cola_de_caballo).
planta(arnica).
uso(almorranas, hamamelis).
uso(almorranas, sanguinaxia).
uso(almorranas, cola_de_caballo).
uso(almorranas, arnica).

% Anemia
planta(ajenjo).
planta(germen_de_trigo).
planta(qurra).
planta(canela).
planta(alhora).
uso(anemia, ajenjo).
uso(anemia, germen_de_trigo).
uso(anemia, qurra).
uso(anemia, canela).
uso(anemia, alhora).

% Anginas
planta(eucalipto).
planta(cebada).
planta(tabachin).
planta(borraja).
uso(anginas, eucalipto).
uso(anginas, cebada).
uso(anginas, tabachin).
uso(anginas, borraja).

% Anorexia
uso(anorexia, ajenjo).
uso(anorexia, genciana).
uso(anorexia, yexbabvena).

% Arterosclerosis
planta(cardo).
planta(arnica).
planta(chicalote).
planta(alcanfor).
planta(toronja).
uso(arterosclerosis, limon).
uso(arterosclerosis, genciana).
uso(arterosclerosis, cardo).
uso(arterosclerosis, zarzaparrilla).
uso(arterosclerosis, arnica).
uso(arterosclerosis, chicalote).
uso(arterosclerosis, alcanfor).
uso(arterosclerosis, toronja).

% Asma
planta(marrubio).
planta(toloache).
planta(cregano).
uso(asma, eucalipto).
uso(asma, marrubio).
uso(asma, toloache).
uso(asma, cregano).

% Atonía estomacal
planta(lupulo).
planta(cuasia).
uso(atonia_estomacal, lupulo).
uso(atonia_estomacal, eucalipto).
uso(atonia_estomacal, cuasia).

% Bazo
planta(uva).
planta(cerezo).
uso(bazo, uva).
uso(bazo, cerezo).

% Boca - Inflamación
uso(boca_inflamacion, malva).
uso(boca_inflamacion, rasal).
uso(boca_inflamacion, limon).
uso(boca_inflamacion, salvia).

% Estomatitis
uso(estomatitis, rosa).
uso(estomatitis, ercina).
uso(estomatitis, salvia).
uso(estomatitis, zarzamora).

% Predicados para Bronquitis
planta(tratamiento_bronquitis, eucalipto).
planta(tratamiento_bronquitis, borraja).
planta(tratamiento_bronquitis, anacahuite).
planta(tratamiento_bronquitis, gordolobo).
planta(tratamiento_bronquitis, tilo).
planta(tratamiento_bronquitis, benui).
planta(tratamiento_bronquitis, maxrubro).
planta(tratamiento_bronquitis, rabano).

% Predicados para Bronconeumonía
planta(tratamiento_bronconeumonia, ccordolobo).
planta(tratamiento_bronconeumonia, eucalipto).
planta(tratamiento_bronconeumonia, ipecacuana).
planta(tratamiento_bronconeumonia, mostaza).

% Predicados para Caida del Cabello
planta(tratamiento_caida_cabello, ortiga).
planta(tratamiento_caida_cabello, espinosilla).
planta(tratamiento_caida_cabello, maxrubio).
planta(tratamiento_caida_cabello, romero).

% Predicados para Calambres
planta(tratamiento_calambres, anis).
planta(tratamiento_calambres, tila).
planta(tratamiento_calambres, manzanilla).
planta(tratamiento_calambres, ajenjo).

% Predicados para Cálculos Biliares
planta(tratamiento_calculos_biliares, diente_de_leon).
planta(tratamiento_calculos_biliares, aceite_oliva).
planta(tratamiento_calculos_biliares, retama).

% Predicados para Cálculos Renales
planta(tratamiento_calculos_renales, cabellos_elote).
planta(tratamiento_calculos_renales, pinguica).
planta(tratamiento_calculos_renales, hiedra_caballo).

% Predicados para Callos
planta(tratamiento_callos, ajo).
planta(tratamiento_callos, cebolla).

% Predicados para Caries
planta(tratamiento_caries, hiedra).
planta(tratamiento_caries, cola_caballo).

% Predicados para Caspa
planta(tratamiento_caspa, ortiga).
planta(tratamiento_caspa, limon).
planta(tratamiento_caspa, romero).

% Predicados para Cáncer del Útero
planta(tratamiento_cancer_utero, cuachalalate).
planta(tratamiento_cancer_utero, uanten).
planta(tratamiento_cancer_utero, siempreviva).

% Predicados para Ciática
planta(tratamiento_ciatica, mastverzo).
planta(tratamiento_ciatica, higuera).
planta(tratamiento_ciatica, sanco).

% Predicados para Circulación
planta(tratamiento_circulacion, totonj).
planta(tratamiento_circulacion, sanguinaxia).
planta(tratamiento_circulacion, salvia).
planta(tratamiento_circulacion, hamamelis).

% Predicados para Cistitis
planta(tratamiento_cistitis, cola_caballo).
planta(tratamiento_cistitis, doradilla).
planta(tratamiento_cistitis, ajo).
planta(tratamiento_cistitis, cabellos_elote).
planta(tratamiento_cistitis, menta).
planta(tratamiento_cistitis, hingjo).
planta(tratamiento_cistitis, manzanilla).
planta(tratamiento_cistitis, toronjil).
planta(tratamiento_cistitis, boldo).

% Predicados para Colitis
planta(tratamiento_colitis, linaza).
planta(tratamiento_colitis, anis).
planta(tratamiento_colitis, romero).
planta(tratamiento_colitis, cola_caballo).

% Predicados para Contusiones
planta(tratamiento_contusiones, arnica).
planta(tratamiento_contusiones, hamamelis).
planta(tratamiento_contusiones, laurel).
planta(tratamiento_contusiones, brionia).

% Predicados para Corazón (Tónico)
planta(tratamiento_corazon_tonico, digital).
planta(tratamiento_corazon_tonico, salvia).
planta(tratamiento_corazon_tonico, muez_kcla).
planta(tratamiento_corazon_tonico, tejocote).

% Predicados para Depurativos de la Sangre
planta(tratamiento_depurativos_sangre, uchicoxia).
planta(tratamiento_depurativos_sangre, diente_de_leon).
planta(tratamiento_depurativos_sangre, apio).
planta(tratamiento_depurativos_sangre, sangurnaria).
planta(tratamiento_depurativos_sangre, zarzaparrilla).
planta(tratamiento_depurativos_sangre, berro).

% Predicados para Diabetes
planta(tratamiento_diabetes, mataxique).
planta(tratamiento_diabetes, tronadora).
planta(tratamiento_diabetes, eucalipto).
planta(tratamiento_diabetes, damiana).
planta(tratamiento_diabetes, capulin).
planta(tratamiento_diabetes, mezquite).

% Predicados para Diarrea por Irritación
planta(tratamiento_diarrea_irritacion, linaza).
planta(tratamiento_diarrea_irritacion, membrillo).
planta(tratamiento_diarrea_irritacion, arroz).
planta(tratamiento_diarrea_irritacion, cebada).

% Predicados para Inflamación Verdosa
planta(tratamiento_inflamacion_verdosa, yerba).
planta(tratamiento_inflamacion_verdosa, albahaca).
planta(tratamiento_inflamacion_verdosa, granada).

% Predicados para Tratamiento de Problemas no Específicos
planta(tratamiento_problema_especifico, boca_inflamacion, [malva, rasal, limon, salvia]).
planta(tratamiento_problema_especifico, estomatitis, [rosa, ercina, salvia, zarzamora]).

% Hechos sobre plantas y sus usos para diferentes condiciones

planta(sarpullido, encina).
planta(sarpullido, salvia).
planta(sarpullido, tila).

planta(sed, limon).
planta(sed, tamarindo).
planta(sed, pirul).

planta(solitaria, semilla_calabaza).
planta(solitaria, gramado).
planta(solitaria, coquito_aceite).
planta(solitaria, raiz_granado_agrio).
planta(solitaria, helecho_macho).

planta(sudoracion_excesiva, encina).

planta(tifoidea, alcanfor).
planta(tifoidea, borcaja).
planta(tifoidea, quina).
planta(tifoidea, canela).
planta(tifoidea, romero).
planta(tifoidea, salvia).

planta(tina, berro).
planta(tina, tila).
planta(tina, tamarindo).
planta(tina, salvia).

planta(tos, eucalipto).
planta(tos, capulin).
planta(tos, cedron).
planta(tos, salvia).
planta(tos, malva).
planta(tos, marrubio).

planta(tos_ferina, gelsemio).
planta(tos_ferina, quina).
planta(tos_ferina, rabano).
planta(tos_ferina, videta).

planta(tuberculosis, jugo_vastago_platano_morado).
planta(tuberculosis, mastvero_bexto).
planta(tuberculosis, ajo).
planta(tuberculosis, eucalipto).
planta(tuberculosis, pixul).
planta(tuberculosis, pino_roble).

planta(ulcera, cuachalalate).
planta(ulcera, sanguinaria).
planta(ulcera, cola_caballo).
planta(ulcera, girasol).

planta(urticaria, limon).
planta(urticaria, ruibarbo).

planta(varices, hamamelis).
planta(varices, castano_indias).
planta(varices, lanten).
planta(varices, toranjil).

planta(vejiga, apro).
planta(vejiga, apres).
planta(vejiga, cola_caballo).
planta(vejiga, ortiga).
planta(vejiga, malva).

planta(verrugas, leche_higuera).
planta(verrugas, cebolla).
planta(verrugas, nogal).

planta(vertigos, albahaca).
planta(vertigos, espino).

planta(vomitos, menta).
planta(vomitos, tila).
planta(vomitos, marrubio).
planta(vomitos, valeriana).
planta(vomitos, salvia).

planta(voz, cilantro).
planta(voz, ajo).
planta(voz, limon).
planta(voz, pino).

% Hechos sobre deficiencia de vitaminas

vitaminas(carencia_vitaminas, alfalfa).
vitaminas(carencia_vitaminas, espinacas).
vitaminas(carencia_vitaminas, acelga).
vitaminas(carencia_vitaminas, berro).
vitaminas(carencia_vitaminas, cebolla).
vitaminas(carencia_vitaminas, limon).
vitaminas(carencia_vitaminas, zanahoria).
vitaminas(carencia_vitaminas, aceite_bacalao).


