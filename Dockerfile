# Dockerfile para Odoo 19 con dependencias adicionales
FROM odoo:19

USER root

# Instalar dependencias de Python necesarias
RUN pip3 install --no-cache-dir --break-system-packages openpyxl pymssql

# Regresa al usuario odoo (por seguridad)
USER odoo
