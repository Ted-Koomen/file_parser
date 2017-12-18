country = Country.find_by(country_code: 'AT') ? Country.find_by(country_code: 'AT') : Country.create(name:'Austria', country_code:'AT')
page = CareersIndexPage.new(
page_title:"",
content_block_1_headline:"",
filter_1_title:"",
filter_2_title:"",
filter_3_title:"",
Call to Action:"",
error_state:"",
country: country
)
page.save
