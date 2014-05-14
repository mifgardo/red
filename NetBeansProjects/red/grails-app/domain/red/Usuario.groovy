package red
import red.Estado
import red.Municipio
import java.text.*

class Usuario {
    
    String nombre
    Estado estado
    String municipio
    String fechaNacimiento
    String mail
    String telefonoCelular
    
    

    static constraints = {
        nombre(blank:false)
        estado(blank: false)
        municipio()
        fechaNacimiento()
        mail  (email:true,blank: false, nullable: true)
        telefonoCelular (maxSize: 10)
    }
    
    void setnombre(String s){ 
        nombre = s?.toUpperCase() 
    }
    void setmunicipio(String s){ 
        municipio = s?.toUpperCase() 
    }
   
}