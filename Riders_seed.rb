country = Country.new(country_name:'Riders' country_code:'Riders')
Riders = Riders.new(
:"Download on",
page:"Riders",
header_title:"choose a better bikeshare",
header_body:"With ofo, you pick up a bike, get where you're going, and leave it there. No docking stations, no walking the rest of the way. Because that's what a bike share is supposed to be.
 ",
content_block_1_title:"grab a bike anywhere. park a bike anywhere.                                                                                         ",
content_block_1_paragraph:"With station-free bike sharing, you can ride wherever you please. All you have to do is park your bike legally.",
call_to_action_title:"start riding ofo today                                                                                               ",
call_to_action_body:" Download on",
content_block_2_title:"riding ofo couldn't be easier",
content_block_2_body:"Find it. Scan it. Ride it. Lock it.",
how_to_1_title:"find a bike",
how_to_1_body:"Open the app and find all the bikes around you.",
how_to_2_title:"tap and scan",
how_to_2_body:"When you’re at the bike, tap the “unlock” button and scan the barcode to automatically unlock the bike.",
how_to_3_title:"enjoy the ride",
how_to_3_body:"Explore your city and arrive at your destination safely",
how_to_4_title:"park and lock",
how_to_4_body:"At your destination, simply park your bike safely and legally, and manually lock it to automatically end the trip.",
content_block_3_tile:"the best deal around",
content_block_3_body:"only $1/hour",
content_block_4:"you're safe with us",
handle_bar:"Unique bicycle identification number",
fornt_wheel:"LED Dynamo Headlight – visible from 500ft",
tire:"Solid tire that never deflates",
frame_bar:"Strong durable and light aluminum body ",
seat:"Adjustable seat to accommodate user preferences",
lock:"GPS Enabled, mobile synced, smart lock. Data can be used to inform transportation planning ",
brake:"Reliable and easy to use brake",
back_wheel:"Red back reflector to alert motorists and pedestrians ",
kickstand:"Kickstand for upright parking without a docking station",
content_block_5:"Featured in ",
call_to_action_2:"start riding ofo today                                                                                                   ",
t.references: country
)
Riders.save 
 country.save
