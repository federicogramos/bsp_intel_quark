# About

- Este repo es parte del bsp (board support package) de intel galileo "Board_Support_Packege_Sources_for_Intel_Quark_V1.1.0.7z" -> "meta-clanton_v1.1.0-dirty.tar.gz".
- El nombre y version meta-clanton_v1.1.0-dirty se renombro como meta-clanton por simplicidad.
- Se renombra al README original como README_ORIGINAL.
- Contiene cambios respecto al original, el cual se tomara como base. Si se quiere el original sin absolutamente ningun cambio, se encuentra en:
[meta-clanton_v1.1.0-dirty](https://github.com/federicogramos/meta-clanton_v1.1.0-dirty).

# How to use
- Crear imagen usando el dockerfile.
- Crear container `docker run -d -v ${PWD}:/root --security-opt seccomp:unconfined -it --name ubuntu-14-galileo ubuntu:14.04`
- Dentro del contenedor en /root hacer `./setup.sh`