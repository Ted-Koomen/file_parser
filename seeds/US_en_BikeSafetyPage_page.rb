country = Country.find_by(country_code: 'US') ? Country.find_by(country_code: 'US') : Country.create(name:'United States', country_code:'US')
page = BikeSafetyPage.new(
page_title:"Bike Safety",
content_block_1_headline:"safety first                                                                                                                     ",
content_block_1_paragraph:"We're all about having fun, but your safety is our top priority.",
content_block_2_headline:"always obey the rules of the road",
content_block_2_paragraph:"A bicycle is a vehicle and you are a driver. Pay attention to your surroundings, and adhere to all traffic signs, signals and lane markings.",
content_block_3_headline:"biking tips for all",
content_block_3_paragraph:"Regardless of where you bike, follow these tips to ensure your safety.
",
tip_1_headline:"ride with traffic",
tip_1_paragraph:"Ride on the right in the same direction as other vehicles. Go with the flow – not against it.
",
tip_2_headline:"ride sober",
tip_2_paragraph:"Never drink and drive. You need 100% of your senses to ride safely.",
tip_3_headline:"signal all turns",
tip_3_paragraph:"Use hand signals to alert others of where you are going. Do not assume drivers and other riders will stop for you.
",
tip_4_headline:"adjust your bicycle to fit
",
tip_4_paragraph:"The seat height should be adjusted to allow a slight bend at the knee when the leg is fully extended.
",
tip_5_headline:"be prepared for conditions
",
tip_5_paragraph:"Wet weather can cause some difficult riding conditions. Take your time and pay attention.
",
tip_6_headline:"make left-hand turns safely
",
tip_6_paragraph:"Never make a left turn from the right lane. Yield to oncoming traffic before turning.
",
tip_7_headline:"wear a properly fitted helmet",
tip_7_paragraph:"Make sure your helmet fits snug on the top of your head in a level position and does not rock when you move your head.
",
tip_8_headline:"yield to pedestrians",
tip_8_paragraph:"Be prepared to yield the right of way and do not drive unnecessarily close to pedestrians.
",
country: country
)
page.save
