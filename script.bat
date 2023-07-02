cd framework/src
javac -d . *.java 
jar -cvf ../../etu1767.jar etu1767
copy ../../etu1767.jar ../../test-framework/WEB-INF/lib/

REM Chemin du fichier etu1767.jar
set "cheminJar=C:/Program Files/Apache Software Foundation/Tomcat 8.5_Tomcat8Oni/webapps/etu1767.jar"

REM Vérifier si la variable d'environnement CLASSPATH est déjà définie
if not defined CLASSPATH (
  REM Si elle n'est pas définie, définir la variable CLASSPATH avec le chemin du fichier jar
  set "CLASSPATH=%cheminJar%"
) else (
  REM Si elle est déjà définie, ajouter le chemin du fichier jar à la variable CLASSPATH
  set "CLASSPATH=%CLASSPATH%;%cheminJar%"
)

cd ../../test-framework/WEB-INF/classes
javac -d . *.java 
cd ../../
jar -cvf ../test-framework.war .
pause
