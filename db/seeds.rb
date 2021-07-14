puts "Deleting users..."
User.destroy_all
CityGuide.destroy_all

puts "Creating users..."
bill_dunphey = User.create(name: "Bill Dunphey")
jennifer_brown = User.create(name: "Jennifer Brown")
john_walter = User.create(name: "John Walter")
happy_clark = User.create(name: "Happy Clark")
lindsey_kenworth = User.create(name: "Lindsey Kenworth")

puts "Creating cities..."
city_data = [
    {
       name: "Los Angeles",
       image_url: "https://readcereal.com/wp-content/uploads/2019/11/Quinta-da-Corte-landscape-21-1455x935.jpg",
       travel_info: "A seasonal essay.",
       art: "The delicate weavings of Rachel DuVall combine graphic compositions and subtle textures.",
       design: "Oki Sato, the founder and chief designer of Nendo, discusses design and life in Tokyo.",
       style: "Mariah Nielson of Permanent Collection and sculptor Simone Bodmer-Turner discuss their collaboration on the Muse Earrings – a reproduction of a pair Nielson’s father, JB Blunk, gave her mother in the 1970s.",
       favorited_by: 1
    },
    {
        name: "Denver",
       image_url: "https://readcereal.com/wp-content/uploads/2020/09/Kepler_landscape-7.jpg",
       travel_info: "Cold and brown.",
       art: "Mountains and elk galore!",
       design: "Ah yes very interesting",
       style: "Mariah Nielson of Permanent Collection and sculptor Simone Bodmer-Turner discuss their collaboration on the Muse Earrings – a reproduction of a pair Nielson’s father, JB Blunk, gave her mother in the 1970s.",
       favorited_by: 1
    },
    {
        name: "New York",
       image_url: "https://readcereal.com/wp-content/uploads/2019/05/University-arms_landscacpe3_edit-1455x970.jpg",
       travel_info: "Honk honk",
       art: "Post-postmodern",
       design: "It's there",
       style: "Tall buildings",
       favorited_by: 1
    },
    {
        name: "Miami",
       image_url: "https://readcereal.com/wp-content/uploads/2018/01/journal_casablanca9.jpg",
       travel_info: "Hot",
       art: "Miami is art itself",
       design: "Never been",
       style: "I imagine very chic",
       favorited_by: 1
    },
    {
        name: "Chicago",
       image_url: "https://readcereal.com/wp-content/uploads/2018/02/peninsula_landscape.jpg",
       travel_info: "Denver x New York",
       art: "The delicate weavings of Rachel DuVall combine graphic compositions and subtle textures.",
       design: "Oki Sato, the founder and chief designer of Nendo, discusses design and life in Tokyo.",
       style: "Mariah Nielson of Permanent Collection and sculptor Simone Bodmer-Turner discuss their collaboration on the Muse Earrings – a reproduction of a pair Nielson’s father, JB Blunk, gave her mother in the 1970s.",
       favorited_by: 1
    },
    {
        name: "D.C.",
       image_url: "https://readcereal.com/wp-content/uploads/2017/12/Berkeley_landscape5.jpg",
       travel_info: "A seasonal essay.",
       art: "The delicate weavings of Rachel DuVall combine graphic compositions and subtle textures.",
       design: "Oki Sato, the founder and chief designer of Nendo, discusses design and life in Tokyo.",
       style: "Mariah Nielson of Permanent Collection and sculptor Simone Bodmer-Turner discuss their collaboration on the Muse Earrings – a reproduction of a pair Nielson’s father, JB Blunk, gave her mother in the 1970s.",
       favorited_by: 1
    }
]

    city_guides = city_data.map{|attributes| CityGuide.create(attributes)}

puts "Done!"
pry.start