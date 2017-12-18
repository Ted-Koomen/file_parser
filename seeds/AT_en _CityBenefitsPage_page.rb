country = Country.find_by(country_code: 'AT') ? Country.find_by(country_code: 'AT') : Country.create(name:'Austria ', country_code:'AT')
page = CityBenefitsPage.new(
Page:"",
content_block_1_headline:"",
content_block_1_paragraph:"",
content_block_2_headline:"",
call_to_action_1_headline:"",
call_to_action_1_button_text:"",
content_block_3_headline:"",
content_block_3_paragraph:"",
content_block_4_headline:"",
content_block_4_paragraph:"",
content_block_5_headline:"",
content_block_5_paragraph:"",
content_block_6_headline:"",
content_block_6_paragraph:"",
content_block_7_headline:"",
call_to_action_2_headline:"",
call_to_action_2_button_text:"",
country: country
)
page.save
