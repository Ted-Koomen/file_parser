country = Country.find_by(country_code: 'AT') ? Country.find_by(country_code: 'AT') : Country.create(name:'Austria', country_code:'AT')
page = CareersIndexPage.new(
page_title:"Karriere",
content_block_1_headline:"Bei ofo Arbeiten",
filter_1_title:"Alle Abteilungen",
filter_2_title:"Alle Länder/ Regionen",
filter_3_title:"Alle Städte",
Call to Action:"Jetzt bewerben",
error_state:"Keine Stellen entsprechen der Suche",
country: country
)
page.save
