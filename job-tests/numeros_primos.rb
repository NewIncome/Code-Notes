class Alumno
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def saluda
    puts "Hola, me llamo #{@name}. Mucho gusto!"
  end

  def dime_nums_primos(n)
    # numeros divisibles solo entre 1 y si mismos
    # no son divisibles entre ningun otro numero
    # loop y rev si i's hasta llenar 'n' cant primos
    # loop y rev si c/'i' es divisible entre alguno de los
    #   numeros primos anteriores, si termina y no, si es primo
    #   y se agrega ; Else, siguiente
    primos = [2]
    i = 3
    while primos.length < n
      # rev si el siguiente numero es menor divisible entre el/los
      # primos anteriores, si? i++, no y ya es el ultimo primo push
      primos.each_with_index do |p, j|
        # si i es divisible entre un numero primo[j] = p terminar loop
        # si Al_Final no? agregar al array de primos
        puts "i:#{i}, j:#{j}"
        break if i%p == 0
        # Si ya estamos en el final (y llego a esta linea) push a primos
        primos.push(i) if j == primos.length-1
      end
      i+=1
    end
    primos
  end
end

Fredy = Alumno.new('Fredy')
Fredy.saluda
p Fredy.dime_nums_primos(6); puts

class Egresado < Alumno
  def saluda
    super
    puts "Yo soy alumno egresado!!  (^_^)"
  end
end

Joss = Egresado.new('Joss')
Joss.saluda
p Joss.dime_nums_primos(4)
