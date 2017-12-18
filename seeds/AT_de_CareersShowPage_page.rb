country = Country.find_by(country_code: 'AT') ? Country.find_by(country_code: 'AT') : Country.create(name:'Austria', country_code:'AT')
page = CareersShowPage.new(
page_title:"",
content_block_1_headline:"join ofo",
call_to_action_button_text:"Apply Now",
country: country
)
page.save
