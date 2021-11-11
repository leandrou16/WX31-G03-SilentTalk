Feature: US05:Como profesor, quiero recuperar mi cuenta, en caso me olvide mi contraseña, de forma sencilla, por medio de un mensaje de confirmación de usuario a mi correo electrónico vinculado a la cuenta, para no perder el acceso a mi cuenta.
    Scenario: E01: Ingreso mi correo vinculado a mi cuenta correctamente
        Given que me encuentro en la interfaz de Reestablecer Contraseña
        When ingrese el correo electrónico vinculado a mi cuenta correctamente
         And reciba el mensaje de confirmacion 
        Then el sistema me muestra el menu de cambio de contraseña
Examples:
    | Correo electrónico | Menú |
    | wx31  | Login-Reestablecer contraseña-nueva contraseña|


     Scenario: E02: Ingreso correo distinto al que esta vinculado a mi cuenta   
        Given que me encuentro en la interfaz de Reestablecer Contraseña
        When ingrese el correo electrónico incorrecto
        Then el sistema me muestra un mensaje
Examples:
    | Correo electrónico | mensaje |
    | sv31  | El correo ingresado es incorrecto!!|


    Scenario: E03: Validación correcta de nueva contraseña
        Given que me encuentro en la Interfaz para validar mi nueva contraseña
        When ingrese mi nueva contraseña, con caracteres especiales, mayúsculas y minúsculas
        Then el sistema me muestra un mensaje
Examples:
    | contraseña | mensaje |
    | Abcd1$  | Se realizo el cambio de contraseña correctamente!!  |
    

    Scenario: E04: Problemas en validar nueva contraseña
        Given que me encuentro en la Interfaz para validar mi nueva contraseña
        When ingreso mi nueva contraseña, sin caracteres especiales o mayúsculas
        Then el sistema me muestra un mensaje
Examples:
    | contraseña | mensaje |
    | 123  | La contraseña ingresada no es lo suficientemente segura!!!  |

Feature: US37:Como estudiante con sordera, quiero que el software se ejecute en segundo plano, al presionar el botón "Launch", para que pueda revisar materiales virtuales mientras que el software esta en funcionamiento.
    Scenario: E01: Ingresando a clases virtuales desde PC teniendo el boton para ejecutar en segundo plano
        Given  que me encuentro ingresando a mis clases virtuales
        When abro el software  
        And  presionó el botón "Launch"         
        Then podré cerrar el software, para que se ejecute  
        And  pueda revisar materiales virtuales al mismo tiempo
Examples:
    | software | Ejecucion |
    | sin errores  | En segundo plano|


     Scenario: E02: Ingresando a clases virtuales desde PC teniendo errores en el botón para ejecutar en segundo plano
        Given que me encuentro iniciando las clases virtuales
        When  abro el software con errores y presiono el botón de "Launch" 
        Then este se ejecutara 
        And no podre realizar revisar mis materiales virtuales al mismo tiempo 
Examples:
    | software | Ejecucion |
    | con errores  | En primer plano|

Feature: US11:Como estudiante con sordera, quiero gestionar la RAM que use el software para que funcione según mis necesidades.
    Scenario: E01: Ejecutando el programa con el modo de bajo consumo de RAM
        Given que me encuentro desarrollando mis clases virtuales
        When ejecute el software ,iré al menú de Gestión de RAM  
        And  marcare la opción de bajo consumo de RAM       
        Then el software se ejecutará correctamente, sin consumir toda la memoria RAM, evitando ralentizar mi equipo
Examples:
    | Gestion de RAM | software |
    | Bajo consumo  | ejecucion correcta sin ralentizar el equipo|


     Scenario: E02: Ejecutando el programa con el modo de alto consumo de RAM
        Given que me encuentro desarrollando mis clases virtuales
        When  ejecute el software, iré al menú de Gestión de RAM  
        And marcare la opción de alto consumo de RAM
        Then  el software se ejecutará correctamente  
        And con una velocidad de respuesta superior lo que podría ralentizar dispositivos de gama baja.
Examples:
    | Gestion de RAM | software |
    | alto consumo  | ejecucion con posibles errores|

Feature: US21: Como desarrollador del software, quiero que este sea desarrollado en Python, para trabajar con la Inteligencia Artificial fácilmente.
    Scenario: E01: Durante el desarrollo de la app
        Given que se esta planeando en que lenguaje de programación desarrollar la aplicación
        When  implementemos la IA para el software     
        Then se emplea Python para facilitar el desarrollo de IA dentro del software de traducción
Examples:
    | lenguaje de programacion | 
    | Python  | 


     Scenario: E02:Durante actualizaciones de la app
        Given que se están agregando actualizaciones a la aplicación
        When entremos en el área de la IA
        Then se seguirá empleando Python para continua el desarrollo de IA dentro del software de traducción
Examples:
    | lenguaje de programacion | 
    | Python  | 

Feature: US19: Como profesor, quiero dejar comentarios y recomendaciones a los administradores, para que puedan mejorar su software.
    Scenario: E01: Durante el uso de la aplicación
        Given que me encuentro usando la aplicación 
        When quiera contribuir con comentarios o recomendaciones para los administradores     
        Then iré al apartado de comentarios para poder escribir mi aporte.
Examples:
    | comentarios | 
    | "aporte del usuario"  | 


     Scenario: E02: Cuando perciba algún problema o poca eficiencia en el funcionamiento
        Given que me encuentro usando la aplicación
        When encuentra un mal funcionamiento o poca eficiencia en el software
        Then  ire al apartado de comentarios para poder escribir mi problema
Examples:
    | comentarios | 
    | "Problema del software"  | 

Feature: US26: Como profesor, quiero que el software traduzca las Señas realizadas de los alumnos, de uno a uno, para no ocasionar caos y confusión durante las clases.
    Scenario: E01: Traducción Ordenada del Lenguaje de Señas realizado por varios estudiantes al mismo tiempo
        Given que me encuentro dictando clases
        When  varios de mis alumnos con sordera participen al mismo tiempo 
        And   seleccione la opcion de traduccion ordenada
        Then  el software mostrara las traducciones de manera ordenada para no ocasionar confusiones durante la explicación de la clase.
Examples:
    | Traduccion ordenada | Traduccion|
    | Activada  | "en orden"|


     Scenario: E02: Traducción Desordenada del Lenguaje de Señas realizado por varios estudiantes al mismo tiempo
        Given que me encuentro dictando clases
        When  varios de mis alumnos con sordera, participen al mismo tiempo 
        And  no seleccione la opcion de traduccion ordenada
        Then se generará desorden y confusión en el desarrollo de la clase
Examples:
    | Traduccion ordenada | Traduccion|
    | Desactivada  | "en desorden"|

#SALVADOR#

Feature: US27: Como estudiante con sordera, quiero que el software traduzca únicamente el audio de voz del profesor,para evitar confusión en la traducción, con los audios de alumnos normoyentes.
    Scenario: E01: Cuando el profesor sea el único hablando
        Given que me encuentro prestando atención en clase
        When  el profesor explique el tema desarrollado en clase
        Then  el software realizará únicamente la traducción de lo que dice el profesor .
Examples:
    | Software | Profesor |
    | Silent Talk  | Usuario 2 |

     Scenario: E02: Cuando hayan alumnos con el micrófono
        Given que me encuentro prestando atención en clase
        When  el profesor explique el tema desarrollado en clase 
        And  haya otros alumnos que tengan su micrófono prendido 
        Then el software evitará traducir el audio de los alumnos, concentrándose únicamente en la explicación del profesor.
Examples:
    | Software | alumnos | profesor |
    | Silent Talk | Personas a ignorar | Usuario 2 |

Feature: US24: Como profesor, quiero que el software identifique al alumno que este realizando una seña, mediante su nombre, al momento de traducirla, para poder responderle de forma adecuada
    Scenario: E01: Identificación Correcta del Alumno, al momento de traducir el Lenguaje de Señas
        Given que me encuentro explicando las clases
        When  un alumno realiza el Lenguaje de Señas, para realizar una pregunta
        Then  el software, me informará, quién realizó la pregunta, antes de traducir el Lenguaje de Señas
Examples:
    | alumno | software | informará |
    | Usuario1  | Silent Talk | nombre de un usuario señalado |


     Scenario: E02: Identificación Incorrecta del Alumno, al momento de traducir el Lenguaje de Señas
        Given que me encuentro explicando las clases
        When  un alumno realiza el Lenguaje de Señas, para realizar una pregunta 
        And el software no lo identifica antes de traducir el mensaje.
        Then no podré comunicarme de forma directa con el alumno
Examples:
    | alumno | software | no lo identifica |
    | Usuario1  | Silent Talk | nombre de un usuario no señalado |

    Feature: US10:Como estudiante con sordera, quiero que el software reciba la respuesta de mi profesor, en audio de voz, y lo traduzca correctamente a Lenguaje de Señas, para que pueda entender mejor los temas desarrollados en clase.
    Scenario: E01: Traducción correcta de la explicación del Profesor
        Given que me encuentro atendiendo en clases
        When  el profesor este realizando la explicación de un tema
        Then  el software realizará la traducción del audio de voz a lenguaje de Señas correctamente y podre comprender mejor los temas.
Examples:
    | profesor | software | traducción |
    | Usuario2  | Silent Talk | imagen correcta con el lenguaje en señas |


     Scenario: E02: Traducción incorrecta de la explicación del Profesor
        Given que me encuentro atendiendo la clase
        When  el profesor este realizando la explicación de un tema 
        And el software no lo traduzca correctamente
        Then no entenderé los temas desarrollados, o posiblemente lo entienda de forma incorrecta.
Examples:
    | profesor | software | traducción incorrecta |
    | Usuario2  | Silent Talk | imagen incorrecta con el lenguaje en señas |

    Feature: US07: Como profesor, quiero que el software se ejecute en segundo plano con solo presionar el botón “Launch”, para solamente concentrarme en explicar las clases.
    Scenario: E01: Ingresando a clases virtuales desde PC teniendo el botón para ejecutar en segundo plano
        Given que me encuentro iniciando las clases virtuales
        When  abro el software 
        And presionó el botón Launch para ejecutarlo
        Then  podré cerrar el software, para que se ejecute en segundo plano y pueda concentrarme únicamente en explicar la clase.
Examples:
    | software | botón Launch |
    | Silent Talk | Funciona |


     Scenario: E02:  Ingresando a clases virtuales desde PC teniendo errores en el botón para ejecutar en segundo plano
        Given que me encuentro iniciando las clases virtuales
        When  abro el software 
        And presiono el botón de Launch para ejecutar y este no funciona
        Then me podre distraer mirando el software y no podre atender a clases
Examples:
    | software | botón Launch |
    | Silent Talk  | no Funciona |



     Feature: US09: :Como profesor, quiero que el software me traduzca correctamente las señas que realizan mis alumnos con sordera, a audio de voz, para poder resolver sus dudas con más facilidad.
    Scenario: E01: Traducción Correcta de Lenguaje de Señas a Audio de Voz

        Given que me encuentro explicando los temas de las clases
        When  un alumno con sordera presente una duda 
        And   realice el Lenguaje de Señas respectivo
        Then  el software realizara la traducción correcta a audio de voz respectivo para resolver su duda rápidamente.
        Examples:
            | Traduccion |  Traduccion  |
            | activada  | correcta  | 

Scenario: E02: Traducción incorrecta de Lenguaje de Señas a Audio de Voz

        Given que me encuentro explicando los temas de las clases
        When  un alumno con sordera presente una duda 
        And   realice el Lenguaje de Señas respectivo, pero la traducción no se realiza correctamente.
        Then   no podre comprender la duda que presenta el alumno, por ende no podre ayudarlo
        Examples:
            | Traduccion |  Traduccion  |
            | activada  | inclorrecta  | 


             Feature: US08: Como estudiante con sordera, quiero que el software registre y traduzca en 3 segundos o menos las señas que realice frente a mi cámara, para que el profesor me pueda entender con claridad.
    Scenario: E01: Traducción del profesor a lenguaje de señas en el tiempo previsto

        Given  que me encuentro atendiendo mis clases virtuales
        When  me surja una duda y realice el Lenguaje de Señas frente a mi cámara
        And    el software realizará  la traducción respectiva en el tiempo estimado 
        Then   puedo estar entendiendo en el momento las explicaciones
        Examples:
            | Traduccion |  Tiempo de traduccion  |
            | activada  |  3s> | 

                Scenario: E02: Traducción del profesor a lenguaje de señas fuera del tiempo previsto

        Given  que me encuentro atendiendo mis clases virtuales
        When  me surja una duda y realice el Lenguaje de Señas frente a mi cámara
        And    el software no realice la traducción respectiva en el tiempo estimado 
        Then   me empezare a retrasar en las explicaciones de los profesores poco a poco
        Examples:
            | Traduccion |  Tiempo de traduccion  |
            | activada  | 3s< | 

            Feature: US014: Como profesor, quiero que el software me notifique antes de realizar una actualización, para que no reinicie mi equipo durante el desarrollo de clases.
    Scenario: E01: Durante el desarrollo de las clases en PC  

        Given que me encuentro en mi horario laboral, dictando clases
        When   reciba la notificación respectiva a una actualización del software 
        And   ry me pida que actualice de inmediato
        Then   la pospondré hasta que culmine el desarrollo de mis clases.
        Examples:
            | notificacion de actualizacion |  actualizacion  |
            | activada  | pospuestas  | 

             Scenario: E02: Durante el desarrollo de las clases en smartphone

        Given que me encuentro en mi horario laboral, dictando clases
        When   reciba la notificación respectiva a una actualización del software 
        And   ry me pida que actualice de inmediato
        Then   la pospondré hasta que culmine el desarrollo de mis clases.
        Examples:
            | notificacion de actualizacion |  actualizacion  |
            | activada  | pospuestas  | 


             Feature: US012:  Como profesor, quiero que el software ocupe 50MB o menos dentro de mi dispositivo móvil o PC, para que no se ralentice mi equipo durante el desarrollo de las clases.
    Scenario: E01: Abriendo el Programa desde una PC

        Given que me encuentro desarrollando la explicación de mi clase desde mi PC
        When   ejecute el software
        And   pueda recibir los mensajes de audio de voz, traducidos del Lenguaje de Señas, de mis estudiantes con sordera
        Then   Entonces el software realizará la traducción correctamente, sin ralentizar mi PC
        Examples:
            | software |  lentitud de PC  |
            | ejecutado  | no presenta  | 

            Scenario: E02: Abriendo el Programa desde un smartphone

        Given que me encuentro desarrollando la explicación de mi clase desde mi PC
        When   ejecute el software
        And   pueda recibir los mensajes de audio de voz, traducidos del Lenguaje de Señas, de mis estudiantes con sordera
        Then   Entonces el software realizará la traducción correctamente, sin ralentizar mi PC
        Examples:
            | software |  lentitud de smartphone  |
            | ejecutado  | no presenta  | 