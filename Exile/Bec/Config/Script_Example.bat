@echo off

:: This is only provided as a simple example file
:: Passing Arguments to Scripts from  ingame chat..
:: The 1st Argument Passed to a External script is always the Username "Hardcoded"
:: 2nd,3rd,4th etc are seperated by spaces.
:: !script X Y Z
:: !script "X" "Y" "Z"
:: X = arg2 , Y = arg3 , Z = arg4
:: Normally Bec will seperate arguments by spaces. but if you have aruments that has spaces in them. use quotes around them.
:: External Scripts will never return anything back to Arma.



:: EXAMPLE 
:: Add two numbers together..

:: !math 1+2

set name=%~1
set /a var=%~2
echo Hello User: %name%
echo The Result of %~2 is: %var%



:: EXAMPLE
:: Write Text to a file..
:: Note the Quote around the string. if we pass a argument with spaces in it we want to remove the quotes.


:: Text and remove quotes.
set arg2=%~2
set arg2=%arg2:"=%

:: Filename
set arg3=%3

:: Now write to the file.
echo User: %~1 Wrote: %arg2% >> %arg3%


timeout 10