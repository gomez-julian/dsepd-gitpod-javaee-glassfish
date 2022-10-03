![Gitpod](https://img.shields.io/badge/gitpod-f06611.svg?style=for-the-badge&logo=gitpod&logoColor=white)
![Java](https://img.shields.io/badge/java-%23ED8B00.svg?style=for-the-badge&logo=java&logoColor=white)
![Java](https://img.shields.io/badge/glassfish-89CFF0.svg?style=for-the-badge&logo=java&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white)
![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)

# Java Enterprise y Glassfish desde tu navegador
Aplicación web servlet con Java Enterprise ☕ y Glassfish 🐠 para lanzarse desde GitPod 🍵 y trabajar remotamente. 🤓

Evitar tener que configurar todo tu entorno e instalar tecnologías obsoletas en tu computadora, y trabaja con tu proyecto desde cualquier lugar desde el navegador.

Este proyecto está configurado en base al tutorial de [AWS](https://docs.aws.amazon.com/es_es/elasticbeanstalk/latest/dg/docker-glassfish-tutorial.html) sobre su tecnología de Elastic Beanstalk sobre la plataforma de [Gitpod](https://www.gitpod.io/docs/introduction/getting-started).

# Pasos

1. Inicia sesión en Github y da clic en el botón de abajo (Inicia sesión o regístrate en Gitpod de ser necesario).

<a href="https://gitpod.io/#https://github.com/gomez-julian/dsepd-gitpod-javaee-glassfish"><img src="META-INF/open_in_gitpod.svg?raw=true" /></a>

2. Una vez aparezca tu proyecto en el explorador, se deben ejecutar los siguientes comandos.

  - Construir la imagen del proyecto (puede tardar un par de minutos):
  
  ```bash
  docker build -t javaee-gitpod .
```

  - Asignar todos los permisos al proyecto (si no se hace manda error):
  
  ```bash
  chmod -R 777 .
```
  
  ```bash
  chmod 777 glassfish-start.sh
```

  - Volver a construir la imagen (esta vez ya no tarda):
  
  ```bash
  docker build -t javaee-gitpod .
```
  
  - Levantar el servicio:
  
  ```bash
  docker run --name javapp -dp 8080:8080 javaee-gitpod
```

3. Una vez ejectuados si no falló, aparecerá un cuadro de diálogo, selecciona **Open in browser** para ver el proyecto ejecutándose (Al incio puede aparecer una página acerca de GlassFish en lo que inicia el JSP, espera un momento y recarga un par de veces para ver ya el archivo del proyecto). Si cierras el cuadro de diálogo, al lado del Tab de **Terminal** está el Tab de **Ports** donde aparecen los enlaces para abrir los puertos.

4. Listo! Disfruta haciendo los proyectos sin morir en el intento. 

5. **IMPORTANTE**: Debes detener el servicio de Docker y el Workspace de Gitpod antes de irte, si no esté seguirá ejecutándose.

  - Ejecuta en la terminar el comando terminar el servicio:
  
   ```bash
  docker stop javapp
```

  - Y por último, clic en el menú de Gitpod en la esquina superior izquiera da clic en **Gitpod: Stop workspace**
  
## Notas

### Lo que debes saber

Tener tu proyecto de esta manera tiene sus ventajas y desventajas:

- Gitpod es ejecutado desde el navegador y puedes realizar todas las actividades sin problemas desde ahí.
- No tiene Hot Reload, por lo que cada que requieras reflejar un cambio debes ejecutar estos tres comandos:

```bash
  docker stop javapp
  docker build -t javaee-gitpod .
  docker run --name javapp -dp 8080:8080 javaee-gitpod
```

Por lo que usa esto en caso de que no logres correr Glassfish en el ordenador o para realizar cosas rápidamente.

### Lo siguiente que debes hacer

Ahora con el entorno preparado, para que sea más cómodo para tí debes:

- Hacer fork al reposotorio y cambiar el nombre de usuario al botón para **Abrir en Gitpod** en el README.md
- Revisar como guardar cambios para poder alternar entre tu computadora personal y Gitpod.
  
