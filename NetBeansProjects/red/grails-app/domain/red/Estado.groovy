package red

class Estado {

    String nombre
    Boolean activo

    static hasMany = [municipios : Municipio]

    static constraints = {
        nombre maxSize: 100, nullable: false, blank: false, inList:
        ["Oaxaca","Puebla"]
        activo nullable: false
    }

   @Override
    String toString() {
        //return id + ' : ' + nombre
        return nombre
    }
}