require 'date'

puts "What's your name?"
name = gets.chomp

if name.empty?
  puts "You must enter your name!"
  exit
end

puts "Your name is #{name}"
name.each_char do |char|
  if(char =~ /[aefhilmnorsxAEFHILMNORSX]/)
    puts "Give me an... #{char.upcase}"
  else
    puts "Give me a... #{char.upcase}"
  end
end
  puts "#{name.upcase}\'s just GRAND!"

puts "Hey, #{name}, when is your next birthday? (YYYY-MM-DD)"
birthday = gets.chomp
date = Date.parse(birthday)
today = Date.today
next_birthday = Date.new(today.year, date.month, date.day)

  if(next_birthday.mjd <= today.mjd)
    next_birthday = Date.new(today.year + 1, date.month, date.day)
  else
    next_birthday = Date.new(today.year, date.month, date.day)
end

difference = (next_birthday - today).to_i

puts "Awesome! Your birthday is in #{difference} days! Happy Birthday in advance!"
