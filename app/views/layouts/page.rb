#encoding: UTF-8
class Views::Layouts::Page < Erector::Widget



 Erector::Widget.prettyprint_default = true

 def content
   doctype_html5
   html(:lang => "en") {
     head {
       meta :charset => 'UTF-8'
       title page_title
       stylesheet_link_tag "application", :media => "all"
       javascript_include_tag "application"
       # page_specific_css
       # page_specific_js
     }
     body {
       main

     }
   }
 end

 def doctype_html5
   text! '<!DOCTYPE html>'
 end

 def main
   h1 { page_title }
   p 'main content here ...'
 end

 

 def page_specific_css
 end

 def page_specific_js
 end

 def page_title
   @page_title || "Hello"
 end

 def method_name
 	
 end
end
 
 

