def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  attendees.map{|name| badge_maker(name)}
end

# def assign_rooms(attendees)
#   room_assignments = []
#   attendees.each_with_index.map do |name, index|
#     room_assignments << "Hello, #{name}! You'll be assigned to room #{index+1}!"
#   end
#   room_assignments
# end

def assign_rooms(attendees)
  attendees.map.with_index[1] do |name, room_assignment|
  "Hello, #{name}! You'll be assigned to room #{room_assignment}!"
  end
end

def printer(array_names)
  batch_badge_creator(array_names).each do |name|
    puts name
  end
  assign_rooms(array_names).each do |name|
    puts name
  end
end
