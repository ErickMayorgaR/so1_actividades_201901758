# Tipos de Kernel y Sus Diferencias

## Nucleos Monoliticos

Estos sistemas tienen un núcleo grande y complejo, que engloba todos los servicios del sistema. Está programado de forma no modular, concentra todas las funcionalidades posibles como: planificacion, sistema de archivos, redes, controladores de dispositivos, gestion de memoria, etc. 

Tiene un tamaño considerable y debe de ser recompilado para añadir una nueva funcionalidad. 

## Micro - Núcleos 

Son núcleos de pequeño tamaño que fueron compilados sólo con las necesidades más básicas del sistema operativo. El resto de funcionalidades son añadidas mediante adicion de modulos externos al núcleo.

## Núcleos Híbridos

Es una arquitectura basada en la combinación de microkernel y núcleo monolítico, son utilizadas dentro de las computadoras por medio de los sistemas operativos. Una carácteristica especial del núcleo hibrido es que cuenta con código extra con el objetivo de mejorar el rendimiento.

Los controladores de dispositivos y las extensiones al sistema operativo se pueden cargar y descargar fácilmente como módulos, mientras el sistema continúa funcionando sin interrupciones. 
También a diferencia de los núcleos monolítucos tradicionales, los controladores pueden ser prevolcados bajo ciertas condiciones.


## Exonúcleos 

Los exonúcleos representan una aproximación radicalmente nueva al diseño de sistemas operativos. La idea subyacente es perminir que el desarrollador tome todas las decisiones relativas al rendimiento del hardware. Los exonúcleos son extremadamente pequeños, ya que limitan expresamente su funcionalidad a la protección y el multiplexado de recursos.


# User vs Kernel Mode

## User Mode
Cuando un programa es iniciado en un sistema operativo, se inicia el programa en user mode, cuando un programa necesita correr, se procesa una direccion virtual de espacio en su ventana. Los programas en modo usuario cuentan con menos privilegios que las aplicaciones en modo usuario, y no tienen permiso de acceder a los recursos del sistema de manera directa, por ejemplo si una aplicación quiere acceder a los recursos del sistema en modo usuario, necesitará ir a través de el kernel del sistema operativo.

## Kernel Mode

El Kernel es el núcleo de el programa en el cual otros componentes del sistema operativo descansan, es usado para acceder a los componentes de hardware y programa que procesos deberian de correrse en el sistema de una computadora y cuando, también maneja el software de la aplicación y su interacción con el hardware. 

En Modo Kernel se puede interactuar directamente con el hardware, por ejemplo acceder a una cámara web, se utilizaría una syscall para manejar las peticiones de los switches del CPU, generalmente del modo usuario al modo kernel en el tiempo de ejecución. 

