@echo off
SET PACKAGE_VERSION=1.0
SET FULL_PACKAGE_VERSION=1.0.2
SET JAVA_PACKAGE_VERSION=1_0-20170615_094114
SET BUILD=%1
SET BASE_PATH=%~dp0
SET IKVM_PATH=%BASE_PATH%\ikvm-8.0.5449.1
"%IKVM_PATH%\bin\ikvmc.exe" -privatepackage:org.apache -privatepackage:de.statspez -version:%FULL_PACKAGE_VERSION% -fileversion:%FULL_PACKAGE_VERSION%.%BUILD% -target:library "-out:%BASE_PATH%\NuGet\%PACKAGE_VERSION%\Dguv.Kernpruefung.Uv-%PACKAGE_VERSION%.dll" "%BASE_PATH%\Kernpruefung\%JAVA_PACKAGE_VERSION%\kernpruefung.jar" "%BASE_PATH%\Kernpruefung\%JAVA_PACKAGE_VERSION%\pl_generator.jar" "%BASE_PATH%\Kernpruefung\%JAVA_PACKAGE_VERSION%\pl_uvkp.jar" "%BASE_PATH%\lib\xerces-2_11_0\xercesImpl.jar" "%BASE_PATH%\lib\xerces-2_11_0\serializer.jar" "%BASE_PATH%\lib\xerces-2_11_0\resolver.jar"
