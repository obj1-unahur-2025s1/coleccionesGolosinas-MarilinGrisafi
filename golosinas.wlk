import mariano.*
object bombon {
  var property peso = 15
  
  method libreDeGluten() = true
  method precio()= 5
  method sabor() = frutilla
  method recibeMordisco(){ peso = peso * 0.8 -1 }
  
}

object alfajor{
  var property peso = 300
  
  method libreDeGluten() = false
  method precio()= 12
  method sabor() = chocolate
  method recibeMordisco(){ peso = peso -1}

}

object caramelo{
  var property peso = 5
  
  method libreDeGluten() = true
  method precio()= 1
  method sabor() = frutilla
  method recibeMordisco(){ peso = peso -1}

}

object chupetin{
  var property peso = 7

  method libreDeGluten() = true
  method precio()= 2
  method sabor() = naranja
  method recibeMordisco(){ peso = ((peso* 0.9).max(2))}//o con if
}

object oblea {
  var property peso = 250

  method libreDeGluten() = false
  method precio()= 5
  method sabor() = vainilla
  method recibeMordisco(){ if (peso > 70) {peso = peso * 0.5} else {peso = peso* 0.25}}//o con if
  method el90DelPeso(){ return peso = peso * 0.9}
  
}


object chocolatin{
  var property peso = 30
  
  method libreDeGluten() = false
  method precio()= 0.5 * peso
  method sabor() = chocolate
  method recibeMordisco(){ }
  method cambiarPeso(nuevoPeso) {peso = nuevoPeso}
  
}

object golosinaBañada{
  var property golosinaBase = caramelo
  const property libreDeGluten = golosinaBase.libreDeGluten()
  var cantMordisco = 0

  method precio(){ golosinaBase.precio() +2}
  method sabor() = golosinaBase.sabor()
  method recibeMordisco(){
    cantMordisco = cantMordisco +1
    golosinaBase.recibeMordisco()
    if (cantMordisco >= 2){self.peso() - 2}
  }
  method peso() = golosinaBase.peso() +4
  method cambiarGolosinaBase(unaGolosina){golosinaBase = unaGolosina}
}

object pastillaTuttiFrutti{
 var property peso = 5
 var property libreDeGluten = true
 const property sabores = [frutilla, chocolate, naranja]
 var property sabor = frutilla

 method precio(){return if (libreDeGluten) {7} else {10}}
 method recibeMordisco(){
  self.cambiaDeSabor()
 }
 method cambiaDeSabor(){if (sabor == frutilla) {sabor = chocolate} else if (sabor == chocolate) {sabor== naranja} else if (sabor== naranja) {sabor== frutilla}}
method noEsLibreDeGluten() {libreDeGluten = false}
}

object vainilla{}
object naranja{}
object chocolate{}
object frutilla{}