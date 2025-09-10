# About

- Este repo es parte del bsp (board support package) de intel galileo "Board_Support_Packege_Sources_for_Intel_Quark_V1.1.0.7z" -> "meta-clanton_v1.1.0-dirty.tar.gz".
- El nombre y version meta-clanton_v1.1.0-dirty se renombro como meta-clanton por simplicidad.
- Contiene cambios respecto al original, el cual se tomara como base. El original sin absolutamente ningun cambio, se encuentra en:
[meta-clanton_v1.1.0-dirty](https://github.com/federicogramos/meta-clanton_v1.1.0-dirty).

# How to use

Casi lo mismo que indica en /meta_clanton/README, pero pequenos agregados/aclaraciones.

- Crear imagen usando el dockerfile.
`ocker build -t "ubuntu-14-galileo:1.0" .`

- Crear container dentro de /meta-clanton
```
cd meta-clanton
docker run -d -v ${PWD}:/root --security-opt seccomp:unconfined -it --name ubuntu-14-galileo "ubuntu-14-galileo:1.0"
```

- Dentro del contenedor:

(a) antes del setup.sh, configurar git.
```
docker exec -it ubuntu-14-galileo bash
git config --global user.email "you@example.com" && git config --global user.name "Your Name"
```

(b) en /root hacer `./setup.sh`

Si todo sale bien, deberia crear el archivo iot-devkit-init-build-env

- Execute:

`source iot-devkit-init-build-env build`
