class Person
    def initialize(first, last, age)
    @first_name = first
    @last_name = last
    @age = age
    end

    def birthday
    @age += 1
    end

    def introduce
        "Mi nombre es #{@first_name} #{@last_name}."
    end

    # def talk
        # if @type == "Student"
            # puts "Aquí es la clase de programación con Ruby?"
        # elsif @type == "Teacher"
            # puts "Bienvenidos a la clase de programación con Ruby!"
        # elsif @type == "Parent"
            # puts "Aquí es la reunión de apoderados?"
        # end
    # end

    # def introduce
        # if @type == "Student"
            # puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
        # elsif @type == "Teacher"
            # puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
        # elsif @type == "Parent"
            # puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #
        # {@last_name}."
        # end
    # end
end

class Student < Person

    def talk
        puts "Aquí es la clase de programación con Ruby?"
    end

    def introduce
        puts "Hola profesor. #{super}" 
    end
end

class Teacher < Person

    def talk
        puts "Bienvenidos a la clase de programación con Ruby!"
    end

    def introduce
        puts "Hola alumnos. #{super}" 
    end
end

class Parent < Person

    def talk
        puts "Aquí es la reunión de apoderados?"
    end

    def introduce
        puts "Hola. Soy uno de los apoderados. #{super}"
    end
end

s = Student.new('Alexis','Concha',30)
puts s.introduce