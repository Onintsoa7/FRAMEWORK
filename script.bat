cd framework/src
javac -parameters -d . *.java
jar -cvf ../../etu1767.jar etu1767
copy ../../etu1767.jar ../../test-framework/WEB-INF/lib/

set CLASSPATH=.;C:\Program Files\Apache Software Foundation\Tomcat 8.5_Tomcat8Oni\webapps\etu1767.jar

cd ../../test-framework/WEB-INF/classes
javac -parameters -d . *.java
cd ../../
jar -cvf ../test-framework.war .

cd ../
pause
