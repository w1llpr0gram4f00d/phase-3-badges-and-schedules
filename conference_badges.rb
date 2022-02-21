# Write your code here.
def badge_maker name
    "Hello, my name is #{name}."
end

def batch_badge_creator names
    names.map do |name|
        badge_maker(name)
    end
end

def assign_rooms names
    room = 0
    names.map do |name|
        room += 1
        "Hello, #{name}! You'll be assigned to room #{room}!"
    end
end

def printer attendees
    attendees.map do |attendee|
        puts badge_maker(attendee)
    end

    assign_rooms(attendees).map do |message|
        puts message
    end
end