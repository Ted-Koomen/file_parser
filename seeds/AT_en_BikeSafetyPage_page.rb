country = Country.find_by(country_code: 'AT') ? Country.find_by(country_code: 'AT') : Country.create(name:'Austria', country_code:'AT')
page = BikeSafetyPage.new(
page_title:"",
content_block_1_headline:"",
content_block_1_paragraph:"",
content_block_2_headline:"",
content_block_2_paragraph:"",
content_block_3_headline:"",
content_block_3_paragraph:"",
tip_1_headline:"",
tip_1_paragraph:"",
tip_2_headline:"",
tip_2_paragraph:"",
tip_3_headline:"",
tip_3_paragraph:"",
tip_4_headline:"",
tip_4_paragraph:"",
tip_5_headline:"",
tip_5_paragraph:"",
tip_6_headline:"",
tip_6_paragraph:"",
tip_7_headline:"",
tip_7_paragraph:"",
tip_8_headline:"",
tip_8_paragraph:"",
country: country
)
page.save
