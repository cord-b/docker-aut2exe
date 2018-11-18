A Docker image with Aut2exe.exe installed & on the PATH, allowing in-container AutoIt script compilation.

## Prebuilt Tags
- `cordb/aut2exe:3.3.14.5`

## Example Usage

Below is an example for how to use `docker-compose up` to compile your project.

This example would generate `MyApp.exe` and `MyApp_debug.exe` into your project's `dist/` directory,


#### docker-compose.yml
```
version: "3.7"
services:
  myProject:
    image: cordb/aut2exe:3.3.14.5
    volumes:
      - type: bind
        source: .
        target: C:\MyProject
    working_dir: C:\MyProject
    entrypoint: [ "compile.bat" ]
```


#### Project Structure:

```
MyProject/
  compile.bat
  MyApp.au3
  MyApp.ico
  Include/
  dist/
```


#### compile.bat

```
Aut2exe.exe /in MyApp.au3 /out dist\MyApp.exe /icon MyApp.ico
Aut2exe.exe /in MyApp.au3 /out dist\MyApp_debug.exe /icon MyApp.ico
```
