## Shodan
Google dorks, nos ayuda a buscar informacion en servidores de aplicacion y solo en el frontend, es decir en las paginas web, con este metodo no podemos verificar si los servidores principales, es decir el backend, tiene alguna vulnerabilidad, para eso nos sirve shodan.  

Shodan es un buscador que recorre internet para buscar direcciones ip, analizar sus puertos en busca de puertos abiertos, para verificar los servicios que estan corriendo en esos puertos, los regresa al mismo servidor de shodan(banner) y la indexa.

Indexa sistemas en base a los servicios que estan corriendo en esos mismos sistemas y concretamente al banner que nos proporcionan esos servicios cuando realizamos una peticion.

Comandos relevantes para Shodan:
- after: Solo muestra resultados despues de dar una fecha como cadena (dd/mm/aaaa)
- asn: un numero escrito en tipo cadena de un sistema autonomo
- before: Solo muestra resultados antes de dar una fecha como cadena (dd/mm/aaaa)
- category: Categorias disponibles: ics, malwarestring
- city: Nombre de la ciudad
- geo: Acepta entre 2-4 parametros.
	- 2 parametros: longitud y latitud
	- 3 parametros: longitud, latitud y rango
	- 4 parametros: top left latitud, top left longitud, bottom right latitud y bottom right longitud
- hash: el hash de la propiedad de los datos de un entero.
- has_ipv6: booleano True/False
- has_screenshot: booleano True/False
- server: Dispositivos o servidores que tengan un flag de cabecera tipo cadena especifico
- hostname: Nombre completo de dispositivo
- ip: alias para el filtro de red
- isp: el ISP que esta gestionando el bloque de red
- net: rango de red en notacion CIDR (ejemplo 199.4.1.0/24)
- org: organizacion asignada al bloque de red
- os: sistema operativo
- port: numero de puerto del servicio
- postal: codigo postal (solo US)
- product: Nombre del software/producto que esta proporcionando el banner
- region: Nombre de la region o estado
- state: alias de region
- version: Version del software/producto
- vuln: Id de CVE de la vulnerabildad