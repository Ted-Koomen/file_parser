country = Country.find_by(country_code: 'US') ? Country.find_by(country_code: 'US') : Country.create(name:'United States', country_code:'US')
page = RidersPage.new(
page_title:"單車騎手",
content_block_1_headline:"選擇最佳的共享單車方案",
content_block_1_paragraph:"選擇ofo，您只需要找到一輛小黃車，騎到您的目的地，並把車停在合適的區域。毋需歸還至指定車站，毋需多費腳力。因為共享單車就是這麼便利！",
content_block_2_headline:"借車、還車，地點隨意！",
content_block_2_paragraph:"有了無樁共享單車，您可以騎車到任何目的地。您唯一需要做的，就是停車時遵守交通規則。",
call_to_action_1_headline:"現在就開始ofo吧！",
call_to_action_1_button_text:"下載地址：",
content_block_3_headline:"感受ofo，隨心所欲",
content_block_3_paragraph:"找單車、掃單車、騎單車、鎖單車",
how_to_step_1_headline:"尋找單車",
how_to_step_1_paragraph:"打開您手機上的ofo app，您附近的小黃車位置一覽無遺",
how_to_step_2_headline:"點擊掃碼",
how_to_step_2_paragraph:"站在小黃車前，按下手機屏幕上的“解鎖”按鈕，掃描車身上的QR碼，即可自動解鎖單車。",
how_to_step_3_headline:"輕鬆騎行",
how_to_step_3_paragraph:"腳踩單車，發掘您所在的城市之美，安全到達您的目的地。",
how_to_step_4_headline:"停車上鎖",
how_to_step_4_paragraph:"結束騎行時，您只需要將單車停放在安全且不阻礙交通的位置，手動合上鎖，即可自動結束您的訂單。",
content_block_4_headline:"最優價格",
content_block_4_paragraph:"僅需 $1／小時",
content_block_5_headline:"您的開心，我們的放心",
bike_description_handle_bar:"test",
bike_description_front_wheel:"test",
bike_description_tire:"test",
bike_description_frame_bar:"test",
bike_description_seat:"test",
bike_description_lock:"test",
bike_description_brake:"test",
bike_description_back_wheel:"test",
bike_description_kickstand:"test",
content_block_6_headline:"test",
call_to_action_2_headline:"test",
call_to_action_2_button_text:"test",
country: country
)
page.save
