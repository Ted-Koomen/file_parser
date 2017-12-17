country = Country.find_by(country_code: 'US') ? Country.find_by(country_code: 'US') : Country.create(name:'United States', country_code:'US')
page = CityBenefitsPage.new(
Page Section:"Chinese (简体中文)",
content_block_1_headline:"test",
content_block_1_paragraph:"test",
content_block_2_headline:"test",
content_block_2_paragraph:"test",
call_to_action_1_headline:"test",
call_to_action_1_button_text:"test",
content_block_3_headline:"test",
content_block_3_paragraph:"test",
content_block_4_headline:"test",
content_block_4_paragraph:"test",
content_block_5_headline:"test",
content_block_5_paragraph:"test",
content_block_6_headline:"test",
content_block_6_paragraph:"test",
content_block_7_headline:"test",
content_block_7_paragraph:"test",
call_to_action_2_headline:"test",
call_to_action_2_button_text:"test",
country: country
)
page.save
