modules = {
    'jquery-json' {
        dependsOn 'jquery'
        resource url: [ plugin: 'jquery-json', dir:    'js', file:   'jquery.json-2.2.min.js']
    }
}