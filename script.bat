cd framework\src
javac -parameters -d . *.java 
jar -cvf ..\..\etu1767.jar etu1767
copy /y ..\..\etu1767.jar ..\..\test-framework\WEB-INF\lib\

cd ..\..\test-framework\WEB-INF\classes

javac -parameters -d . *.java 

cd ..\..\


mkdir ..\temp
mkdir ..\temp\WEB-INF 
mkdir ..\temp\bootstrap
mkdir ..\temp\Images
mkdir ..\temp\WEB-INF\classes
mkdir ..\temp\WEB-INF\lib

for /D %%G in (WEB-INF\classes\*) do (
    mkdir "..\temp\WEB-INF\classes\%%~nxG"
    xcopy /y "%%G\*.class" "..\temp\WEB-INF\classes\%%~nxG\"
)

for /D %%G in ("..\temp\WEB-INF\classes\*") do (
    dir /B "%%G" | findstr "^" > nul
    if errorlevel 1 (
        rmdir "%%G"
    )
)

xcopy /y ".\*.jsp" "..\temp\" 
xcopy /y ".\bootstrap" "..\temp\bootstrap" /E
xcopy /y ".\Images" "..\temp\Images"
xcopy /y ".\WEB-INF\*.xml" "..\temp\WEB-INF\"
xcopy /y /E /I ".\WEB-INF\lib" "..\temp\WEB-INF\lib\"

cd ..\temp
jar -cvf ..\..\test-framework.war .


pause
