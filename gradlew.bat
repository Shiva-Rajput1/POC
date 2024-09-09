@echo off
rem ---------------------------------------------------------------------------
rem
rem Gradle start up script for Windows
rem
rem ---------------------------------------------------------------------------

@IF NOT "%OS%"=="Windows_NT" GOTO Win9xME_args
:Win9xME_args
setlocal
set CMD_LINE_ARGS=
set _SKIP=2
:Win9xME_argsLP
if not "x%~1"=="x" (
    set CMD_LINE_ARGS=%CMD_LINE_ARGS% %~1
    shift
    goto Win9xME_argsLP
)
endlocal & set CMD_LINE_ARGS=%CMD_LINE_ARGS%
goto Win9xME_exec
:Win9xME_args_end

if not "%OS%"=="Windows_NT" goto end

:Win9xME_exec
set CLASSPATH=%APP_HOME%\gradle\wrapper\gradle-wrapper.jar
set JAVA_EXE=java

if defined JAVA_HOME (
    set JAVA_EXE="%JAVA_HOME%\bin\java"
)

"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %GRADLE_OPTS% -classpath "%CLASSPATH%" org.gradle.wrapper.GradleWrapperMain %CMD_LINE_ARGS%
