# Reto DevOps - I2B Tech

Solución desarrollada por **Nicolas** para la posición de DevOps Jr.

## Arquitectura de la Solución
- **App:** Node.js dockerizada con imagen Alpine.
- **Proxy:** Nginx configurado con SSL y Auth Basic.
- **Orquestación:** Helm Chart para despliegue en Kubernetes.
- **Infraestructura:** Terraform para el despliegue del Chart.
- **Automatización:** Ansible Playbook para configuración de ambiente Ubuntu 24.04 y Minikube.

## Cómo ejecutar
1. Clonar el repositorio.
2. Navegar a la carpeta `ansible/`.
3. Ejecutar: `ansible-playbook playbook.yml`.

## Puntos de verificación
- HTTPS habilitado en el puerto 443.
- Ruta `/private` protegida con Basic Auth.
- Logs persistentes mediante `hostPath` en `/var/log/i2b-app`.
