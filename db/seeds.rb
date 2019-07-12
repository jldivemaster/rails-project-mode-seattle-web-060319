

locations = Location.create([{name: "Caribbean", description: "Belize is bordered on the northwest by Mexico, on the east by the Caribbean Sea, and on the south and west by Guatemala. It has an area of 22,970 square kilometres (8,867 sq mi) and a population of 387,879 (2017). Its mainland is about 180 mi (290 km) long and 68 mi (110 km) wide."},
{name: "Southeast Asia", description: "Situated on the Indochinese peninsula, Cambodia is bordered by Thailand and Laos on the north and Vietnam on the east and south. The Gulf of Thailand is off the western coast. The size of Missouri, the country consists chiefly of a large alluvial plain ringed by mountains with the Mekong River to the east."},
{name: "Europe", description: "Morocco has Atlantic and Mediterranean coastlines, a rugged mountain interior and a history of independence not shared by its neighbours. Its rich culture is a blend of Arab, Berber, European and African influences. Morocco was a French protectorate from 1912 to 1956, when Sultan Mohammed became king."},
{name: "Africa", description: "Uganda is a landlocked country in East Africa whose diverse landscape encompasses the snow-capped Rwenzori Mountains and immense Lake Victoria. Its abundant wildlife includes chimpanzees as well as rare birds. Remote Bwindi Impenetrable National Park is a renowned mountain gorilla sanctuary. Murchison Falls National Park in the northwest is known for its 43m-tall waterfall and wildlife such as hippos."}])

users = User.create([{name: "Jill Smith", age: 23, bio: "I love to travel and see the world. When I'm not blogging and taking photos of my travels, I'm reliving them on social media.", skills: "photography, teaching English"},
{name: "John Doe", age: 54, bio: "Recently retired from the medical field and looking forward to seeing more of the world. I speak English, German, and Spanish.", skills: "Speak multiple languages, medical skills"},
{name: "Hildie Fitzgerald", age: 48, bio: "Elementary school math teacher and world traveller. Just looking for a new way to make a difference.", skills: "Experienced teacher, certified diver, fast learner."}])

organizations = Organization.create([{name: "Go Abroad", website: "https://www.goabroad.com/volunteer-abroad"},
  {name: "International Volunteer HQ", website: "https://www.volunteerhq.org/volunteer-abroad-programs/"},
  {name: "United Planet", website: "https://www.unitedplanet.org/volunteer-abroad"},
  {name: "GVI", website: "https://www.gviusa.com/volunteer-abroad/"},
  {name: "Gili Shark Conservation", website: "https://gilisharkconservation.com/"}
])


categories = Category.create([{name: "Wildlife Conservation", description: "You will have the opportunity to join a variety of conservation efforts focused on the protection of terrestrial and marine ecosystems. Volunteers work alongside Biologists to gather data, conduct surveys and remove invasive species.", img_url: "gili_lionfish.jpg"},
{name: "Teaching English", description: "By Teaching English, you will play an important role in helping increase opportunities for children and adults to learn the English language, which is a requirement for employment in their futures.", img_url: "mexico_group1.jpg"},
{name: "Childcare", description: "Volunteers on the Childcare project work with children from disadvantaged neighborhoods through organizing and engaging in activities to entertain the children and help develop their cognitive skills. Volunteers have the opportunity to design daily activities for the children, incorporating teaching basic English, physical development activities (music and dance, theatre, toys and games), and arts and craft (painting and drawing).", img_url: "gili_kids.jpg"},
{name: "Women’s Education", description: "Your work will focus primarily on education and teaching English, and sometimes French. Other tasks can sometimes include sewing, computer training, offering academic support for girls, and occasional childcare.", img_url: "mexico_GVI team.jpg"},
{name: "Sports Development", description: "In addition to fostering teamwork and building social skills, the involvement in physical activity helps to alleviate delinquency among young people in developing communities. Volunteers on the Sports Development project contribute to the growth of sport through education and coaching of sports, such as rugby, basketball, volleyball, handball, soccer and athletics.", img_url: "mexico_coati.jpg"},
{name: "Teaching", description: "As a teaching volunteer, you will be placed in a nursery, primary or secondary school where you will be working alongside local teachers. Typical subjects taught at the schools include English, Math, Sports, Science, History, Music and Social Studies. Students can range in age from 3 to 20 years old, depending on the school in which you are placed.", img_url: "gili_turtle.jpg"}
])


projects = Project.create([{name: "Marine Conservation in Belize", description: "As Marine Conservation volunteer in Belize, you will have the opportunity to join a variety of conservation efforts focused on the protection of the marine ecosystem in Belize. Volunteers work alongside Marine Biologists to gather data, conduct surveys and remove invasive species.", price: 750, start_date: 2019-8-1, location_id: 1, category_id: 1, organization_id: 1, available_spots: 10, img_url: "belize_proj_image.jpg"},
{name: "Teaching in Belmopan", description: "As a teaching volunteer, you will be placed in a nursery, primary or secondary school where you will be working alongside local teachers. Typical subjects taught at the schools include English, Math, Sports, Science, History, Music and Social Studies. Students can range in age from 3 to 20 years old, depending on the school in which you are placed.", price: 500, start_date: 2019-8-1, location_id: 1, category_id: 6, organization_id: 1, available_spots: 15, img_url: "teach_belmopan_image.jpg"},
{name: "Women’s Education in Belmopan", description: "Your work will focus primarily on education and teaching English, and sometimes French. Other tasks can sometimes include sewing, computer training, offering academic support for girls, and occasional childcare.", price: 600, start_date: 2019-8-1, location_id: 1, category_id: 4, organization_id: 3, available_spots: 12, img_url: "womens_ed_belmopan_image.jpg"},
{name: "Childcare in Kampala", description: "Volunteers on the Childcare project work with children from disadvantaged neighborhoods through organizing and engaging in activities to entertain the children and help develop their cognitive skills. Volunteers have the opportunity to design daily activities for the children, incorporating teaching basic English, physical development activities (music and dance, theatre, toys and games), and arts and craft (painting and drawing).", price: 650, start_date: 2019-8-1, location_id: 4, category_id: 3, organization_id: 2, available_spots: 12, img_url: "uganda_proj_image.jpg"},
{name: "Childcare in Rabat", description: "Volunteers on the Childcare project work with children from disadvantaged neighborhoods through organizing and engaging in activities to entertain the children and help develop their cognitive skills. Volunteers have the opportunity to design daily activities for the children, incorporating teaching basic English, physical development activities (music and dance, theatre, toys and games), and arts and craft (painting and drawing).", price: 580, start_date: 2019-8-1, location_id: 3, category_id: 3, organization_id: 2, available_spots: 12, img_url: "childcare_rabat_image.jpg"},
{name: "Sports Development in Phnom Penh", description: "In addition to fostering teamwork and building social skills, the involvement in physical activity helps to alleviate delinquency among young people in developing communities. Volunteers on the Sports Development project contribute to the growth of sport through education and coaching of sports, such as rugby, basketball, volleyball, handball, soccer and athletics.", price: 600, start_date: 2019-8-1, location_id: 2, category_id: 6, organization_id: 3, available_spots: 15, img_url: "gili_kids.jpg"},
{name: "Teaching English in Cambodia", description: "By Teaching English, you will play an important role in helping increase opportunities for children and adults to learn the English language, which is a requirement for employment in their futures.", price: 580, start_date: 2019-8-1, location_id: 2, category_id: 2, organization_id: 3, available_spots: 18, img_url: "teach_english_cambodia_image.jpg"},
{name: "Coral Reef Monitoring in the Mexican Yucatan", description: "Coral reefs are vital, not only to the health of shallow seas, but to the global environment.  In this project, you will join a team monitoring and maintaining the health of dive sites along the MesoAmerican Barrier Reef, the second largest barrier reef in the world.  In addition to performing monitor dives everyday, you'll share a primitive, eco-friendly living situation with the staff and other volunteers, help keep the beaches free of trash and debris, and join in community service trips to the nearby town of Punta Allen.", price: 3000, start_date: 2019-9-16, location_id: 1, category_id: 1, organization_id: 4, available_spots: 15, img_url: "mexico_piggyback.jpg"},
{name: "Shark Conservation in Indonesia", description: "Located near tourist hotspot, Bali, the Gili Islands are a favorite diving area.  At the same time, the second largest shark market in the world is located around the corner on the island of Lombok.  The Gili Shark Conservation group is dedicated to recording the shark population and health around the Gilis, where reef sharks come to breed and raise their young.  The information gathered by our team will be presented to the Indonesian government in hopes of establishing the first protected shark nursery in the country.  In addition to these efforts, you will be a part of recycling programs and community outreach on this tiny paradise.", price: 1000, start_date: 2020-3-3, location_id: 2, category_id: 1, organization_id: 5, available_spots: 6, img_url: "gili_shark_cave.jpg"},
{name: "Thailand Sea Turtle Research & Conservation", description: "Although sea turtles have lived on earth for over 130 million years, the seven species of marine turtles are in serious global decline. This program aims to combat this, focusing on sea turtle research and ongoing conservation initiatives in Thailand.", price: 550, start_date: 2019-8-1, location_id: 2, category_id: 1, organization_id: 4, available_spots: 20, img_url: "gili_turtle_bruv.jpg"},
{name: "Wildlife Conservation & Research in South Africa", description: "This program aims to give students a holistic experience and to provide the necessary skills for living and working in a remote field location. This includes everything from managing a camp, safety considerations and awareness, orientation, 4x4 driving and so much more. The course also offers training in fauna and flora identification, animal behaviour and fundamental field techniques to collect data. This aims to enable students to work safely and effectively in the field while having a better understanding of species in the context of their environment.
Through hands-on experience, game drives and lectures, students will have the opportunity to develop their bush and field biologists skills and to elevate their understanding and skills as a field biologist.", price: 800, start_date: 2019-10-1, location_id: 2, category_id: 1, organization_id: 4, available_spots: 18, img_url: "mexico_coati.jpg"},
{name: "Greece Sea Turtle Conservation Internship", description: "Travel to the beautiful Kyparissia Bay in the southern Peloponnese of Greece and discover the local area whilst you learn more about the critical conservation efforts of these turtles. Our interns are based in Giannitsochori, renowned one of the most important Loggerhead sea turtle nesting areas in the whole of Greece. Here they will have a unique opportunity to truly immerse themselves in protecting the environment and developing their own skills. The project is geared at providing long term benefits to the local environment and community.

Interns will engage in daily morning surveys to record nesting activity and protect turtle nests against predation by mammals and inundation by sea water. Furthermore, interns will inform overseas visitors and the local community about the conservation of these turtles. All our internships are geared at developing your leadership skills, allowing you to develop a variety of soft and hard skills that will boost your marine conservation experience. In Giannitsochori we work to educate the local community and visitors as to conservation efforts being conducted around the turtle breeding. We have a group of highly experienced field staff who will work with you to develop and improve your skill and in so doing giving you a fantastic starting point for developing your conservation career. GVI aslo offers the opportunity for you to gain additional leadership qualifications and experience in a conservation environment.", price: 600, start_date: 2019-7-3, location_id: 3, category_id: 1, organization_id: 4, available_spots: 9, img_url: "gili_turtle.jpg"},

])
