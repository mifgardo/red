/* Copyright 2011 the original author or authors.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
package org.grails.jquery.json

/**
*
* @author <a href='mailto:limcheekin@vobject.com'>Lim Chee Kin</a>
*
* @since 2.2
*/
class JQueryJsonTagLib {
   static namespace = "jqJson"
   def pluginManager
   
   def resources = { attrs, body ->
	   def plugin = pluginManager.getGrailsPlugin('jqueryJson')
	   def version = plugin.version
	   def minified = grailsApplication.config.jqueryJson.get('minified', true)
	
		 renderJavaScript g.resource(plugin:"jqueryJson", dir:"js", file:"jquery.json-${version}.${minified ? 'min.js' : 'js'}")
   }
   
   private renderJavaScript(def url) {
	   out << '<script type="text/javascript" src="' + url + '"></script>\n'
   }   
}