class New
  def initialize
    @observers = []
  end

  def add_observer(observer)
    @observers << observer
  end

  def remove_observer(observer)
    @observers.delete(observer)
  end

  def notify_observer(message)
    @observers.each { |observer| observer.update(message) }
  end

  def new_news(message)
    puts 'new new'
    notify_observer(message)
  end
end

class User
	def initialize(name)
		@name = name
	end

	def update(message)
		puts "#{@name} ha recibido la noticia: #{message}"
	end
end

# Crear el sujeto (sistema de noticias)
news = New.new

# Crear observadores (usuarios)
usuario1 = User.new('Juan')
usuario2 = User.new('María')

# Suscribir usuarios al sistema de noticias
news.add_observer(usuario1)
news.add_observer(usuario2)

# remove users from subscription
# news.remove_observer(usuario2)

# Publicar una nueva noticia
news.new_news('El clima estará soleado mañana.')

# Desuscribir un usuario
news.remove_observer(usuario1)

# Publicar otra noticia
news.new_news('Se ha lanzado un nuevo producto.')