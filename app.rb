require 'sinatra'

# Ruta para la página principal
get '/' do
  erb :index  # Renderiza la plantilla 'index.erb'
end
