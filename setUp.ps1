
Function PressKeyToContinue () {
    Write-Host -NoNewLine 'Press any key to continue...';
    $null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
    cls
}
Write-Host "Installing the TypeScript Definition manager package"
npm install -g tsd
PressKeyToContinue
Write-Host "Getting 'Angular2', 'es-promise', 'rx' and 'rx-lite'"
tsd install angular2 es-promise rx rx-lite
PressKeyToContinue
Write-Host "Installing TypeScript"
npm install -g typescript
PressKeyToContinue
Write-Host "Compiling the app.ts file"
tsc -m commonjs -t es5 --emitDecoratorMetadata --experimentalDecorators app.ts
PressKeyToContinue
Write-Host "Installing server package"
npm install -g http-server
PressKeyToContinue
Write-Host "Starting the web application"
http-server