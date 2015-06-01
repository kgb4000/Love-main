module EventsHelper

	def embed(youtube_url)
    youtube_id = youtube_url.split("=").last
    content_tag(:iframe, nil, src: "//www.youtube.com/embed/#{youtube_id}")
  end

	def options_for_events
	  [
	    ['Open Mic','Open mic'],
	    ['Concert', 'Concert'],
	    ['Showcase','Showcase'],
	    ['Competition','Competition'],
	    ['Festival', 'Festival']
	  ]
	end

	def options_for_country
	  [
	    ['United States',"United States "],
	    ['Canada','Canada']
	  ]
	end

	def options_for_state
		[["Alaska", "AK"], ["Alabama", "AL"], ["Arkansas", "AR"], ["Arizona", "AZ"], 
     ["California", "CA"], ["Colorado", "CO"], ["Connecticut", "CT"], ["District of Columbia", "DC"], 
     ["Delaware", "DE"], ["Florida", "FL"], ["Georgia", "GA"], ["Hawaii", "HI"], ["Iowa", "IA"], 
     ["Idaho", "ID"], ["Illinois", "IL"], ["Indiana", "IN"], ["Kansas", "KS"], ["Kentucky", "KY"], 
     ["Louisiana", "LA"], ["Massachusetts", "MA"], ["Maryland", "MD"], ["Maine", "ME"], ["Michigan", "MI"], 
     ["Minnesota", "MN"], ["Missouri", "MO"], ["Mississippi", "MS"], ["Montana", "MT"], ["North Carolina", "NC"], 
     ["North Dakota", "ND"], ["Nebraska", "NE"], ["New Hampshire", "NH"], ["New Jersey", "NJ"], 
     ["New Mexico", "NM"], ["Nevada", "NV"], ["New York", "NY"], ["Ohio", "OH"], ["Oklahoma", "OK"], 
     ["Oregon", "OR"], ["Pennsylvania", "PA"], ["Rhode Island", "RI"], ["South Carolina", "SC"], ["South Dakota", "SD"], 
     ["Tennessee", "TN"], ["Texas", "TX"], ["Utah", "UT"], ["Virginia", "VA"], ["Vermont", "VT"], 
     ["Washington", "WA"], ["Wisconsin", "WI"], ["West Virginia", "WV"], ["Wyoming", "WY"]
   ]
	end

	def options_for_company_state
		[["Alaska", "AK"], ["Alabama", "AL"], ["Arkansas", "AR"], ["Arizona", "AZ"], 
     ["California", "CA"], ["Colorado", "CO"], ["Connecticut", "CT"], ["District of Columbia", "DC"], 
     ["Delaware", "DE"], ["Florida", "FL"], ["Georgia", "GA"], ["Hawaii", "HI"], ["Iowa", "IA"], 
     ["Idaho", "ID"], ["Illinois", "IL"], ["Indiana", "IN"], ["Kansas", "KS"], ["Kentucky", "KY"], 
     ["Louisiana", "LA"], ["Massachusetts", "MA"], ["Maryland", "MD"], ["Maine", "ME"], ["Michigan", "MI"], 
     ["Minnesota", "MN"], ["Missouri", "MO"], ["Mississippi", "MS"], ["Montana", "MT"], ["North Carolina", "NC"], 
     ["North Dakota", "ND"], ["Nebraska", "NE"], ["New Hampshire", "NH"], ["New Jersey", "NJ"], 
     ["New Mexico", "NM"], ["Nevada", "NV"], ["New York", "NY"], ["Ohio", "OH"], ["Oklahoma", "OK"], 
     ["Oregon", "OR"], ["Pennsylvania", "PA"], ["Rhode Island", "RI"], ["South Carolina", "SC"], ["South Dakota", "SD"], 
     ["Tennessee", "TN"], ["Texas", "TX"], ["Utah", "UT"], ["Virginia", "VA"], ["Vermont", "VT"], 
     ["Washington", "WA"], ["Wisconsin", "WI"], ["West Virginia", "WV"], ["Wyoming", "WY"]
   ]
	end

	def options_for_company_country
	  [
	    ['United States',"United States "],
	    ['Canada','Canada']
	  ]
	end

	def options_for_artists_needed
	  [
	    ['Select one', 'select one'],
	    ['2', '2'],
	    ['3', '3'],
	    ['4', '4'],
	    ['5', '5'],
	    ['6', '6'],
	    ['7', '7'],
	    ['8', '8'],
	    ['9', '9'],
	    ['10', '10']
	  ]
	end

	def genres
		[
			["Electronic", "Electronic"],
			["Hip hop", "Hip hop"],
			["Rap", "Rap"],
			["Blues", "Blues"],
			["Country", "Country"],
			["Soft Rock", "Soft Rock"],
			["Progressive", "Progressive"]
		]

	end
end
