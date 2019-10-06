locations = Location.create([{name: "Caribbean", img_url: "mexico_beach1.jpg", description: "Belize is bordered on the northwest by Mexico, on the east by the Caribbean Sea, and on the south and west by Guatemala. It has an area of 22,970 square kilometres (8,867 sq mi) and a population of 387,879 (2017). Its mainland is about 180 mi (290 km) long and 68 mi (110 km) wide."},
{name: "Southeast Asia", img_url: "gili_bali_sunset.jpg", description: "Situated on the Indochinese peninsula, Cambodia is bordered by Thailand and Laos on the north and Vietnam on the east and south. The Gulf of Thailand is off the western coast. The size of Missouri, the country consists chiefly of a large alluvial plain ringed by mountains with the Mekong River to the east."},
{name: "Europe", img_url: "greece.jpg", description: "Morocco has Atlantic and Mediterranean coastlines, a rugged mountain interior and a history of independence not shared by its neighbours. Its rich culture is a blend of Arab, Berber, European and African influences. Morocco was a French protectorate from 1912 to 1956, when Sultan Mohammed became king."},
{name: "Africa", img_url: "africa.jpg", description: "Uganda is a landlocked country in East Africa whose diverse landscape encompasses the snow-capped Rwenzori Mountains and immense Lake Victoria. Its abundant wildlife includes chimpanzees as well as rare birds. Remote Bwindi Impenetrable National Park is a renowned mountain gorilla sanctuary. Murchison Falls National Park in the northwest is known for its 43m-tall waterfall and wildlife such as hippos."}])

users = User.create([{name: "Jill Smith", age: 23, avatar: Faker::Avatar.image, bio: "I love to travel and see the world. When I'm not blogging and taking photos of my travels, I'm reliving them on social media.", skills: "photography, teaching English", username: 'user1', password: "asdf", password_confirmation: "asdf"},
{name: "John Doe", age: 54, avatar: Faker::Avatar.image, bio: "Recently retired from the medical field and looking forward to seeing more of the world. I speak English, German, and Spanish.", skills: "Speak multiple languages, medical skills", username: 'user2', password: "asdf", password_confirmation: "asdf"},
{name: "Hildie Fitzgerald", avatar: Faker::Avatar.image, age: 48, bio: "Elementary school math teacher and world traveller. Just looking for a new way to make a difference.", skills: "Experienced teacher, certified diver, fast learner.", username: 'user3', password: "asdf", password_confirmation: "asdf"}])

organizations = Organization.create([{name: "Go Abroad", img_url: "goabroad_logo.jpeg", description: "It has always been our mission to change lives through meaningful travel, one destination and one experience at a time. We believe that travel is the key to individuals attaining a broader perspective of the world, and that the world is a better place when people have a deeper understanding and greater empathy toward all individuals and cultures.

Launched and conceptualized in 1997, GoAbroad first set out to fill the information gap between students with a desire to travel abroad and companies offering international programs. As the travel industry has evolved and access to opportunities to see the world has grown, our mission has transformed into something much greater than building a bridge between travelers and organizations: we’ve developed and evolved over the past two decades to meet the ever-changing needs of travelers, positioning ourselves as the resource for meaningful travel around the world.

Today, we continue to work tirelessly to create new resources and share international travel opportunities, because we believe anyone can find their own way to see the world.", website: "https://www.goabroad.com/volunteer-abroad"},
  {name: "International Volunteer HQ",  img_url: "IVHQ_logo.png", description: "Volunteer abroad in over 40 destinations with International Volunteer HQ, the world’s leading volunteer travel organization - trusted by more than 100,000 volunteers. With volunteer programs starting from just US$180 for 1 week, you won’t find a more affordable and trustworthy organization for an impactful volunteer vacation, gap year or alternative break.

You can volunteer overseas with IVHQ for durations ranging from 1 week to 24 weeks, with volunteer abroad programs available in Africa, Asia, South America, Central America, North America, Europe, the Caribbean and the Pacific.", website: "https://www.volunteerhq.org/volunteer-abroad-programs/"},
  {name: "United Planet", img_url: "UP-logo.jpg",  description: "Change your world view. Learn and practice important skills. Accelerate your personal growth. Make a positive and important difference in your host community. United Planet works closely with you to plan and implement your Quest, and provides continued support for a customized, immersive, transformative learning experience.
    United Planet offers volunteer abroad opportunities in 20+ countries, immersing you in local culture as you do your part to create a global community.

      We offer the most authentic, most immersive experiences for people who want to do something important.

We are a mission-focused, non-profit organization
We are all about service, making a difference, building a global community.
Our programs emphasize authenticity
Get outside your bubble, jump into a real experience, become a global citizen.
We provide everything you need to succeed
Classes, in-country travel, home stays, meals, work –we are your cultural bridge.
Your safety is our most important concern
From one-on-one assistance before you travel to experienced staff in country, everything is done to ensure your safety and wellbeing.
(your journey here)
Your Quest is personalized to provide the opportunity for genuine, meaningful personal growth.
What we do is meaningful
Your experience will be important, relevant and helpful to the community you serve.", website: "https://www.unitedplanet.org/volunteer-abroad"},
  {name: "GVI", img_url: "GVI-Logo.png", description: "Founded in 1998, GVI runs programs in 21 locations, in 13 countries around the world, each manned by our own staff and aligned to the 17 United Nations Sustainable Development Goals or UN SDGs as well as the objectives of local partners. We welcome participants from all around the world and help facilitate their development into global citizens. This is how we achieve our mission of building a global network of people united by their passion to make a difference.", website: "https://www.gviusa.com/volunteer-abroad/"},
  {name: "Gili Shark Conservation", img_url: "GSC_logo.jpg", description: "Unlike the majority of the world, we are big shark lovers. And living in Indonesia, the center of the Coral Triangle, we should be seeing one of the most diverse collections of sharks found in the world on a daily basis. Yet we don’t. Indonesia is, unfortunately, the largest shark fishing nation in the world. The IUCN states that’s the 1000+ assessed species of cardiligenous fish (sharks, rays, skates,chimearas), 30% are threatened with extinction!

The Gili Shark Conservation Project is an award-winning conservation and data collection program and the first of its kind in the Gili Islands in Indonesia. We want to make a real difference on the three Gili Islands and its marine reserve. To have a real impact on our environment we need your help! We’re situated on the beautiful island Gili Air but we work around all of the Gili islands: Gili Air, Gili Meno, and Gili Trawangan. The goal of our shark research project is not just to raise awareness for shark- and marine conservation but also to assist the local community and helping the Gilis to become a plastic-free paradise!", website: "https://gilisharkconservation.com/"}
])


categories = Category.create([{name: "Wildlife Conservation", description: "You will have the opportunity to join a variety of conservation efforts focused on the protection of terrestrial and marine ecosystems. Volunteers work alongside Biologists to gather data, conduct surveys and remove invasive species.", img_url: "tiger.jpg"},
{name: "Teaching English", description: "By Teaching English, you will play an important role in helping increase opportunities for children and adults to learn the English language, which is a requirement for employment in their futures.", img_url: "hardi-kids.jpg"},
{name: "Childcare", description: "Volunteers on the Childcare project work with children from disadvantaged neighborhoods through organizing and engaging in activities to entertain the children and help develop their cognitive skills. Volunteers have the opportunity to design daily activities for the children, incorporating teaching basic English, physical development activities (music and dance, theatre, toys and games), and arts and craft (painting and drawing).", img_url: "gili_kids.jpg"},
{name: "Women’s Education", description: "Your work will focus primarily on education and teaching English, and sometimes French. Other tasks can sometimes include sewing, computer training, offering academic support for girls, and occasional childcare.", img_url: "womens_ed_belmopan_image.jpg"},
{name: "Sports Development", description: "In addition to fostering teamwork and building social skills, the involvement in physical activity helps to alleviate delinquency among young people in developing communities. Volunteers on the Sports Development project contribute to the growth of sport through education and coaching of sports, such as rugby, basketball, volleyball, handball, soccer and athletics.", img_url: "lombok_sports.jpg"},
{name: "Teaching", description: "As a teaching volunteer, you will be placed in a nursery, primary or secondary school where you will be working alongside local teachers. Typical subjects taught at the schools include English, Math, Sports, Science, History, Music and Social Studies. Students can range in age from 3 to 20 years old, depending on the school in which you are placed.", img_url: "lombok_kids.jpg"}
])


projects = Project.create([{name: "Marine Conservation in Belize", description: "As Marine Conservation volunteer in Belize, you will have the opportunity to join a variety of conservation efforts focused on the protection of the marine ecosystem in Belize. Volunteers work alongside Marine Biologists to gather data, conduct surveys and remove invasive species.", price: 750, start_date: '2019-10-20', location_id: 1, category_id: 1, organization_id: 1, available_spots: 10, img_url: "belize_proj_image.jpg"},

{name: "Teaching in Belmopan", description: "As a teaching volunteer, you will be placed in a nursery, primary or secondary school where you will be working alongside local teachers. Typical subjects taught at the schools include English, Math, Sports, Science, History, Music and Social Studies. Students can range in age from 3 to 20 years old, depending on the school in which you are placed.", price: 500, start_date: '2020-03-10', location_id: 1, category_id: 6, organization_id: 1, available_spots: 15, img_url: "teach_belmopan_image.jpg"},

{name: "Women’s Education in Belmopan", description: "Your work will focus primarily on education and teaching English, and sometimes French. Other tasks can sometimes include sewing, computer training, offering academic support for girls, and occasional childcare.", price: 600, start_date: '2020-05-15', location_id: 1, category_id: 4, organization_id: 3, available_spots: 12, img_url: "womens_ed_belmopan_image.jpg"},

{name: "Childcare in Kampala", description: "Volunteers on the Childcare project work with children from disadvantaged neighborhoods through organizing and engaging in activities to entertain the children and help develop their cognitive skills. Volunteers have the opportunity to design daily activities for the children, incorporating teaching basic English, physical development activities (music and dance, theatre, toys and games), and arts and craft (painting and drawing).", price: 650, start_date: '2019-8-1', location_id: 4, category_id: 3, organization_id: 2, available_spots: 12, img_url: "uganda_proj_image.jpg"},

{name: "Childcare in Rabat", description: "Volunteers on the Childcare project work with children from disadvantaged neighborhoods through organizing and engaging in activities to entertain the children and help develop their cognitive skills. Volunteers have the opportunity to design daily activities for the children, incorporating teaching basic English, physical development activities (music and dance, theatre, toys and games), and arts and craft (painting and drawing).", price: 580, start_date: '2019-8-1', location_id: 3, category_id: 3, organization_id: 2, available_spots: 12, img_url: "childcare_rabat_image.jpg"},

{name: "Sports Development in Phnom Penh", description: "In addition to fostering teamwork and building social skills, the involvement in physical activity helps to alleviate delinquency among young people in developing communities. Volunteers on the Sports Development project contribute to the growth of sport through education and coaching of sports, such as rugby, basketball, volleyball, handball, soccer and athletics.", price: 600, start_date: '2019-8-1', location_id: 2, category_id: 5, organization_id: 3, available_spots: 15, img_url: "kids_sports.jpg"},

{name: "Teaching English in Cambodia", description: "By Teaching English, you will play an important role in helping increase opportunities for children and adults to learn the English language, which is a requirement for employment in their futures.", price: 580, start_date: '2019-8-1', location_id: 2, category_id: 2, organization_id: 3, available_spots: 18, img_url: "teach_english_cambodia_image.jpg"},

{name: "Coral Reef Monitoring in the Mexican Yucatan", description: "Coral reefs are vital, not only to the health of shallow seas, but to the global environment.  In this project, you will join a team monitoring and maintaining the health of dive sites along the MesoAmerican Barrier Reef, the second largest barrier reef in the world.  In addition to performing monitor dives everyday, you'll share a primitive, eco-friendly living situation with the staff and other volunteers, help keep the beaches free of trash and debris, and join in community service trips to the nearby town of Punta Allen.", price: 3000, start_date: '2019-9-16', location_id: 1, category_id: 1, organization_id: 4, available_spots: 15, img_url: "mexico_piggyback.jpg"},

{name: "Shark Conservation in Indonesia", description: "Located near tourist hotspot, Bali, the Gili Islands are a favorite diving area.  At the same time, the second largest shark market in the world is located around the corner on the island of Lombok.  The Gili Shark Conservation group is dedicated to recording the shark population and health around the Gilis, where reef sharks come to breed and raise their young.  The information gathered by our team will be presented to the Indonesian government in hopes of establishing the first protected shark nursery in the country.  In addition to these efforts, you will be a part of recycling programs and community outreach on this tiny paradise.", price: 1000, start_date: '2020-3-3', location_id: 2, category_id: 1, organization_id: 5, available_spots: 6, img_url: "gili_reserve_map.jpg"},

{name: "Thailand Sea Turtle Research & Conservation", description: "Although sea turtles have lived on earth for over 130 million years, the seven species of marine turtles are in serious global decline. This program aims to combat this, focusing on sea turtle research and ongoing conservation initiatives in Thailand.", price: 550, start_date: '2019-8-1', location_id: 2, category_id: 1, organization_id: 4, available_spots: 20, img_url: "gili_turtle_bruv.jpg"},

{name: "Wildlife Conservation & Research in South Africa", description: "This program aims to give students a holistic experience and to provide the necessary skills for living and working in a remote field location. This includes everything from managing a camp, safety considerations and awareness, orientation, 4x4 driving and so much more. The course also offers training in fauna and flora identification, animal behaviour and fundamental field techniques to collect data. This aims to enable students to work safely and effectively in the field while having a better understanding of species in the context of their environment.
Through hands-on experience, game drives and lectures, students will have the opportunity to develop their bush and field biologists skills and to elevate their understanding and skills as a field biologist.", price: 800, start_date: '2019-10-1', location_id: 4, category_id: 1, organization_id: 4, available_spots: 18, img_url: "elephants.jpg"},

{name: "Greece Sea Turtle Conservation Internship", description: "Travel to the beautiful Kyparissia Bay in the southern Peloponnese of Greece and discover the local area whilst you learn more about the critical conservation efforts of these turtles. Our interns are based in Giannitsochori, renowned one of the most important Loggerhead sea turtle nesting areas in the whole of Greece. Here they will have a unique opportunity to truly immerse themselves in protecting the environment and developing their own skills. The project is geared at providing long term benefits to the local environment and community.

Interns will engage in daily morning surveys to record nesting activity and protect turtle nests against predation by mammals and inundation by sea water. Furthermore, interns will inform overseas visitors and the local community about the conservation of these turtles. All our internships are geared at developing your leadership skills, allowing you to develop a variety of soft and hard skills that will boost your marine conservation experience. In Giannitsochori we work to educate the local community and visitors as to conservation efforts being conducted around the turtle breeding. We have a group of highly experienced field staff who will work with you to develop and improve your skill and in so doing giving you a fantastic starting point for developing your conservation career. GVI aslo offers the opportunity for you to gain additional leadership qualifications and experience in a conservation environment.", price: 600, start_date: '2019-7-3', location_id: 3, category_id: 1, organization_id: 4, available_spots: 9, img_url: "gili_turtle.jpg"},

])
