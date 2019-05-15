Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number:  '555 555 555',
    category: 'italian'


  },
  {
    name:         'Mushhoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number:  '555 555 555',
    category: 'italian'


  },
  {
    name:         'Delishhoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number:  '555 555 555',
    category: 'italian'


  },
  {
    name:         'Whoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number:  '555 555 555',
    category: 'italian'
    # reviews:        5

  },
  {
    name:         'Badabhoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number:  '555 555 555',
    category: 'italian'
    # reviews:        5

  }
]

  Restaurant.create!(restaurants_attributes)
