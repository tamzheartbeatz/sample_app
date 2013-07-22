#encoding: utf-8

# <% provide(:title, 'Resources') %>


#  <h1>Design Resources</h1>
# 		<p>
# 			Ever come across a page with a killer design or unique blending techniques you wish you knew how to create? Or what if you have a project but not sure where to begin so you're hoping to find inspiration somewhere, anywhere. You've come to the right place. 
# 			<br>
# 			Below is a list of resources I have compiled over the years of design. From inspiration to debugging to color theory to latest design techniques, this list provides something for everyone–beginner to advanced. So sit back, relax and enjoy! 

# 			I hope you find inspiration in everything you create. “Good design is obvious. Great design is transparent.“–Joe Sparano 
# 		</p>

class Views::StaticPages::Resources < Views::Layouts::Page

	def main
		header
		newsletter_stories
		newsletter_social
	end

	def header
		div(:id => :main) {
			# images in header
			# image_tag 'images/headericons.png' { :alt => 'Couchsurfing Newsletter' :size '576x85' :float => 'right' } 
			div.newsletter_msg {
				p {
				  text 'Hey #user_id,'
				  br
				  p 'Happy June! [BLURB ABOUT THIS BEING THE  FIRST NEWSLETTER AND ALL THAT STUFF].This can be the busiest time of the year for Couchsurfers so we‘ve compiled the best'
				  # link_to url => :membertips => 
				  a(:href => '#', :target => '_blank') {
				 	 text 'tips from hosts and travelers just like you.'
				 	}
				}
			}
		}
	end

	def newsletter_stories
		div(:class => :newsletter_content) {
			div.community_stories {
			  h3 'Couchsurfers Give Back'
			  image_tag 'images/tourist.jpg'
			  br
			  p {
				  text 'Couchsurfers are inspiring us every day by' 
				  strong 'giving back to their communities.'
				  text 'In Bali, 37 Couchsurfers '
				  a(:href => '#', :target => '_blank') {
				  	text 'traveled to a remote orphanage '
				  }
				  text 'to not only deliver donations, but teach the children about their different countries. Over 3,000 kilometers away, Taipei Couchsurfers '
				  a(:href => '#', :target => '_blank') {
				  	text 'hosted a picnic '
				  }
				  text ' to collect books and stationery for local children.'
				}
			}
		}
	end

	def newsletter_social
		div.media_best {
			image_tag 'images/bali_orphanage.jpg'
			h2 'Watch This…'
			br
			p {
				strong 'Who doesn´t love a good movie?'
				text 'We love when Couchsurfers film their experiences so they can share their stories with the world. One filmmaker is Alexandra Liss, who '
				a(:href => '#', :target => '_blank') { 
					text 'made a documentary' 
				}
				text 'about her six-month Couchsurfing adventure. Or Dan Murphy, who´s looking for travel partners as '
				a(:href => '#', :target => '_blank') {
					text 'he films the official videos '
				}
				text 'for the 2013 Mongo Rally.'
				br
				text 'Here´s to a great season of Couchsurfing.'
			}
		}
	end

	def newsletter_officepix
		div.media_photos {
			image_tag 'images/teddy_the_dog.jpg'
			p {
				text 'Also, '
				a 'meet Teddy, ', {:href => 'http://instagram.com/p/aJSmfblqOF/', :target => '_blank' }
				text 'one of our newest office pooches!'
			}
		}
	end



		# div(:id => (:newsletter_sig) {
		# 	p '-Your Friends at Couchsurfing'
		# }
end
