# Fase de Recopilacion y recoleccion de inforamcion

Esta fase consiste en tratar de obtener todos los datos/informacion posible sobre nuestro objetivo, por ejemplo si estamos auditando una empresa u organizacion, debemos de recopilar informacion de toda su infraestructura tecnologica.

Todas las fases se construyen desde la fase anterior a cada una
Esta fase se dividira en **3 sub-fases**:

- Recopilacion pasiva de informacion
- Recopilacion semi-pasiva de informacion
- Recopilacion activa de informacion

## 1.- Recopilacion pasiva de informacion
	
- Recoleccion de informacion sobre un objetivo determinado sin que las actividades realizadas por el analista sean minimamente detectadas por dicho objetivo.
- Dificil de ralizar y a menudo proporciona resultados poco concluyentes.
- La manera habitual de recoleccion pasiva de informacion es mediante el acceso a la informacion almacenada en lugares publicos.
- Raramente se utiliza de manera individual.

## Hacking con buscadores: Google Hacking (google dorks)
Todos los buscadores (google, bing, etc.), nos proporcionan algunas capacidades avanzadas, como comando y operaciones booleanas con las cuales podemos hacer busquedas mas avanzadas que las busquedas habituales que hacemos como usuarios cotidianos.

COMANDOS:  
sintaxis:  
comando: consulta  

busca ficheros de cierta organizacion o dominio:  

*aqui en vez de hacer una busqueda habitual, tenemos el comando site: que nos permite buscar sobre un sitio en concreto.*  
~~~
udemy ficheros pdf ==> site:udemy.com ficheros pdf  
~~~
*para especificar mas la busqueda podemos utlizar el comando filetype para buscar tipos de ficheros especificos.*
~~~
site:udemy.com ficheros pdf ==> site:udemy.com filetype:pdf
~~~
*muestar urls que tengan las cadenas index of y chat/logs*
~~~
"index of" / "chat/logs"
~~~
*muestra archivos sql con la cadena MySQL dump y que su interior tengan las palabras pass, password, passwd, pwd*
~~~
filetype:sql "MySQL dump" (pass|password|passwd|pwd)
~~~
*busca sitios que en su pagina index.php acepte el parametro id= para poder hacer una inyeccion sql*
~~~
inurl:index.php?id=
~~~
*Muestra archivos pdf en sitios .gov con la palabra restricted en el titulo*
~~~
site:gov filetype:pdf  allintitle:restricted
~~~  

Google Hacking Database (https://www.exploit-db.com/google-hacking-database)
repositorio de google dorks (comandos de busqueda avanzados) que vulneran algun tipo de informacion sensible


## Comandos Principales de Google Hacking (Dorks)

`define:término`: Se muestran definiciones procedentes de paginas web para el termino buscado  
'***filetype:término***' : Las busquedas se restringen a paginas cuyos nombres acaben en el termino especificado. Sobre todo se utiliza para determinar la extension de los ficheros requeridos. Nota: el comando ***ext:término*** se usa de manera equivalente.  
***site:sitio/dominio*** : Los resultados se restringen a los contenidos en el sitio o dominio especificado. Muy util para realizar busquedas en sitios que no tienen buscadores internos propios.  
***link:url*** : Muestra páginas que apuntan a la definida por dicha url. La cantidad (y calidad) de los enlaces a una pagina determina su relevancia para los buscadores. Nota: solo presenta aquellas paginas con pagerank 5 o mas.  
***cache:url*** : Semostrará la versión de la pagina definida por url que google tiene en su memoria, es decir, la copia que hizo el robot de google la ultima vez que paso por dicha pagina.  
***info:url*** : Google presentará información sobre la página web que corresponda con la url.  
***related:url*** : Google mostrará páginas similares a la que especifica la url. Nota: Es dificil enender que tipo de relacion tiene en cuenta Google para mostrar dichas paginas. Muchas veces carece de utilidad.  
***allinanchor:términos*** : Google restringe las búsquedas a aquellas páginas apuntadas por enlaces donde el texto contiene los términos buscados.  
***inanchor:término*** : Las busquedas se restringen a aquellas apuntadas por enlaces donde el texto contiene el término especificad. A diferencia de *allinanchor* se puede combinar con la busqueda habitual.  
***allintext:términos*** : Se restringen las busquedas a los resultados que contienen los términos en el texto de la pagina.  
***intext:término*** : Restringe los resultados a aquellos textos que contienen términos en el texto. A diferencia de *allintext* se puede combinar con la búsqueda habitual de términos.  
***allinurl:términos*** : Sólo se presentan los resultados que contienen los términos buscados en la url.  
***inurl:término*** : Los resultados se restringen a aquellos que contienen el término en la url. A diferencia de *allinurl* se puede combinar con la búsqueda habitual de términos.  
***allintitle:términos*** : Restringe los resultados a aquellos que contienen los términos en el titulo.  
***intitle:término*** : Restringe los resultados a aquellos documentos que contienen término en el titulo. A diferencia de *allintitle* se puede combinar con la búsqueda habitual de términos.  


### Operadores Booleanos
Google hace uso de los operadores booleanos para realizar búsquedas combinadas de varios términos. Esos operadores son una serie de simbolos que gooogle reconoce y modifican la busqueda realizada:  
- " " : Terminos entre comillas busca las palabras o frases exactas.
- \- : excluye una palabra de la busqueda (Ej: gemail -hotmail, busca paginas en las que aparezca gmail y no aparezca hotmail)
- OR (|) : Busca paginas que contengan un termino u otro.
- \+ permite incluir palabras que Google por defecto no tiene en cuenta al ser muy comunes (de, el, la, etc.) Tambien se usa para que distinga acentos, dieresis y la letra ñ, que normalmente son elementos que no distingue.
- \* : Comodin. Utilizado para sustituir una palabra. Suele combinarse con el operador de literalidad (" "). 