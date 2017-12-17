country = Country.find_by(country_code: 'US') ? Country.find_by(country_code: 'US') : Country.create(name:'United States', country_code:'US')
page = CampusBenefitsPage.new(
:"false",
page_title:"Campus Benefits",
content_block_1_headline:"ofo on your campus",
content_block_1_paragraph:"ofo isn't just sustainable campus transportation – it helps build a sense of community in students, and saves them money at the same time",
content_block_2_headline:"from campus to community",
content_block_2_paragraph:"Dockless bikes connect your campus to the community at large, and a bike share program becomes an invaluable cultural touchpoint to foster a kinship amongst your students.",
call_to_action_1_headline:"give your campus the gift of bike share",
call_to_action_1_button_text:"Contact ofo",
content_block_3_headline:"sustainable  campus transit",
content_block_3_paragraph:"Students nationwide are fighting to protect our environment. With over 13,500 tons in carbon emissions already saved by ofo riders – and every mile traveled reducing carbon emissions by .77 lbs. – ofo lets your students effect positive change.",
content_block_4_headline:"affordable for students ... and campuses, too",
content_block_4_paragraph:"Students get cost-effective transit on their terms. Campuses get a bike share at zero cost to the school, with no docking stations to take up parking spots.",
content_block_5_headline:"cleaning up campus",
content_block_5_paragraph:"Campus services shouldn't have to remove locked or abandoned bikes. ofo lowers the number of private bikes on campus, while our own bikes are inspected and maintained by our full-time staff.",
call_to_action_2_headline:"give your campus the gift of bike share",
call_to_action_2_button_text:"Contact ofo",
country: country
)
page.save
