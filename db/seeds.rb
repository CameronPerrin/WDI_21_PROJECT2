# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

["categories", "users", "items", "wishlists", "carts"].each do |table_name|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table_name} RESTART IDENTITY CASCADE")
end

category1 = Category.create!(name: "Futuristic")
category2 = Category.create!(name: "Medieval")
category3 = Category.create!(name: "Fantasy")
category4 = Category.create!(name: "Sexy")
category5 = Category.create!(name: "Mens")
category6 = Category.create!(name: "Womens")
category7 = Category.create!(name: "Misc.")
category8 = Category.create!(name: "Light")
category9 = Category.create!(name: "Medium")
category10 = Category.create!(name: "Heavy")
category11 = Category.create!(name: "Plate")
category12 = Category.create!(name: "Chain")
category13 = Category.create!(name: "Leather")
category14 = Category.create!(name: "Roman")
category15 = Category.create!(name: "Modern")
category16 = Category.create!(name: "Anti-Ballistic")
category17 = Category.create!(name: "Metallic")
category18 = Category.create!(name: "Electronic")
category19 = Category.create!(name: "Exoskeleton")
category20 = Category.create!(name: "Mech")
category21 = Category.create!(name: "Cloth")
category22 = Category.create!(name: "Plastic")
category23 = Category.create!(name: "Wood")

user1 = User.create!(
  username:"Day Man",
  full_name:"Charlie Kelly",
  email:"kelly.charlie@gmail.com",
  password:"password", 
  password_confirmation:"password",
  user_image: File.open(File.join(Rails.root, '/db/images/user_images/helios.jpg'))
)

user2 = User.create!(
  username:"xX_NiKe22_Xx",
  full_name:"Jimithon Slim",
  email:"xXslimjim22Xx@gmail.com",
  password:"password", 
  password_confirmation:"password",
  user_image: File.open(File.join(Rails.root, '/db/images/user_images/jimithon.jpg'))
)

user3 = User.create!(
  username:"pass_secret_af",
  full_name:"Adamion Rodriguez",
  email:"adami@gmail.com",
  password:"password", 
  password_confirmation:"password",
  user_image: File.open(File.join(Rails.root, '/db/images/user_images/adamion.jpg'))
)

item1 = Item.create!(
  name: "Mjolnir Mk. IV",
  user_id: 1,
  cost: 490000,
  item_image: File.open(File.join(Rails.root, '/db/images/item_images/master-chief.png')),
  description: "Developed parallel to the SPARTAN-II program by the Office of Naval Intelligence's Materials Group, the MJOLNIR powered assault armor was a radical redesign from previous large bulky exoskeletons, streamlining their design into a compact suit of armor practical for use in the field. The brainchild of Dr. Catherine Halsey, the MJOLNIR armor represented her vision of creating a slim powered exoskeleton capable of taking full advantage of the physical capabilities of a SPARTAN-II. Planning and research for the revised MJOLNIR battlesuit began in 2511 alongside the SPARTAN-II project; over the course of fourteen years its development gave birth to many new technologies that would later see major adoption throughout the military. MJOLNIR is a sealed system capable of extra-vehicular activity or operations in toxic atmosphere and vacuum. It is hardened against electromagnetic pulse and radiation, and has filters that are completely effective at removing toxins and bacteria from local atmosphere. The armor's outer shell is composed of a multilayer alloy of remarkable strength which has been augmented with a refractive coating capable of dispersing a limited amount of Covenant energy weapon impact. Underneath the alloy shell is a thick black armored titanium nanocomposite bodysuit. Underneath that layer is a gel-filled layer. The gel layer regulates temperature and can reactively change its density in a few seconds. The inner skinsuit is made of a moisture-absorbing synthetic material linked to an environmental control computer and the occupant's special-issue neural interface. This network translates electrochemical signals to digital code and routes them through an interface connection at the rear of the skull. Through this interface the user's thoughts commands the armor's movement and weapons and input from the on board sensors comes directly to the user's mind. The synthesis of machine and mind is so fast that it is almost impossible to chart the reaction time. Unfortunately, the system is so reactive that normal human beings cannot use the suit without injuring or even killing themselves. Only humans who have undergone carbide ceramic ossification, a bone-strengthening treatment shared by the Spartans, have been shown to safely operate the suit. Sandwiched between the external armor and the internal padding is the most devastating weapon the suit carries: a layer of polymerized lithium niobocene, a form of reactive metal liquid crystal. Woven by molecular tools into a super-dense layer, this layer is amorphous, yet it amplifies force, doubling lifting capability and increases reaction time by a factor of five. Such technology did not exist when work began on the Mark I prototypes. Because of these advancements the design is more akin to an actual suit of armor as opposed to a powered exoskeleton; the user moves the suit and in return the suit moves the user. This allows for an highly compact design when compared to other combat systems. The armor contains numerous features including an integrated computer system which continuously monitors weapons, biological functions, and a limited function motion sensor system. The suit also contains a built-in rebreather system that can provide air for up to 90 minutes. The suit's helmet also features imaging and video recording, and thermal sensors among other features. In its final phase the MJOLNIR armor weighs half a short ton (907 kilograms), and is currently the most advanced piece of tactical military hardware in human hands.",
)

item1.categories << category1
item1.categories << category5
item1.categories << category10
item1.categories << category11
item1.categories << category16
item1.categories << category17
item1.categories << category18
item1.categories << category19

item2 = Item.create!(
  name: "Gold Plated Armor",
  user_id: 2,
  cost: 64200.95,
  item_image: File.open(File.join(Rails.root, '/db/images/item_images/gold-armor.png')),
  description: "This GOLD plated armor is not only the most extravagant armor on all of arkea, but is also functional. This armor is guaranteed to last you for 30 days or you can get your money back. This GOLD plated armor can withstand the heaviest blows and is meant for only the richest of kings. Order NOW for free 3 day shipping! use the coupon code GOLD for 10%/ off at checkout",
)

item2.categories << category2
item2.categories << category4
item2.categories << category5
item2.categories << category10
item2.categories << category11
item2.categories << category17

item3 = Item.create!(
  name: "Storm Trooper Armor",
  user_id: 3,
  cost: 19.77,
  item_image: File.open(File.join(Rails.root, '/db/images/item_images/storm-trooper.png')),
  description: "A stormtrooper, disparagingly referred to as a buckethead by dissenting citizens, was a member of the elite shock troops in the Imperial Army, placed under the Stormtrooper Corps, the land-based forces of the Galactic Empire. They were particularly distinguished by their loyalty to Emperor Sheev Palpatine, the founder of the Empire, and were reputedly incapable of betraying either him or the Imperial regime. Stormtroopers wore white armor over a black body glove which, in addition to creating an imposing image, was outfitted with a wide array of survival equipment and temperature controls that allowed its wearer to survive in most environments, but offered limited protection against blaster bolts. Along with standard stormtroopers, there were several specialized subgroups, including, but not limited to, the scout troopers, snowtroopers, and the spacetroopers.",
)

item3.categories << category1
item3.categories << category5
item3.categories << category8
item3.categories << category11
item3.categories << category18
item3.categories << category22
item3.categories << category21

item4 = Item.create!(
  name: "Brazilian Paper Armor",
  user_id: 2,
  cost: 549.99,
  item_image: File.open(File.join(Rails.root, '/db/images/item_images/paper-armor.png')),
  description: "This extravagant armor is only for the bold. Only meant for the best of warriors. In and out of battle this armor is stylish yet effective as long as you aren't be hit. The paper is made from fine brazillian wood that has been dryed cured and pressed using hand crank wheels for complete authenticity. This tear resistant paper is the same paper used by the ancient egyptians for writing and battle.* For only 549.99 USD this suit can be yours in no time.




    *this is not fact and is open to interpretation",
)

item4.categories << category2
item4.categories << category4
item4.categories << category5
item4.categories << category6
item4.categories << category7
item4.categories << category8
item4.categories << category11
item4.categories << category16


item5 = Item.create!(
  name: "Titan Fall Mech",
  user_id: 1,
  cost: 2499000,
  item_image: File.open(File.join(Rails.root, '/db/images/item_images/titanfall-mech.png')),
  description: "Owners can enter a Titan from the front, from behind, and from above. Depending on the owner's position, the owner will either be picked up by the Titan and placed in the safety of the cockpit or enter the Titan through a hatch. owners see the outside world through a segmented display and can exit or eject from the Titan at any time. When the owner is absent from the cockpit, Titans are presided over by an AI and can be set to either follow the owner or guard a position, engaging enemy targets automatically. Titans are able to wield a multitude of weaponry and possess the ability to dash, sprint, and sidestep. Titans are also capable of melee attacking without the use of a special weapon and can rip the owner out of doomed Titans. After taking enough damage, the Titan will be doomed. Before his Titan is destroyed, the owner has the option to pull an eject lever. Owners will then have to wait another few minutes before buyin another one.",
)

item5.categories << category1
item5.categories << category5
item5.categories << category6
item5.categories << category10
item5.categories << category16
item5.categories << category17
item5.categories << category18
item5.categories << category19
item5.categories << category20

