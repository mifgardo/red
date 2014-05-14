import red.Estado
import red.Municipio

  class BootStrap {

    def init = { servletContext ->
        environments {
            development {
                List activos = ["Oaxaca", "Puebla"]
                if (!Estado.count()) {
                    ["Oaxaca","Puebla"].each {
                        new Estado(nombre: it, activo: activos.contains(it))
                        .save(failOnError: true)
                    }
                }
                if (!Municipio.count()) {
                    
                    Estado estado = Estado.findByNombre("Oaxaca")
                    ["Oaxaca de Juarez","Xoxocotlan"].each {
                        new Municipio(nombre: it, estado: estado).save(failOnError: true)
                    }}
                if (!Municipio.count()) {
                    
                    Estado estado = Estado.findByNombre("Puebla")
                    ["Mixcoac","Tehuacan"].each {
                        new Municipio(nombre: it, estado: estado).save(failOnError: true)
                    }}
                
                   
                }
            }
        }
    
    def destroy = {}
}