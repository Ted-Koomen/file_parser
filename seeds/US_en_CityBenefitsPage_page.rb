country = Country.find_by(country_code: 'US') ? Country.find_by(country_code: 'US') : Country.create(name:'United States', country_code:'US')
page = CityBenefitsPage.new(
Page Section:"English (US)",
content_block_1_headline:"bringing ofo to your city",
content_block_1_paragraph:"ofo strengthens communities via sustainable urban travel – with zero cost for local government.",
content_block_2_headline:"zero investment required",
content_block_2_paragraph:"ofo maintains the bikes and supports riders. With no docking stations taking up valuable parking space, any city can now provide its citizens a bike share program at virtually zero cost.",
call_to_action_1_headline:"give your city the gift of bike share                                                   ",
call_to_action_1_button_text:"Contact ofo",
content_block_3_headline:"filling the gaps",
content_block_3_paragraph:"It isn't just about "last mile" commuting – ofo expands your metro area perimeter, and fills in the service gaps that mass transit hasn't been able to serve.",
content_block_4_headline:"mobility for all",
content_block_4_paragraph:"People shouldn't have to struggle to get to work or school because of where they live. ofo is a step towards social equality and inclusion for any city that adopts it.",
content_block_5_headline:"an economic boost",
content_block_5_paragraph:"Research has shown that bike share programs have a positive impact on property values. With citizens spending less time commuting, and the added cultural capital of being known as a proactive, green city, ofo's economic impact is substantial.",
content_block_6_headline:"safety first",
content_block_6_paragraph:"Every ofo city has a full-time maintenance team to manage, inspect, and repair bikes. We've performed hundreds of thousands of hardware inspections to ensure the safest ride in your city.",
content_block_7_headline:"a smaller carbon footprint",
content_block_7_paragraph:"Every mile travelled by bike lowers carbon emissions by .77 lbs (as compared to driving). To date, ofo riders have reduced aggregate carbon emissions by over 13,500 tons.",
call_to_action_2_headline:"give your city the gift of bike share                                                                       ",
call_to_action_2_button_text:"Contact ofo",
country: country
)
page.save
