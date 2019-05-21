def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  attendees.map{|name| badge_maker(name)}
end

def assign_rooms(attendees)
  attendees.each_with_index.map do |name, index|
    "Hello, #{name}! You'll be assigned to room #{index+1}!"
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
