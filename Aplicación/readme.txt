
Esta carpeta contiene todos los archivos necesarios para ejecutar la
“Aplicación de Modelos Epidemiológicos”. Existen dos modos de ejecución:

  1. Con MATLAB instalado (archivo .mlapp)
  2. Sin MATLAB instalado (archivo .exe + instalador)

Archivos incluidos
------------------
  • aplicacion_modelos.mlapp
      - Interfaz desarrollada en MATLAB App Designer.
      - Requiere tener MATLAB (R2019b o superior) instalado.

  • myAppInstaller_web.exe
      - Instalador que incorpora los runtimes de MATLAB necesarios
        para ejecutar la aplicación compilada (.exe).
      - Necesario sólo si NO dispone de MATLAB instalado.

  • aplicacion_modelos.exe
      - Versión compilada de la aplicación.
      - Ejecutable independiente que utiliza los runtimes instalados
        por myAppInstaller_web.exe.

  • README.txt
      - Este archivo, con las instrucciones de instalación y uso.

Requisitos
----------
1. **Con MATLAB instalado**  
   - MATLAB R2019b (o superior)  
   - MATLAB App Designer  
   - No requiere instalar runtimes adicionales.

2. **Sin MATLAB instalado**  
   - Sistema operativo Windows (64-bits)  
   - Espacio libre en disco: mínimo 500 MB  
   - myAppInstaller_web.exe instala los runtimes de MATLAB (MCR).

Instrucciones de instalación y ejecución
---------------------------------------

A) Opción 1: Ejecución con MATLAB
   1. Abrir MATLAB.
   2. Situarse en el directorio donde está “aplicacion_modelos.mlapp”.
   3. En la línea de comandos de MATLAB, escribir:
        >> open('aplicacion_modelos.mlapp')
   4. En la pestaña “Run” del App Designer, hacer clic en “Run”.
   5. La aplicación se iniciará y se podrá interactuar con los modelos.

B) Opción 2: Ejecución sin MATLAB
   1. Instalar los runtimes.  
      - Ejecutar “myAppInstaller_web.exe” con doble clic.  
      - Seguir los pasos del asistente de instalación para completar la
        instalación de los MATLAB Runtime (MCR).  
   2. Ejecutar la aplicación.  
      - Hacer doble clic en “aplicacion_modelos.exe”.  
      - La aplicación se lanzará automáticamente.

Notas
-----
- Si ya se tiene MATLAB instalado, NO es necesario ejecutar
  “myAppInstaller_web.exe” ni usar “aplicacion_modelos.exe”.
- El instalador de MCR puede tardar varios minutos en descargar
  e instalar los componentes necesarios.
- Para desinstalar los MATLAB Runtimes, use el panel de Control de
  Windows → “Programas y características” → seleccione “MATLAB
  Runtime” y haga clic en “Desinstalar”.


