class API

  def self.poke
    url = "https://pokeapi.co/api/v2/"
    binding.pry
    uri = URI(url)
    response = Net::HTTP.get(uri)
    hash = JSON.parse(response)

  end

end
