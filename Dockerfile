# Utilizar una imagen base de Ruby
FROM ruby:3.2

# Establecer el directorio de trabajo en el contenedor
WORKDIR /app

# Copiar el archivo Gemfile y Gemfile.lock (si los tienes) al contenedor
COPY Gemfile Gemfile.lock ./

# Instalar las dependencias de Ruby (gems)
RUN bundle install

# Copiar el resto de la aplicación (archivos Ruby y vistas)
COPY . .

# Exponer el puerto que utilizará la aplicación
EXPOSE 4567

# Comando para ejecutar la aplicación
CMD ["ruby", "app.rb"]
