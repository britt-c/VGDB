require "faker"

100.times do |number|
    Videogame.create({
    body: Faker::Game.title
  })
end

