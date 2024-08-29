# Usa una imagen oficial de Python como imagen base
FROM python:3.10-slim

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos de requerimientos
COPY requirements.txt /app/

# Instala las dependencias de Python
RUN pip install --no-cache-dir -r requirements.txt

# Copia el código de la aplicación
COPY . /app/

# Expone el puerto en el que Django correrá
EXPOSE 8080

# Comando por defecto
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]

