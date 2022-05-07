enum PPT{
    Piedra = 1
    Papel = 2 
    Tijera = 3
}
enum Combinacion
{
    EmpatePiedra = 11
    EmpatePapel = 22
    EmpateTijera = 33
    GanaPiedra = 13
    GanaPapel = 21
    GanaTijera = 32
    PierdePiedra = 12
    PierdePapel = 23
    PierdeTijera = 31
    
}
$jugador1=random(1..3);[PPT]$jugador1
$jugador2=random(1..3);[PPT]$jugador2
[Combinacion]([String]$jugador1+[String]$jugador2)
[Combinacion]([String]$jugador2+[String]$jugador1)

BASH
#!/bin/bash
for file in $(ls);
do
  if [[ -d $file ]];
  then
    echo directorio: $file
  else
    if [[ -x $file ]];
    then
      echo archivo ejecutable: $file
    else
      echo archivo no ejecutable: $file
    fi
  fi
done


SCRIPTS
var cajon = parseInt (prompt ('Elegir el cajón abierto (1-4): '));
if (cajon == 1) {
alert ('Contiene varias herramientas de dibujo: papel, lápices, etc. ')
} else if (cajon == 2) {
alert ('Contenido hardware: cables, componentes, etc. ')
} else if (cajon == 3) {
alert ('¿Ah, el cajón está cerrado malo?');
} else if (cajon == 4) {
alert ('Contiene la ropa: camisas, pantalones, etc. ')
Else {}
alert ("La noticia del día: el gabinete contiene sólo cuatro cajones y
hasta que se demuestre lo contrario, los cajones negativos no existen ").;
}


SCRITPS 2
var cajon = parseInt (prompt ('Elegir el cajón abierto (1-4): '));
switch (cajon) {
case 1:
alert ('Contiene varias herramientas de dibujo: papel, lápices, etc. ')
break;
case 2:
alert ('Contenido hardware: cables, componentes, etc. ')
break;
case 3:
alert ('¿Ah, el cajón está cerrado malo?');
break;
case 4:
alert ('Contiene ropa: camisas, pantalones, etc. ')
break;
default:
alert ("La noticia del día: el gabinete contiene sólo cuatro cajones
y, hasta que se demuestre lo contrario, los cajones negativos no
existen");
}