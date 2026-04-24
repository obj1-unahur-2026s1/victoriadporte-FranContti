object victoria {
    var edad = 18
    var altura = 165
    var disciplina = tenis
    var objetoClave = raqueta
    var entrenadores = 3

   method edad() = edad
   method cumplirAños(){
    edad += 1 
   }
   method altura() = altura
   method actualizarAltura(unaAltura){
    altura = unaAltura
   }
   method cambiarDisciplina(unaDisciplina){
    disciplina = unaDisciplina
    objetoClave = unaDisciplina.objetoClave()
   }

   method actualizarEntrenadores(cantidad) {
     entrenadores = cantidad
   }

   method obtenerPresupuestoTotal(){
     return objetoClave.costo(self) + disciplina.presupuestoBase() + entrenadores * comiteOlimpico.sueldoEntrenador()
   }
}

object tenis {
  method hinchas() = 5
  method objetoClave() = raqueta

  method presupuestoBase() {
    return 200 + (self.hinchas() * 3)
  }
}

object judo {
  method medallas() = 3
  method objetoClave() = trajeJudo

  method presupuestoBase() {
    return 160 * self.medallas()
  }
}

object fulbol {
  method copas() = 3
  method objetoClave() = pelota

  method presupuestoBase() {
    return 160 * self.copas()
  }
}

object raqueta {
  method costo(jugador) {
    return (100 * jugador.edad()).min(3000)
  }
}

object trajeJudo {
  method costo(jugador) {
    return 50 * jugador.altura()
  }
}

object pelota {
  method costo(jugador) {
    return 20 * jugador.altura()
  }
}

object comiteOlimpico {
  method sueldoEntrenador() = 100
}