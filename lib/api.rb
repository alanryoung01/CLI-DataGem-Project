class API

  def self.pokemon
    url = "https://pokeapi.co/api/v2/pokemon"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    hash = JSON.parse(response)

    pokemon_array = hash["results"]

    pokemon_array.each do |poke_hash|
        pokemon = Pokemon.new
        pokemon.name = poke_hash["name"]
        pokemon.url = poke_hash["url"]
    end
    binding.pry
  end

end
