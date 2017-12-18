country = Country.find_by(country_code: 'AT') ? Country.find_by(country_code: 'AT') : Country.create(name:'Austria', country_code:'AT')
page = AboutPage.new(
page_title:"Über uns",
content_block_1_headline:"Über ofo",
content_block_2_headline:"Marktführer im stationslosen Bikesharing weltweit",
content_block_2_paragraph:"Gegründet im Jahr 2014 mit Sitz in Peking, China, ist ofo das erste und heute größte Unternehmen für stationsloses Bikesharing weltweit. ofo tritt mit dem Ziel an, die beste Mobilitätslösung im Kurzstreckenbereich anzubieten und die "Letzte Meile"-Problematik zu lösen, indem die letzte Strecke bis zum endgültigen Zielort zu einem umweltfreundlichen Kurztrip mit dem Fahrrad ohne Emissionen wird. 

Ende 2017 betreibt ofo mehr als 10 Millionen Fahrräder bei ca. 200 Millionen Nutzern in 17 Ländern: USA, UK, Australien, China, Japan, Malaysia, Russland, Thailand, Singapur, Spanien, Italien, Portugal, Niederlande, Tschechien, Isreal, Österreich und Kasachstan. ofo verzeichnet aktuell täglich mehr als 25 Millionen Nutzungen in 180+ Städten, also über 4 Milliarden effiziente, bequeme und umweltfreundliche Fahrten insgesamt.",
call_to_action_1_headline:"Erfahre mehr über ofo",
call_to_action_1_button_text:"ofo kontaktieren",
stat_1_title:"Fahrten",
stat_1_number:"über 4 Milliarden",
stat_2_title:"Nutzer weltweit",
stat_2_number:"über 200 Millionen",
stat_3_title:"Städte",
stat_3_number:"über 180",
stat_4_title:"Fahrradflotte",
stat_4_number:"über 10 Millionen Fahrräder",
content_block_3_headline:"Unsere Mission",
content_block_3_paragraph:"Jeden Winkel der Welt erschließen, jedem Menschen jederzeit und überall ein Fahrrad zur Verfügung stellen.",
content_block_4_headline:"Wir wollen Mobilität nachhaltig machen",
content_block_4_paragraph:"ofo und das Entwicklungsprogramm der Vereinten Nationen (UNDP) haben eine Kooperation zur Förderung von nachhaltiger Mobilität vereinbart.",
content_block_4_button_text:"Mehr zur UN-Partnerschaft lesen",
call_to_action_2_headline:"Komm in unser Team und hilf uns dabei Bikesharing noch besser zu machen",
call_to_action_2_button_text:"Finde einen Job",
country: country
)
page.save
