import golosinas.*
object mariano{
    const bolsaGolosinas= []
    method comprar(unaGolosina) {
        bolsaGolosinas.add(unaGolosina)
    }

    method desechar(unaGolosina){
        bolsaGolosinas.remove(unaGolosina)
    }

    method primerGolosina(){return
        bolsaGolosinas.first()
    }

    method ultimaGolosina(){ return
        bolsaGolosinas.last()
    }

    method cantidadDeGolosinas(){ return 
        bolsaGolosinas.size()
    }

    method tieneLaGolosina(unaGolosina){ return 
        bolsaGolosinas.contains(unaGolosina)
    }

    method probarGolosinas(){ 
        bolsaGolosinas.forEach({g=>g.recibeMordisco()})
    }

    method hayGolosinaSinTacc(){ return 
        bolsaGolosinas.any({g=>g.libreDeGluten()})
    }

    method preciosCuidados(){ return 
        bolsaGolosinas.all({g=>g.precio() <= 10})
    }

    method golosinaDeSabor(unSabor){ return 
        self.golosinasDeSabor(unSabor).first()
    }
    method golosinasDeSabor(unSabor){ return
        bolsaGolosinas.filter({g=>g.sabor(unSabor)})
    }

    method sabores(){
        bolsaGolosinas.map({g=>g.sabor()}).asSet()
    }

    method golosinaMasCara(){ return
        bolsaGolosinas.max({g=>g.precio()})
    }

    method pesoGolosinas(){ return
        bolsaGolosinas.sum({g=>g.peso()})
    }

    method golosinasFaltantes(golosinasDeseadas){ return
        golosinasDeseadas.difference(bolsaGolosinas)
    }

    method gustosFaltantes(gustosDeseados){ return
        gustosDeseados.filter({gustoDeseado=> !self.tieneLaGolosina(gustoDeseado)})
    }

}