package red

class Ciudad {

    String nombre

    static hasMany = [municipios : Municipio]

    static constraints = {
        nombre maxSize: 100, nullable: true, blank: true, inList:
        ["Tehuacan","Puebla"]
        
    }

   @Override
    String toString() {
        //return id + ' : ' + nombre
        return nombre
    }
}