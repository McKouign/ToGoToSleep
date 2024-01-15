Booking.destroy_all
Room.destroy_all
Hotel.destroy_all
User.destroy_all



user = User.create!(
  email: 'azerty@gmail.com',
  password: 'azerty123!'
)


hotel_1 = Hotel.create!(
  name: 'Hotel Splendide',
  address: '123 boulevard de la joie'
)

hotel_2 = Hotel.create!(
  name: 'Auberge Étoilée',
  address: '456 Avenue Prestige'
)

hotel_3 = Hotel.create!(
  name: 'Manoir Charmant',
  address: '789 Chemin Enchanté'
)

room_1 = Room.create(price_per_night: 15, capacity: 2, hotel: hotel_1, photo: "chambre1.jpg")
room_3 = Room.create(price_per_night: 20, capacity: 4, hotel: hotel_2, photo: "chambre3.jpg")
room_4 = Room.create(price_per_night: 20, capacity: 2, hotel: hotel_2, photo: "chambre4.jpg")
room_5 = Room.create(price_per_night: 25, capacity: 2, hotel: hotel_2, photo: "chambre5.jpg")
room_6 = Room.create(price_per_night: 20, capacity: 4, hotel: hotel_3, photo: "chambre6.jpg")
room_7 = Room.create(price_per_night: 20, capacity: 2, hotel: hotel_3, photo: "chambre7.jpg")
room_8 = Room.create(price_per_night: 25, capacity: 2, hotel: hotel_3, photo: "chambre8.jpg")
room_9 = Room.create(price_per_night: 40, capacity: 4, hotel: hotel_3, photo: "chambre9.jpg")

booking_1 = Booking.create(user: user, room: room_1, starts_at: DateTime.new(2023,12,17,17,00,00), ends_at: DateTime.new(2023,12,18,17,00,00))