country = Country.find_by(country_code: 'AT') ? Country.find_by(country_code: 'AT') : Country.create(name:'Austria', country_code:'AT')
page = BikeSafetyPage.new(
page_title:"Fahrradsicherheit",
content_block_1_headline:"Safety first",
content_block_1_paragraph:"Bei ofo geht es um den Spaß am Fahrradfahren, jedoch hat Sicherheit bei uns immer höchste Priorität. ",
content_block_2_headline:"Beachte stets die Verkehrsregeln",
content_block_2_paragraph:"Ein Fahrrad ist ein Verkehrsmittel und der Fahrer dafür verantwortlich. Pass auf deine Umgebung auf und schenke allen Verkehrsschildern, Ampeln und Markierungen stets Beachtung.",
content_block_3_headline:"Fahrtipps für alle",
content_block_3_paragraph:"Unabhängig davon wo du mit dem Fahrrad fährst, beachte diese Tipps um sicher anzukommen.",
tip_1_headline:"Fahre mit dem Strom",
tip_1_paragraph:"Fahre möglichst rechts auf der Straße, wenn kein Fahrradweg existiert und immer in die gleiche Richtung wie die anderen Verkehrsteilnehmer. Fahr immer mit dem Strom - nicht dagegen.",
tip_2_headline:"Fahr nüchtern",
tip_2_paragraph:"Don't drink and drive! Du brauchst all deine Sinne um sicher an dein Ziel zu gelangen.",
tip_3_headline:"Verwende Handzeichen",
tip_3_paragraph:"Verwende Handzeichen um anderen mitzuteilen in welche Richtung du fährst. Gehe nicht davon aus, dass andere Verkehrsteilnehmer für dich anhalten, weil du Vorfahrt hast.",
tip_4_headline:"Stell das Fahrrad richtig ein",
tip_4_paragraph:"Die Sitzhöhe sollte deiner Körpergröße entsprechend eingestellt werden. Bei allen ofo Fahrrädern kann der Sattel ohne Werkzeug stufenlos verstellt werden. Die Höhe ist korrekt eingestellt, wenn du auf dem Sattel sitzend noch bequem mit beiden Füßen den Boden berühren kannst.",
tip_5_headline:"Sei auf alle Umstände vorbereitet",
tip_5_paragraph:"Regen kann zu schwierigen Umständen führen. Nimm dir ausreichend Zeit und sei achtsam.",
tip_6_headline:"Sicher Linksabbiegen",
tip_6_paragraph:"Biege niemals vom rechten Fahrstreifen nach links ab. Beachte die Vorfahrt vom entgegenkommenden Verkehr.",
tip_7_headline:"Passenden Fahrradhelm tragen",
tip_7_paragraph:"Achte darauf, dass dein Helm oben eng am Kopf anliegt und nicht verrutscht, wenn du deinen Kopf bewegst. ",
tip_8_headline:"Fußgängern Vorrecht gewähren",
tip_8_paragraph:"Fahr nicht unnötig nah an Fußgängern vorbei und behindere sie nicht. Sie sind gegenüber dem Fahrrad der schwächere Verkehrsteilnehmer und müssen daher geschützt werden.",
country: country
)
page.save
