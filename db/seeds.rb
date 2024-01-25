puts "Cleaning database..."
Flat.destroy_all

puts "Creating flats..."

flats_data = [
  {
    name: 'Light & Spacious Garden Flat London',
    address: '10 Clifton Gardens London W9 1DT',
    description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
    price_per_night: 75,
    number_of_guests: 3
  },
  {
    name: 'Chic Central Apartment',
    address: '45 Oxford Street, London, United Kingdom',
    description: 'Experience the heart of London in this stylish apartment. Located on Oxford Street, youll be steps away from iconic landmarks, shopping, and vibrant nightlife.',
    price_per_night: 180,
    number_of_guests: 2
  },
  {
    name: 'Riverside Penthouse with Views',
    address: '12 Thames Quay, London, United Kingdom',
    description: 'Enjoy breathtaking views of the River Thames from this luxurious penthouse. With modern amenities and a spacious terrace, this riverside retreat offers a unique London experience.',
    price_per_night: 300,
    number_of_guests: 4
  },
  {
    name: 'Modern Shoreditch Loft',
    address: '78 Camden High Street, London, United Kingdom',
    description: 'Immerse yourself in the eclectic energy of Camden in this cosy townhouse. Close to markets, live music venues, and trendy cafes, it is the perfect base for exploring Londons alternative scene.',
    price_per_night: 150,
    number_of_guests: 3
  },
  {
    name: 'Light & Spacious Garden Flat London',
    address: '23 Curtain Road, London, United Kingdom',
    description: 'Stay in the heart of Shoreditch in this modern loft. With exposed brick walls and contemporary design, this vibrant area is known for its art scene, nightlife, and eclectic street food.',
    price_per_night: 220,
    number_of_guests: 4
  },
  {
    name: 'Kensington Townhouse with Garden',
    address: '34 Kensington Gardens, London, United Kingdom',
    description: 'Experience the elegance of Kensington in this townhouse with a private garden. Close to museums and upscale shopping, this property combines luxury with a peaceful retreat.',
    price_per_night: 280,
    number_of_guests: 6
  }
]

flats_data.each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end

puts 'Finished!'
