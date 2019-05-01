if "%1" == "" (
    echo "emsdk-run"
    echo "Usage: emsdk-run <command> [<arg>...]"
    echo "Runs a given command within the context of the emsdk environment"
    echo "in the current node project."
    exit 1
)

rem Set PATH and other environment vars
call %~dp0..\emsdk\emsdk_env.bat

rem Run the binary, which should now be in PATH
%*
