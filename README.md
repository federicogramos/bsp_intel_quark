# About

- Este repo es parte del bsp (board support package) de intel galileo "Board_Support_Packege_Sources_for_Intel_Quark_V1.1.0.7z" -> "meta-clanton_v1.1.0-dirty.tar.gz".
- El nombre y version meta-clanton_v1.1.0-dirty se renombro como meta-clanton por simplicidad.
- Se renombra al README original como README_ORIGINAL.
- Contiene cambios respecto al original, el cual se tomara como base. Si se quiere el original sin absolutamente ningun cambio, se encuentra en:
[meta-clanton_v1.1.0-dirty](https://github.com/federicogramos/meta-clanton_v1.1.0-dirty).

# How to use

Casi lo mismo que indica en README_ORIGINAL, pero pequenos agregados/aclaraciones.

- Crear imagen usando el dockerfile.

- Crear container.

`docker run -d -v ${PWD}:/root --security-opt seccomp:unconfined -it --name ubuntu-14-galileo ubuntu:14.04`
- Dentro del contenedor:

(a) antes del setup.sh, configurar git.

`git config --global user.email "you@example.com" && git config --global user.name "Your Name"`

(b) en /root hacer `./setup.sh`

Los errores siguientes ignorarlos:

```bash
error: meta-galileo/recipes-core/initscripts/files/galileod.sh: does not exist in index
error: meta-iot-devkit/recipes-kernel/linux/linux-yocto-quark_3.8.bbappend: does not exist in index

- Execcute:
```bash
source iot-devkit-init-build-env build