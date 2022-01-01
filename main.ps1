#Write-Host "Date Formatter" -ForegroundColor Green

$str=@"
Date Formatter

1. Formato dia mes año

2. Formato mes dia año

Elige una opción
"@

#Write-Host $str

$var=Read-Host $str #"Elige una opcion"

if ($var -eq 1){
    
    $msj=@"
    Opción 1
    Formato día mes año

    cambiando llaves de registro
"@
    
    Write-Host $msj
    reg add "HKCU\Control Panel\International" /V sShortDate /T REG_SZ /D "dd/MM/yyyy" /f
    reg add "HKCU\Control Panel\International" /V sLongDate /T REG_SZ /D "dd MMMM yyyy" /f
}
elseif ($var -eq 2){
    
    $msj=@"
    Opción 2
    Formato mes día año

    cambiando llaves de registro
"@
    
    Write-Host $msj
    reg add "HKCU\Control Panel\International" /V sShortDate /T REG_SZ /D "MM/dd/yyyy" /f
    reg add "HKCU\Control Panel\International" /V sLongDate /T REG_SZ /D "MMMM dd yyyy" /f
}
else {
    $msj=@"
    opcion inválida
"@
    
    Write-Host $msj
}

