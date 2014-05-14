package red

class Municipio {

    String nombre

    static belongsTo = [estado: Estado]
  
    
    static constraints = {
        nombre maxSize: 100, nullable: false, blank: false 
        estado nullable: true
    }

   
    @Override
    String toString() {
        return  nombre
    }

}
