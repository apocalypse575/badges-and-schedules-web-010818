def badge_maker(names)
  "Hello, my name is #{names}."
end

def batch_badge_creator(names)
  list = []
  counter = 0
  loop do
    list.push("Hello, my name is #{names[counter]}.")
        counter += 1
    if counter >= names.size
      break
    end
  end
  return list
end

def assign_rooms(names)
  list = []
  counter = 0
  loop do
    list.push("Hello, #{names[counter]}! You'll be assigned to room #{counter + 1}!")
    counter += 1
    if counter >= names.size
      break
    end
  end
  return list
end

def printer(names)
  badges = batch_badge_creator(names)
  badges.each { |badge| puts badge }

  rooms = assign_rooms(names)
  rooms.each { |room| puts room }
end
