# test-voolkia


## Ejercicio 1 Script 
Instrucciones:

Descargar los archivos de este repositorio
Una vez que tenemos los archivos en una carpeta hacemos doble click en el archivo html 
una vez que se abre en el navegador
rellenamos los campos para obtener la informacion deseada

## Ejercicio 2 SQL 
Se encuentra como "voolkia.sql".

## Ejercicio 3 grails
El output del script muestra sucursal donde esta el envio , fecha del evento y descripción

## Ejercicio 4 bash 
### #!/bin/bash users_id=(71665538 66146765 132961968 15096445 172753273 54152646)
Se declara un array usuarios.
### for users_id in ${users_id[*]} do curl=$(curl -s "api.mercadolibre.com/users/$users_id/shipping_preferences" | jq -c '.services')

Se itera el array, por cada usuario genera una petición a la API parecido a lo que se logro en el ejercicio 1

### echo "$users_id: $curl" done

Se imprime el json referenciado.
