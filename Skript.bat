@Echo off
	set filstig=%1
if exist "%filstig%" (
	echo "%filstig% existerar"
if exist %filstig%\ (
	echo katalog
) else det är en fil(
	echo file)

for /f "tokens=1,2,3 USEBACKQ" %%a in (`dir %filstig%`) do (
if "kansio(ta)"=="%%b" (
	set antal_mappar=%%a 
	set antal_bytes=%%c
)
if "tiedosto(a)"=="%%b" (
set antal_filer=%%a
set antal_bytes2=%%c
)
)
	echo %antal_mappar% Mappar
	echo %antal_filer% Filer
	echo %antal_bytes2% bytes
