

locations = Location.create([{name: "Belize", description: "Belize is bordered on the northwest by Mexico, on the east by the Caribbean Sea, and on the south and west by Guatemala. It has an area of 22,970 square kilometres (8,867 sq mi) and a population of 387,879 (2017). Its mainland is about 180 mi (290 km) long and 68 mi (110 km) wide."},
{name: "Cambodia", description: "Situated on the Indochinese peninsula, Cambodia is bordered by Thailand and Laos on the north and Vietnam on the east and south. The Gulf of Thailand is off the western coast. The size of Missouri, the country consists chiefly of a large alluvial plain ringed by mountains with the Mekong River to the east."},
{name: "Morocco", description: "Morocco has Atlantic and Mediterranean coastlines, a rugged mountain interior and a history of independence not shared by its neighbours. Its rich culture is a blend of Arab, Berber, European and African influences. Morocco was a French protectorate from 1912 to 1956, when Sultan Mohammed became king."},
{name: "Uganda", description: "Uganda is a landlocked country in East Africa whose diverse landscape encompasses the snow-capped Rwenzori Mountains and immense Lake Victoria. Its abundant wildlife includes chimpanzees as well as rare birds. Remote Bwindi Impenetrable National Park is a renowned mountain gorilla sanctuary. Murchison Falls National Park in the northwest is known for its 43m-tall waterfall and wildlife such as hippos."}])

users = User.create([{name: "Jill Smith", age: 23, bio: "I love to travel and see the world. When I'm not blogging and taking photos of my travels, I'm reliving them on social media.", skills: "photography, teaching English"},
{name: "John Doe", age: 54, bio: "Recently retired from the medical field and looking forward to seeing more of the world. I speak English, German, and Spanish.", skills: "Speak multiple languages, medical skills"},
{name: "Hildie Fitzgerald", age: 48, bio: "Elementary school math teacher and world traveller. Just looking for a new way to make a difference.", skills: "Experienced teacher, certified diver, fast learner."}])

organizations = Organization.create([{name: "Go Abroad", website: "https://www.goabroad.com/volunteer-abroad"},
  {name: "International Volunteer HQ", website: "https://www.volunteerhq.org/volunteer-abroad-programs/"},
  {name: "United Planet", website: "https://www.unitedplanet.org/volunteer-abroad"}
])


categories = Category.create([{name: "Marine Conservation", description: "You will have the opportunity to join a variety of conservation efforts focused on the protection of marine ecosystems. Volunteers work alongside Marine Biologists to gather data, conduct surveys and remove invasive species."},
{name: "Teaching English", description: "By Teaching English, you will play an important role in helping increase opportunities for children and adults to learn the English language, which is a requirement for employment in their futures."},
{name: "Childcare", description: "Volunteers on the Childcare project work with children from disadvantaged neighborhoods through organizing and engaging in activities to entertain the children and help develop their cognitive skills. Volunteers have the opportunity to design daily activities for the children, incorporating teaching basic English, physical development activities (music and dance, theatre, toys and games), and arts and craft (painting and drawing)."},
{name: "Women’s Education", description: "Your work will focus primarily on education and teaching English, and sometimes French. Other tasks can sometimes include sewing, computer training, offering academic support for girls, and occasional childcare."},
{name: "Sports Development", description: "In addition to fostering teamwork and building social skills, the involvement in physical activity helps to alleviate delinquency among young people in developing communities. Volunteers on the Sports Development project contribute to the growth of sport through education and coaching of sports, such as rugby, basketball, volleyball, handball, soccer and athletics."},
{name: "Teaching", description: "As a teaching volunteer, you will be placed in a nursery, primary or secondary school where you will be working alongside local teachers. Typical subjects taught at the schools include English, Math, Sports, Science, History, Music and Social Studies. Students can range in age from 3 to 20 years old, depending on the school in which you are placed."}
])


projects = Project.create([{name: "Marine Conservation in Belize", description: "As Marine Conservation volunteer in Belize, you will have the opportunity to join a variety of conservation efforts focused on the protection of the marine ecosystem in Belize. Volunteers work alongside Marine Biologists to gather data, conduct surveys and remove invasive species.", price: 750, start_date: 2019-8-1, location_id: 1, category_id: 1, organization_id: 1, available_spots: 10},
{name: "Teaching in Belmopan", description: "As a teaching volunteer, you will be placed in a nursery, primary or secondary school where you will be working alongside local teachers. Typical subjects taught at the schools include English, Math, Sports, Science, History, Music and Social Studies. Students can range in age from 3 to 20 years old, depending on the school in which you are placed.", price: 500, start_date: 2019-8-1, location_id: 1, category_id: 6, organization_id: 1, available_spots: 15},
{name: "Women’s Education in Belmopan", description: "Your work will focus primarily on education and teaching English, and sometimes French. Other tasks can sometimes include sewing, computer training, offering academic support for girls, and occasional childcare.", price: 600, start_date: 2019-8-1, location_id: 2, category_id: 4, organization_id: 3, available_spots: 12},
{name: "Childcare in Kampala", description: "Volunteers on the Childcare project work with children from disadvantaged neighborhoods through organizing and engaging in activities to entertain the children and help develop their cognitive skills. Volunteers have the opportunity to design daily activities for the children, incorporating teaching basic English, physical development activities (music and dance, theatre, toys and games), and arts and craft (painting and drawing).", price: 650, start_date: 2019-8-1, location_id: 4, category_id: 3, organization_id: 2, available_spots: 12},
{name: "Childcare in Rabat", description: "Volunteers on the Childcare project work with children from disadvantaged neighborhoods through organizing and engaging in activities to entertain the children and help develop their cognitive skills. Volunteers have the opportunity to design daily activities for the children, incorporating teaching basic English, physical development activities (music and dance, theatre, toys and games), and arts and craft (painting and drawing).", price: 580, start_date: 2019-8-1, location_id: 3, category_id: 3, organization_id: 2, available_spots: 12},
{name: "Sports Development in Phnom Penh", description: "In addition to fostering teamwork and building social skills, the involvement in physical activity helps to alleviate delinquency among young people in developing communities. Volunteers on the Sports Development project contribute to the growth of sport through education and coaching of sports, such as rugby, basketball, volleyball, handball, soccer and athletics.", price: 600, start_date: 2019-8-1, location_id: 2, category_id: 6, organization_id: 3, available_spots: 15},
{name: "Teaching English in Cambodia", description: "By Teaching English, you will play an important role in helping increase opportunities for children and adults to learn the English language, which is a requirement for employment in their futures.", price: 580, start_date: 2019-8-1, location_id: 2, category_id: 2, organization_id: 3, available_spots: 18}])








