country = Country.find_by(country_code: 'AT') ? Country.find_by(country_code: 'AT') : Country.create(name:'Austria', country_code:'AT')
page = AboutPage.new(
page_title:"",
content_block_1_headline:"",
content_block_2_headline:"",
content_block_2_paragraph:"",
call_to_action_1_headline:"",
call_to_action_1_button_text:"",
stat_1_title:"",
stat_1_number:"",
stat_2_title:"",
stat_2_number:"",
stat_3_title:"",
stat_3_number:"",
stat_4_title:"",
stat_4_number:"",
content_block_3_headline:"",
content_block_3_paragraph:"",
content_block_4_headline:"",
content_block_4_paragraph:"",
content_block_4_button_text:"",
call_to_action_2_headline:"",
call_to_action_2_button_text:"",
country: country
)
page.save
