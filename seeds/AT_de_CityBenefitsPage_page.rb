country = Country.find_by(country_code: 'AT') ? Country.find_by(country_code: 'AT') : Country.create(name:'Austria', country_code:'AT')
page = CityBenefitsPage.new(
Page:"FAQ",
content_block_1_headline:"Bring ofo in deine Stadt",
content_block_1_paragraph:"ofo stärkt Gemeinden durch ein nachhaltiges innerstädtisches
Mobilitätsangebot - ohne Emissionen.",
content_block_2_headline:"Keine Investitionen erforderlich",
call_to_action_1_headline:"Mach deiner Stadt ein Geschenk: Modernes Bikesharing",
call_to_action_1_button_text:"Kontaktinformation",
content_block_3_headline:"Servicelücken schließen",
content_block_3_paragraph:"Es geht nicht nur um die "letzte Meile" Problematik - ofo erweitert den U-Bahn-Bereich und füllt genau die Servicelücken, die der Massenverkehr nicht wirtschaftlich bedienen kann.",
content_block_4_headline:"Mobilität für alle",
content_block_4_paragraph:"Menschen sollten keine Nachteile haben aufgrund ihres 
Wohnortes einfach zur Arbeit oder zur Schule zu kommen. ofo 
bietet einen Schritt in Richtung soziale Gleichheit und Integration für alle 
Menschen, in jeder teilnehmenden Stadt.",
content_block_5_headline:"Positive wirtschaftliche Effekte",
content_block_5_paragraph:"Untersuchungen legen Nahe, dass Bikesharing-Systeme sich positiv auf die Immobilienwerte auswirken können, da die Bürger weniger Zeit zum Pendeln benötigen. Durch die Zeitersparnis und die Imagebildung einer proaktiven, grünen Stadt, ist die positive wirtschaftliche Auswirkung von ofo signifikant.",
content_block_6_headline:"Safety first",
content_block_6_paragraph:"Jeder Kilometer der mit dem Fahrrad (anstatt mit dem Auto) zurückgelegt wird, spart in etwa 350g CO2 ein. Bis zum heutigen Tag haben ofo Nutzer CO2 in Höhe von 13.500 Tonnen eingespart.",
content_block_7_headline:"Eine bessere CO2-Bilanz",
call_to_action_2_headline:"Mach deiner Stadt ein Geschenk: Modernes Bikesharing",
call_to_action_2_button_text:"Kontaktinformation",
:"Das System benötigt keine Infrastruktur im öffentlichen Raum, um die Fahrräder sicher zur Verfügung stellen zu können. Jedoch sind wir im Austausch mit der Stadt Wien für zukünftige Entwicklungen.",
Header Text:"Häufig gestellte Fragen",
Section 1:"Über ofo",
Question/Answer 1:"Braucht ofo öffentliche Fördermittel um Bikesharing einzurichten und in einer Stadt zu betreiben?",
Question/Answer 2:"Nimmt ofo aktiv eine Umverteilung vor, sollten Fahrräder im Geschäftsgebiet an einer Stelle in zu hoher Anzahl abgestellt werden?",
Question/Answer 3:"Wie stellt ofo sicher, dass die Fahrräder nicht verkehrswidrig abgestellt werden?",
Question/Answer 4:"Möchte ofo Infrastruktur (z.B. Stationen) im öffentlichen Raum einrichten?",
Question/Answer 5:"Wie melde ich ein reparaturbedürftiges Fahrrad?",
Question/Answer 6:"Was soll ich tun, wenn ich einen Unfall verwickelt bin?",
Question/Answer 7:"Wie kann ich Regelverstöße melden?",
Question/Answer 8:"Kann ich mein privates Fahrrad über ofo teilen?",
Question/Answer 9:"Wie kann ich für ofo arbeiten?",
Section 2:"Geschäftstätigkeit",
Section 3:"ofo Fahrräder benutzen",
Section 4:"Auf- und Abschließen",
Section 5:"Mobile App",
Section 6:"Account und Registrierung",
Section 7:"Abrechnung",
Section 8:"Fahrradnutzung",
Section 9:"Parken",
Section 10:"Fahrradsicherheit",
Section 11:"Für Städte und Hochschulen",
country: country
)
page.save
