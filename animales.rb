module Habilidades
    module Volador
        def volar
            'Estoy volandooooo!'
        end

        def aterrizar
            'Estoy cansado de volar, voy a aterrizar'
        end
    end
    
    module Nadador
        
        def nadar
            'Estoy nadando!'
        end
        
        def sumergir
            'glu glub glub glu'
        end
    end
    
    module Caminante
        def caminar
            'Puedo caminar!'
        end
    end
end

module Alimentacion
    module Herbivoro
        def comer
            'Puedo comer plantas!'
        end
    end
    
    module Carnivoro
        def comer
            'Puedo comer carne!'
        end
    end
end

class Animal
    include Habilidades
    include Alimentacion
    attr_accessor :nombre
    def initialize(nombre)
        @nombre = nombre
    end  
end

class Ave < Animal
     
end

class Mamifero < Animal
    include Nadador
    include Caminante
end

class Insecto < Animal
    include Caminante
    include Volador
end

class Pinguino < Ave
    include Nadador
    include Carnivoro
    def volar
        'no puedo volar'
    end
end

class Paloma < Ave
    include Volador
    include Herbivoro
    include Carnivoro
end

class Pato < Ave
    include Volador
    include Nadador
    include Herbivoro 
end

class Perro < Mamifero
    include Carnivoro
end

class Gato < Mamifero
    include Carnivoro
end

class Vaca < Mamifero
    include Herbivoro
end

class Mosca < Insecto
    include Carnivoro
    include Herbivoro
end

class Mariposa < Insecto
    include Herbivoro
end

class Abeja < Insecto
    include Herbivoro
end

pen = Pinguino.new('penpen')
puts pen.nombre
puts pen.volar
puts pen.nadar
puts pen.sumergir
puts pen.comer

perro1 = Perro.new('locky')
puts perro1.nombre
puts perro1.comer
puts perro1.caminar

pato1 = Pato.new('pato1')
puts pato1.nombre
puts pato1.volar
puts pato1.nadar
puts pato1.sumergir
puts pato1.comer