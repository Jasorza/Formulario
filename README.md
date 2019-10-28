# Formulario Asp
 
 
 Antes de iniciar el proyecto, se debe de cambiar la linea de conecxion en el archivo appsettings.json:
```
"DefaultConnection": "(Colocar el Nombre del equipo con SQL Server para la conexion);Database=Formulario1BD;Trusted_Connection=True;MultipleActiveResultSets=true"
```

Ya una vez este hecho esta parte, abrimos la consola de administracion de paquetes y ya dentro de ella escribimos los siguientes comando: 
```
add-migration-createBD
```
```
update-database
```

Ya una vez este terminado esto, abrimos el SSMS y se hace la migracion de datos usando el archivo 
```
Formulario1BD.bak
```

y listo, ya puede iniciar el proyecto desde Visual Studio
