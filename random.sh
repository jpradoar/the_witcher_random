#!/bin/bash

Northern_Status=1
Nilfgaardian_Status=2
Elderland_Status=3
xrand=$1
name=$2
age=$3
re='^[0-9]+$'

if [[ "$xrand" == "R" ]]; then
	xrand=$(shuf -i 1-2 -n 1)
fi

if ! [[ $3 =~ $re ]] ; then
	age="$(shuf -i 28-65 -n 1)"
fi

if [[ -z "$3" ]]; then
	age="$(shuf -i 28-65 -n 1)"
fi

if [[ -z "$2" ]]; then
        name="No Name"
fi


if [[ $xrand == "1" ]]; then
		familyfate=(
		"Tu familia fue dispersada a los vientos por las guerras y no tienes idea de dónde están la mayoría de ellos".
		"Su familia fue encarcelada por delitos o por cargos falsos. Usted fue el único que escapó. Tal vez quiera liberarlos ... o tal vez no".
		"La casa de tu familia fue maldita y ahora los cultivos no crecen o los espectros vagan por los pasillos. Se volvió demasiado peligroso para que te quedes en esta casa".
		"Con tantas guerras, el sustento de tu familia fue destruido. Tu familia recurrió al crimen para sobrevivir".
		"Tu familia acumuló una enorme deuda a través del juego o favores de otros. Necesitas dinero desesperadamente".
		"Tu familia ha caído en una pelea con otra familia. Es posible que ni siquiera recuerdes por qué comenzó esta pelea en primer lugar".
		"Debido a alguna acción o falta de acción, su familia se ha vuelto odiada en su ciudad natal y ahora nadie quiere tener nada que ver con ellos".
		"Un día, todo lo que tenías fue arrancado por una pandilla de bandidos. Tu familia fue masacrada, dejándote completamente solo".
		"Tu familia tiene un secreto profundo y oscuro que, de ser descubierto, te arruinaría completamente. Puedes decidir qué es este secreto o el Maestro de Juego puede decidir".
		"Tu familia ha venido a despreciarse unos a otros. Nadie con quien hayas crecido volverá a hablar entre sí y tienes suerte de recibir un saludo de tus hermanos".
		)

		parentalfate=(
		"Uno o más de tus padres fueron asesinados en las Guerras del Norte. Lo más probable es que tu padre, pero también es posible que tu madre haya luchado o haya sido una víctima".
		"Uno o más de tus padres te dejaron en el desierto para valerse por ti mismo. Tal vez no pudieron mantenerte; tal vez fuiste un accidente".
		"Uno o más de tus padres fueron maldecidos por un mago o debido al odio intenso de alguien con quien se encontraron. La maldición les quitó la vida".
		"Uno o más de tus padres te vendieron por una moneda, o quizás te cambiaron por algunos bienes o servicios. Tus padres necesitaron el dinero más que tú".
		"Uno o más de tus padres se unieron a una pandilla. Viste a esta pandilla a menudo y a veces te obligaron a trabajar con ellos".
		"Uno o más de tus padres fueron asesinados por monstruos. Es tu decisión sobre a qué pueden haber sido presa".
		"Uno o más de tus padres fueron falsamente ejecutados. Pueden haber sido un chivo expiatorio por algo o simplemente en el lugar equivocado".
		"Uno o más de tus padres murieron de una plaga. No había nada que se pudiera hacer sino tratar de aliviar su muerte".
		"Uno o más de tus padres desertaron a Nilfgaard. Es posible que se les haya dado un trato para obtener información o que hayan saltado la frontera".
		"Uno o más de tus padres fueron secuestrados por nobles. Probablemente fue tu madre la que atrajo la atención de un señor local o de su hijo".
		)

		familystatus=(
		"Creciste en una noble mansión con sirvientes que te esperaban, pero siempre se esperaba que te comportaras e impresionaras. Equipo de partida: Papel de la nobleza"
		"Adoptado por un mago. Fuiste entregado a un mago a una edad temprana. Viviste cómodamente pero apenas viste a tu cuidador, que siempre estaba ocupado. Equipo de arranque: una crónica"
		"Caballeros Creciste en una mansión donde aprendiste a ser una verdadera dama o señor. Tu destino se fijó desde el nacimiento. Equipo de partida: Heráldica personal"
		"Familia mercante Creciste entre comerciantes y siempre estuviste rodeado de gritos, regateos y dinero. Equipo de partida: 2 conocidos"
		"Familia de artesanos Creciste en un taller de artesanos. Tus días estuvieron llenos de los sonidos incesantes de la creación, y con frecuencia largos. Equipo de inicio: 3 Diagramas / fórmulas comunes"
		"Familia de animadores Creciste con una banda de intérpretes. Es posible que hayas viajado o que hayas actuado en un teatro. Equipo de partida: 1 objeto para malabares y 1 amigo"
		"Familia campesina Creciste en una granja en el campo. No tenías mucho a tu nombre y tu vida era simple, pero peligrosa. Equipo de partida: un token de suerte"
		)

		mif=(
		"Una iglesia en la que creciste con la influencia de tu religión local y pasaste horas al día en la iglesia. Equipo: un texto sagrado"
		"Un artesano Tu mayor influencia fue un artesano que te enseñó a apreciar el arte y la habilidad. Equipo: un token que hiciste"
		"Un Conde Tu mayor influencia fue un conde o una condesa que te enseñó a componerte. Engranaje: un anillo de plata"
		"Un mago Tu mayor influencia fue un mago que te enseñó a no temer a la magia ya cuestionar siempre. Equipo: Un pequeño colgante"
		"Una bruja Tu mayor influencia fue una bruja del pueblo que te enseñó la importancia del conocimiento. Equipo: una muñeca de magia negra"
		"Una persona maldita Tu mayor influencia fue una persona maldita que te enseñó a nunca juzgar a los demás con dureza. Equipo: Un tótem tallado"
		"Un animador Tu mayor influencia fue un animador que te enseñó mucho sobre el arte del espectáculo. Equipo: un Playbill o un ticket"
		"Un comerciante Tu mayor influencia fue un comerciante que te enseñó a ser astuto e inteligente. Engranaje: una moneda que ganaste"
		"Un criminal Tu mayor influencia fue un criminal que te enseñó a cuidarte. Equipo: una máscara"
		"Un hombre en armas Tu mayor influencia fue un soldado que te enseñó cómo defenderte. Equipo: un trofeo de batalla"
		)

		Siblings1=( "1" "2" "3" "4" "5" "6" "7" "8" )

fi

####################### Nilfgaardian_Status #############################################################

if [[ $xrand == "2" ]]; then
		familyfate=(
		"Su familia fue contratada por delitos contra el Imperio o por cargos falsos. Sólo usted escapó".
		"Tu familia estuvo exiliada en el desierto de Korath y es probable que hayas pasado la mayor parte de tu vida temprana luchando por sobrevivir en el desolado territorio".
		"Tu familia fue asesinada por un mago pícaro que tuvo una venganza contra tu familia o solo quería sangre. De cualquier manera, estás solo".
		"Tu familia desapareció y no tienes idea de a dónde fueron. Un día se levantaron y se fueron".
		"Tu familia fue ejecutada por traición contra el Imperio. Fuiste la única en escapar de este destino".
		"Su familia fue despojada de su título por alguna razón. Usted fue desalojada de su hogar y se fue luchando para sobrevivir entre las masas sin lavar".
		"El nombre de tu familia fue empañado por un pariente mágico que hizo alarde de su don mágico de manera vergonzosa como un mago del norte".
		"Has deshonrado a tu familia ante los ojos del Imperio. Algo que hiciste o dejaste de hacer ha arruinado tu nombre personal y ha dañado a tu familia"
		"Tu familia tiene un secreto profundo y oscuro que, de ser descubierto, los destruiría a ellos y su nombre para siempre. Debes proteger este secreto con tu vida".
		"Su familia fue asesinada. Pueden haber estado en el camino del plan de alguien o pueden haber sido utilizados para llegar a alguien más poderoso. De cualquier manera, su familia ya se ha ido"
		)
		parentalfate=(
		"Tu padre murió en una de las Guerras del Norte. Puede que ya haya estado en el ejército o que haya sido reclutado para el servicio durante esa guerra".
		"Uno o más de tus padres fueron envenenados. Este puede haber sido el trabajo de un rival profesional, o puede haber sido para sacar a tus padres del camino"
		"La policía secreta se llevó a sus padres o padres para interrogarlos. La semana siguiente, sus cuerpos fueron encontrados colgados en las calles de la ciudad".
		"Uno o más de tus padres fueron asesinados por un mago pícaro. Lo más probable es que intentaron convertir al mago en cuestión en el Imperio y pagar el precio".
		"Uno o más de tus padres fueron encarcelados por magia ilegal. Tal vez en realidad cometieron el crimen o tal vez fue una trampa".
		"Uno o más de tus padres fueron exiliados al desierto de Korath. Probablemente cometieron un crimen mayor, pero matarlos causaría problemas".
		"Uno o más de tus padres fueron maldecidos por un mago. El mago probablemente tuvo una venganza contra ellos".
		"Tus padres simplemente te dejaron un día. Puede que ni siquiera sepas por qué lo hicieron. Un día tus padres simplemente desaparecieron".
		"Uno o más de tus padres fueron esclavizados. O bien cometieron un crimen contra el Imperio o fueron creados por un rival".
		"Uno o más de tus padres fueron enviados al Norte como agentes dobles. Es probable que ni siquiera sepas dónde están ahora, pero están sirviendo al Emperador".
		)
		familystatus=(
		"Aristocracia Creciste en una mansión, entrenándote para conocer el mundo de la corte. El lujo fue solo tu incentivo. Engranaje de partida: Papel de la Nobleza"
		"Alto clero Fuiste criado entre el clero del Gran Sol. Creciste piadoso y siempre te has dado cuenta de que la Iglesia te guiaría. Equipo de partida: un símbolo sagrado"
		"Caballeros Usted creció sabiendo que su deber era con el Emperador, y que todo su lujo era una recompensa por su eventual servicio. Equipo de partida: Heráldica personal"
		"Familia de artesanos Creciste en una tienda de artesanos y aprendiste a elaborar productos para la venta en todo el mundo. Aprendiste el valor de la calidad. Equipo de partida: 3 diagramas comunes / fórmulas"
		"Merchant Family Creciste vendiendo productos en todo el Imperio. Viste todo tipo de productos exóticos de todo el mundo. Equipo de partida: 2 conocidos"
		"Nacido en la servidumbre Naciste en la servidumbre y vivías en cuartos simples. Tenías muy poco y trabajabas a menudo. Equipo de partida: un pájaro o serpiente entrenado"
		"Familia campesina Creciste en una de las miles de granjas en todo el Imperio. Tenías poco a tu nombre, pero la vida era simple. Equipo de partida: un token de suerte"
		)
		mif=(
		"El culto del gran sol Tu mayor influencia fue la Iglesia. Pasaste años aprendiendo cantos y rituales. Equipo: una máscara ceremonial"
		"Un marginado Tu mayor influencia fue un marginado social que te enseñó a cuestionar siempre a la sociedad. Equipo: una insignia de colores brillantes"
		"Un conde Su mayor influencia fue un conde que le enseñó a dirigir e inculcar el orden. Equipo: un collar de plata"
		"Un mago Tu mayor influencia fue un mago que te enseñó la importancia del orden y la precaución. Equipo: un emblema"
		"Un abogado Tu mayor influencia fue un detective imperial. Pasaste mucho tiempo resolviendo misterios. Equipo: una lente que magnifica"
		"Un cazador de magos Tu mayor influencia fue un cazador de magos que te enseñó a ser cauteloso con la magia y los magos. Equipo: un anillo con dimeritium"
		"Un hombre en armas Tu mayor influencia fue un soldado que compartió historias de peligro y emoción. Equipo: un trofeo de batalla"
		"Un artesano Tu mayor influencia fue un artesano que te enseñó a apreciar la habilidad y la precisión. Equipo: una baratija que hiciste"
		"Un monstruo sensible Tu mayor influencia fue un monstruo sensible que te enseñó que no todos los monstruos son malvados. Equipo: Un tótem extraño"
		"Un animador Tu mayor influencia fue un animador que te enseñó a expresarte. Equipo: un token de un fan"
		)
		Siblings1=( "1" "2" "3" "4" "5")

fi


################################ Elderland_Status #########################################################################


if [[ $xrand == "3" ]]; then
	familyfate=(
	"Tu familia se marcó como simpatizantes humanos y no son particularmente amados en su tierra natal".
	"Su familia fue rechazada por opiniones disidentes y ahora la gente no se socializará con usted o su familia en absoluto".
	"Tu familia murió en las Guerras del Norte. Es posible que hayan peleado en la guerra, o fueron víctimas de la guerra quienes por casualidad se pusieron en el camino"
	"Tu familia ha estado atrapada en una enemistad durante siglos. Tal vez no recuerdes por qué comenzó esta enemistad, pero es terrible".
	"Su familia fue despojada de su título por alguna razón. Usted fue desalojada de su hogar y se fue luchando para sobrevivir".
	"Tu familia recurrió a asaltar asentamientos humanos al principio de tu vida para obtener comida y tal vez contraatacar a los humanos".
	"La casa de tu familia está encantada. Lo más probable es que esto se deba a que tu hogar fue el sitio de muchas, muchas muertes durante la guerra contra los humanos".
	"Su familia ha sido dividida por un suegro humano que fue traído a su familia por un hermano o pariente. A algunos miembros de su familia les gustan y otros los odian".
	"Su familia fue asesinada por humanos que pensaron que eran Scoia'tael. Es posible que hayan sido asesinados o colgados sin procedimientos judiciales ni juicios".
	"Su familia desciende de un traidor infame. Mancha las interacciones de su familia con otras personas de las razas más viejas y ha hecho que vivir en el viejo país sea difícil".
	)
	parentalfate=(
	"Uno o más de tus padres fueron acusados ​​de ser Scoia’tael. Las personas que te rodean miran de reojo a tus padres"
	"Uno o más de tus padres se volvieron a tu propia gente y vendieron las razas más antiguas a los humanos. Tus padres no son bienvenidos en tu tierra natal".
	"Uno o más de tus padres se suicidaron por desesperación. Sin ninguna esperanza de recuperar la gloria del pasado, se dieron por vencidos y terminaron".
	"Mientras viajaban, uno o más de tus padres fueron víctimas del racismo humano. Murieron en un pogrom y sus cuerpos fueron exhibidos en picas".
	"Uno o más de tus padres se han obsesionado con recuperar la antigua gloria de su raza. Sacrifican todo por esta causa".
	"Uno o más de tus padres fueron exiliados de tu tierra natal. Hay muchas razones posibles, desde el crimen hasta las opiniones disidentes".
	"Uno o más de tus padres fueron maldecidos. Puedes decidir qué es esta maldición o el Maestro de Juego puede decidir".
	"Tus padres te dieron a otra familia para que pudieras sobrevivir, porque ellos no podían cuidar de ti"
	"Uno o más de tus padres se unieron a la Scoia’tael en un intento de vengarse de los humanos que ven como arruinando sus vidas".
	"Uno o más de tus padres murieron en un 'accidente'. Lo más probable es que se convirtieron en un enemigo poderoso que finalmente encontró la manera de deshacerse de ellos".
	)
	familystatus=(
	"Aristocracia Creciste en un palacio y te recordaban constantemente la gloria del pasado. Se esperaba que estuvieras a la altura del legado. Arranque: Papel de la Nobleza"
	"Noble Warrior Creciste como un niño noble guerrero, se espera que crezca en la reputación de tu familia y que nunca deshonre tu herencia. Equipo de partida: Heráldica personal"
	"Comerciantes Creciste entre comerciantes ambulantes. La vida era difícil a veces, pero las artesanías no humanas siempre son valiosas. Equipo de partida: 2 conocidos"
	"Scribe Family Creciste como hijo de escribas, registrando y protegiendo la mayor cantidad de historia posible de personas mayores. Equipo de inicio: una crónica"
	"Animadores Creciste cantando canciones y tocando obras de teatro. Trabajaste en el backstage, ayudaste a escribir canciones e instrumentos fijos. Equipo de arranque: 1 instrumento y 1 amigo"
	"Familia de artesanos Creciste en una familia de artesanos, visitando antiguos palacios en busca de inspiración y pasando horas todos los días en proyectos. Equipo de inicio: 3 Diagramas / Fórmulas Comunes "
	"Familia Lowborn Creciste en una familia lowborn, cuidando las mansiones de otros o trabajando en pequeños empleos en tu ciudad. Equipo de partida: un token de suerte"
	)
	mif=(
	"Un humano Tu mayor influencia fue un humano que te enseñó que a veces el racismo es infundado. Equipo: una muñeca de paja"
	"Un artesano Tu mayor influencia fue un artesano que te enseñó a apreciar el arte de los mayores. Engranajes: un pequeño símbolo que hiciste"
	"Un guerrero noble Tu mayor influencia fue un Bailarín de guerra o un Defensor Mahakaman que te enseñó a honrarte. Equipo: un símbolo de batalla"
	"Un noble Tu mayor influencia fue un noble que te enseñó el orgullo y cómo comportarte. Equipo: un anillo de sello"
	"Un animador Tu mayor influencia fue un animador que te enseñó la importancia de la felicidad y la belleza. Equipo: una guía o un boleto"
	"Un asaltante Tu mayor influencia fue un asaltante que te enseñó que tienes derecho a tomar lo que necesites. Gear: A Satchel"
	"Un sabio Tu mayor influencia fue un sabio que te enseñó sobre la importancia de la historia de los ancianos. Equipo: Un libro de cuentos"
	"Un criminal que tu mayor influencia fue un criminal que te enseñó a seguir tus propias reglas. Equipo: una máscara"
	"Un cazador Tu mayor influencia fue un cazador que te enseñó cómo sobrevivir en el desierto. Equipo: Un trofeo de caza"
	"Un granjero de tierras bajas Tu mayor influencia fue un granjero de tierras bajas que te enseñó a vivir feliz. Equipo: la pala de un granjero"
	)
	Siblings1="Los elfos pueden tener hasta 2 hermanos. Roll 1d10.
	En un 1-2 tienes un hermano.
	En un 9-10 tienes dos hermanos.
	En un 3-8 eres hijo único.
	Los enanos usan la carta nilfgaardiana para los hermanos."
fi



if [ "$xrand" == "1" ] || [ "$xrand" = "2" ] || [ "$xrand" = "3" ] ; then
	Fortune=(
	"Algún evento importante o golpe de suerte te trajo 1d10 x 100 coronas".
	"Encuentre un maestro Entrenó con un maestro. Obtenga +1 en cualquier habilidad de INT o comience una nueva habilidad de INT en +2".
	"Un noble te debe algo que hiciste te ganó 1 favor de un noble / noble".
	"Encuentra un maestro de combate Entrenaste con un soldado. Gana +1 en cualquier habilidad de combate o comienza una nueva habilidad de combate con +2".
	"Un brujo te debe. En algún momento te encontraste con un brujo y conseguiste obtener un favor de ellos".
	"Me enamoré de los bandidos. Te encontraste con una pandilla de bandidos. Una vez al mes puedes pedirles a estos bandidos un favor".
	"Domó un animal salvaje. Domó un animal salvaje que encontró en el desierto. Rollo 1d10. 1-7: Perro salvaje, lobo".
	"Un mago te debe. Conseguiste obtener un favor de un mago poderoso al que ayudaste".
	"Bendecido por un sacerdote. Te dieron un símbolo sagrado que puedes mostrar a las personas de esa fe para obtener un +2 a Carisma con ellos".
	"Knighted: fuiste nombrado caballero por valor en un reino aleatorio. En este reino ganas +2 de reputación y eres reconocido como un caballero".
	)


	Misfortune=(
	"Deuda Se endeudó profundamente con la suma de 1d10x100 coronas".
	"Encarcelamiento Algo que usted hizo (o una acusación falsa) lo tuvo encarcelado por 1d10 meses".
	"Adicción Usted contrajo una adicción. Puede elegir. Consulte la barra lateral para ver las reglas de la adicción".
	"Amante, amigo o pariente muerto matado 1d10.\n
	1-5: murieron en un accidente
	6-8: Fueron asesinados por monstruos\n
	9-10: Fueron asesinados por bandidos.\n"
	"Tirada de acusación falsa 1d10.\n
	1-3: La acusación es de robo\n
	4-5: Su cobardía o traición\n
	6-8: Su asesinato\n
	9: Su violación\n
	10: Su brujería ilegal.\n"
	"Cazado por el Rollo de Ley 1d10.\n
	1-3: Son solo algunos de los guardias.
	4-6: Es un pueblo pequeño entero\n
	7-8: Es una ciudad importante
	9-10: Todo un reino te persigue.\n"
	"Rollo de traición 1d10\n
	1-3: Estás siendo chantajeado\n
	4-7: Un secreto fue expuesto\n
	8-10: Fuiste traicionado por alguien muy cercano a ti\n"
	"Accidente Roll 1d10.\n
	1-4: Estabas desfigurado. Cambia tu posición social a temida\n
	5-6: Te curaste por 1d10 meses\n
	7-8: Perdió 1d10 meses de memoria de ese año\n
	9-10: sufres de pesadillas horribles (7 de cada 10 de posibilidades cada vez que duermes). \n"
	"Rollo de incapacitación mental o física 1d10.\n
	1-3: Fuiste envenenado; perder permanentemente 5 HP\n
	4-7: Sufre de ataques de ansiedad y debe hacer salvas de aturdimiento (cada 5 rondas) en momentos de estrés\n
	8-10: Tienes una psicosis mayor. Oyes voces y eres violento, irracional y depresivo. El GM controla estas voces.\n"
	"Maldito Has sido maldecido. Consulta la sección Curse en la página.230 para determinar los detalles\n"
	)

	Allies_position=(
	"Un cazarrecompensas - Cómo se conoció: "
	"Un mago"
	"Un mentor o maestro"
	"Un amigo de la infancia"
	"Un artesano"
	"Un viejo enemigo"
	"Duque / Duquesa"
	"Sacerdote / Sacerdotisa"
	"Un soldado"
	"bardo"
	)
   Allies_know=(
   	"te salvó de algo"
   	"te encontraste en una taberna"
   	"te salvaron de algo"
   	"te contrataron para algo"
   	"estuviste atrapado con el"
   	"te obligaron a trabajar juntos"
   	"lo contrataste para algo"
   	"te conociste mientras estabas borracho y le pegaste"
   	"te conociste mientras viajabas"   	
   	"lucharon juntos"
   	)
	Enemies_position=(
	"Ex-amigo"
	"ex amante"
	"Relativo"
	"Enemigo de la infancia"
	"Un cultista"
	"A Bardo"
	"Un soldado"
	"Un bandido"
	"Duque / Duquesa"
	"Un mago"
	)
	Enemies_cause=(
	"Agredió a la parte ofendida"
	"causó la pérdida de un ser querido"
	"Causó una gran humillación"
	"Causó una maldición"
	"Acusado de brujería ilegal"
	"Rechazada Románticamente"
	"causó una herida terrible"
	"Chantaje"
	"Planes frustrados"
	"causó un ataque de monstruo"
	)
	la=(
	"Un amor feliz"
	"Una tragedia romántica"
	"Un amor problemático"
	"Putas y libertinaje"
	)
	Tragedy=(
	"Su amante fue capturado por bandidos hace algún tiempo y sigue siendo su cautivo"
	"Tu amante desapareció misteriosamente un día y no sabes a dónde fueron"
	"Su amante fue encarcelado o exiliado por delitos que tal vez no hayan cometido"
	"Tu amante te fue arrebatada por una poderosa maldición"
	"Algo se interpuso entre tú y tu Amante y fuiste obligado a matarlos"
	"Tu amante se suicidó. Es posible que no sepas por qué lo hicieron"
	"Tu amante fue secuestrado por un noble y convertido en una concubina"
	"Un rival te sacó de la acción y robó el afecto de tu Amante"
	"Tu Amante fue asesinado por monstruos. Puede haber sido un accidente o planeado"
	"Tu amante es un mago, un brujo o un monstruo sensible, condenando el romance"
	)

	Problem=(
	"La familia o los amigos de tu Amante te odian y no aprueban tu romance"
	"Your Lover trabaja como una puta para ganarse la vida y se niega a renunciar a su trabajo"
	"Tu Amante está bajo una maldición menor como la paranoia o pesadillas horribles"
	"Tu Amante durmió y se negó a detenerse cuando te enteraste"
	"Tu amante está terriblemente celoso y no puede soportar que estés cerca de cualquier posible rival"
	"Luchas constantemente y nada puede detenerlo por mucho tiempo. Siempre desciendes a gritar"
	"Son rivales profesionales de algún tipo. Se roban clientes entre sí con frecuencia"
	"Uno de ustedes es humano y el otro no humano, lo que dificulta su vida"
	"Tu amante ya está casado. Pueden o no estar dispuestos a dejar a su cónyuge"
	"Tus amigos o familiares odian a tu amante y no aprueban tu romance"
	)

	Style=("Afectaciones: Trofeos" "Afectaciones: Anillos y joyas" "Afectaciones: Baratijas" "Afectaciones: Tatuajes" "Afectaciones: Pintura de guerra" "Afectaciones: Capa sombría" "Afectaciones: Bandanas brillantes" "Afectaciones: Parche en el ojo" "Afectaciones: Pieles" "Afectaciones: Insignias y placas")
	Personality=("Secreto" "Rebelde" "Violento" "Idealista" "Contemplativo" "Popa" "Engañoso" "Amistoso" "Arrogante" "Nervioso")
	Values=("Dinero" "Honor" "Tu palabra" "Actividades" "Conocimiento" "Venganza" "Poder" "Amor" "Supervivencia" "Amistad" )
	yle2=("La fortuna o la desgracia" "Aliados y enemigos" "Romance")
	fym=("Fortuna" "Desgracia")
	aae=("Aliados" "Enemigos")
	Gender=("Masculino" "Femenino")
	random_Gender=${Gender[$RANDOM % ${#Gender[@]} ]}	


##########################################################################################

	random_familyfate=${familyfate[$RANDOM % ${#familyfate[@]} ]}
	random_parentalfate=${parentalfate[$RANDOM % ${#parentalfate[@]} ]}
	random_familystatus=${familystatus[$RANDOM % ${#familystatus[@]} ]}
	random_mif=${mif[$RANDOM % ${#mif[@]} ]}
	random_Siblings1=${Siblings1[$RANDOM % ${#Siblings1[@]} ]}
	random_yle2=${yle2[$RANDOM % ${#yle2[@]} ]}
	result=$random_yle2
	random_Fortune=${Fortune[$RANDOM % ${#Fortune[@]} ]}
	random_fym=${fym[$RANDOM % ${#fym[@]} ]}
	random_Misfortune=${Misfortune[$RANDOM % ${#Misfortune[@]} ]}
	random_aae=${aae[$RANDOM % ${#aae[@]} ]}
	random_la=${la[$RANDOM % ${#la[@]} ]}
	random_Tragedy=${Tragedy[$RANDOM % ${#Tragedy[@]} ]}
	random_Problem=${Problem[$RANDOM % ${#Problem[@]} ]}
	random_Style=${Style[$RANDOM % ${#Style[@]} ]}
	random_Values=${Values[$RANDOM % ${#Values[@]} ]}

	random_Allies_position=${Allies_position[$RANDOM % ${#Allies_position[@]} ]}
	random_Allies_know=${Allies_know[$RANDOM % ${#Allies_know[@]} ]}
	random_Enemies_position=${Enemies_position[$RANDOM % ${#Enemies_position[@]} ]}
	random_Enemies_cause=${Enemies_cause[$RANDOM % ${#Enemies_cause[@]} ]}
        random_Personality=${Personality[$RANDOM % ${#Personality[@]} ]}


##########################################################################################


	if [ "$xrand" == "1" ]; then
		empire="Northern" 
	fi

	if [ "$xrand" = "2" ]; then
		empire="Nilfgaardian" 
	fi

	if [ "$xrand" = "3" ] ; then
		empire="Elderland"
	fi
	echo "<div align='right'>Tu nombre: ________________________</div>     <br>"
	echo "<b>NOMBRE:  </b>" $name "<br>"
        echo "<b>IMPERIO:</b> " $empire "  <br> "
	echo "<b>EDAD:  </b>" $age " <br><br> "
	echo "<b>DESTINO FAMILIAR: </b><br> "$random_familyfate " <br> "
	echo "<b>DESTINO PATERNAL: </b><br>" $random_parentalfate " <br> "
	echo "<b>ESTADO FAMILIAR:</b><br>" $random_familystatus " <br> "
	echo "<b>AMIGO MAS INFLUYENTE:</b><br>" $random_mif " <br> "
	echo "<b>HERMANOS: </b> <br>"
	for i in `seq $random_Siblings1`; do
		for x in $i; do
			Gender=("Masculino" "Femenino")
			random_Gender=${Gender[$RANDOM % ${#Gender[@]} ]}	

			xage=("Joven" "Adulto" "Anciano")
			random_xage=${xage[$RANDOM % ${#xage[@]} ]}

			Personality=("Tímido" "Agresivo" "Tipo" "Extraño" "Reflexivo" "Hablador" "Romántico" "Popa" "Depresivo" "Inmaduro")
			random_Personality=${Personality[$RANDOM % ${#Personality[@]} ]}
		
			fayou=("Te quiere muerto" "No puede soportarte" "Celoso de ti" "Sin sentimientos sobre ti" "Te gusta" "Te mira" "Posesivo de ti")
			random_fayou=${fayou[$RANDOM % ${#fayou[@]} ]}

			echo "   <b> $x.- </b> Género: $random_Gender - Edad: $random_xage - Sentimientos sobre ti: $random_fayou - Personalidad: $random_Personality <br>"
		done
	done
	echo "<br><b> ESTADO PERSONAL : </b><br> "
	echo "<b> &#9642;  Personalidad: </b> $random_Personality  <font color='red'>(Opcional para jugar)</font> <br>"
	echo "<b> &#9642;  Estilo: </b>" $random_Style " <br>"
	echo "<b> &#9642; Valores: </b>" $random_Values " <br> "
	echo "<br><b>EVENTOS EN TU VIDA: </b><br> "


	if [[ $result == "La fortuna o la desgracia" ]]; then
		if [[ $random_fym == "Fortune" ]]; then
			echo "<b>Fortuna o Desgracia: <br>&#9642;  Fortuna: </b> "$random_Fortune " <br> "
		else 
			echo -e "<b>Fortuna o Desgracia: <br>&#9642;  Desgracia: </b> "$random_Misfortune " <br> "
		fi
	fi

	if [[ $result == "Aliados y enemigos" ]]; then
	        if [[ $random_aae == "Aliados" ]]; then
	                echo " <b>Aliados y Enemigos: <br>&#9642;  Aliados: </b> Genero: $random_Gender - Posicion: $random_Allies_position - Como se conocieron: $random_Allies_know <br> "
	        else
	                echo " <b>Aliados y Enemigos: <br>&#9642;  Enemigos: </b> Genero: $random_Gender - Posicion: $random_Enemies_position - La causa: $random_Enemies_cause <br> "
	        fi
	fi

	if [[ $result == "Romance" ]]; then
		if [[ $random_la == "Una tragedia romántica" ]]; then
	                echo "<b>Romance: <br>&#9642; Tragedia: </b>"$random_Tragedy " <br> "
	        elif [[ $random_la == "Un amor problemático" ]]; then
	                echo "<b>Romance: <br>&#9642;  Problema: </b>"$random_Problem " <br> "
	        else
			echo "<b>&#9642; Romance: </b>" $random_la " <br> "
		fi
	fi
fi

##########################################################################################

if [[ -z "$xrand" ]]; then
	echo "
		How to use:  
			Northern Status     => ./randomizador.sh 1
			Nilfgaardian Status => ./randomizador.sh 2
			Elderland Status    => ./randomizador.sh 3
		"
fi

