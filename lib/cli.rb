class CLI
  def start
    puts "Welcome to the Pokemon CLI!"
    API.pokemon
    self.menu
  end

def menu

  puts "Would you like a list of pokemon?"
  puts "Type yes or y to proceed otherwise, type exit to leave."

  user_input = gets.strip.downcase

  if user_input == "yes" || user_input == "y"
    puts "As you wish."
    pokemon_list
    pokemon_choice

    sleep(3)
    puts "\n"

    menu
  else
    puts "\n"
    puts "Very well, goodbye."
  end
end

def pokemon_list
  Pokemon.all.each.with_index(1) do |poke, index|
    puts "#{index}. #{poke.name}"
  end
end

def pokemon_choice
  puts "Enter number corresponding to the pokemon you'd like to learn about."
  index = gets.strip.to_i - 1

  until index.between?(0, Pokemon.all.length - 1)
    puts "Invalid input, choose a valid number."
    index = gets.strip.to_i - 1
  end

  poke_instance = Pokemon.all[index]

  pokemon_details(poke_instance)
  end

  def pokemon_details(poke)
    sleep(1)
    puts "Name: " + poke.name
    puts "Information about " + poke.name + ":" + "\n" + poke.url
  end

end
