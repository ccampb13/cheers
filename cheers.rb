puts "What's your name?"
name = gets.chomp

if name.empty?
  puts "You must enter your name!"
  exit
end

puts "Your name is #{name}"
name.each_char do |char|
  if(char =~ /[aefhilmnorsxAEFHILMNORSX]/)
    puts "Give me an... #{char}"
  else
    puts "Give me a... #{char}"
  end
end
