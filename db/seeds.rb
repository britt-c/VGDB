require "faker"

Videogame.destroy_all

100.times do |number|
    Videogame.create({
    body: Faker::Game.title
  })
end

