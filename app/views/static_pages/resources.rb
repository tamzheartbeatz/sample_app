#encoding: utf-8
class Views::StaticPages::Resources < Views::Layouts::Page

	def main
		header
		newsletter_stories
		newsletter_social
		newsletter_officepics
	end

	def header
		# div(:id => {:main_wrapper, :newsletter_inner_content} {
			div(:id => :main) {
				# images in header
				# image_tag 'images/headericons.png' { :alt => 'Couchsurfing Newsletter' :size '576x85' :float => 'right' } 
				div.newsletter_message {
					 image_tag asset_path 'tourist.jpg'
					p {
					  text 'Hey #user_id,'
					  br
					  br
					  text 'Happy June! [BLURB ABOUT THIS BEING THE  FIRST NEWSLETTER AND ALL THAT STUFF]. This can be the busiest time of the year for Couchsurfers so we‘ve compiled the best '
					  a(:href => '#', :target => '_blank') {
					 	 text 'tips from hosts and travelers just like you.'
					 	}
					}
				}
			}
		# }
	end

	def newsletter_stories
		div(:class => :newsletter_content) {
			div.community_stories {
			  h3 'Couchsurfers Give Back'
			  image_tag asset_path 'bali_orphanage.jpg'
			  p {
				  text 'Couchsurfers are inspiring us every day by ' 
				  strong 'giving back to their communities.'
				  text 'In Bali, 37 Couchsurfers '
				  a(:href => '#', :target => '_blank') {
				  	text 'traveled to a remote orphanage'
				  }
				  text ' to not only deliver donations, but teach the children about their different countries. Over 3,000 kilometers away, Taipei Couchsurfers '
				  a(:href => '#', :target => '_blank') {
				  	text 'hosted a picnic'
				  }
				  text ' to collect books and stationery for local children.'
				}
			}
		}
	end

	def newsletter_social
		div.media_best { 
			image_tag asset_path 'alexliss.jpg', { :alt => 'Alex Liss‘ One Couch at a Time Documntary', :size => '160x160' }
			h3 'Watch This…'
			p {
				strong 'Who doesn´t love a good movie?'
				text 'We love when Couchsurfers film their experiences so they can share their stories with the world. One filmmaker is Alexandra Liss, who '
				a(:href => '#', :target => '_blank') { 
					text 'made a documentary' 
				}
				text ' about her six-month Couchsurfing adventure. Or Dan Murphy, who´s looking for travel partners as '
				a(:href => '#', :target => '_blank') {
					text 'he films the official videos'
				}
				text ' for the 2013 Mongo Rally.'
				br
				br
				text 'Here´s to a great season of Couchsurfing.'
				br 	
				br
				em '-Your Friends at Couchsurfing'
			}
		}
	end

	def newsletter_officepics
		div.media_photos {
			image_tag asset_path 'teddy_the_dog.jpg'

			p {
				text 'Also, '
				a 'meet Teddy,', {:href => 'http://instagram.com/p/aJSmfblqOF/', :target => '_blank'}
				text ' one of our newest office pooches!'
				br 
				br

			}
		}
	end

end
