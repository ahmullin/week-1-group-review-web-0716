## QUESTION 1
require 'pry'



def pokemon
pokemon = [
  {
    "id": 1,
    "name": "bulbasaur",
    "base_experience": 64,
    "height": 7,
    "is_default": true,
    "order": 1,
    "weight": 69,
    "abilities": [
        {
            "is_hidden": true,
            "slot": 3,
            "ability": {
                "name": "chlorophyll",
                "url": "http://pokeapi.co/api/v2/ability/34/"
            }
        }
    ]
},
{
  "id": 3,
  "name": "venesaur",
  "base_experience": 50,
  "height": 10,
  "is_default": true,
  "order": 1,
  "weight": 90,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "fire",
              "url": "http://pokeapi.co/api/v2/ability/38/"
          }
      }
  ]
},
{
  "id": 2,
  "name": "pikachu",
  "base_experience": 60,
  "height": 4,
  "is_default": true,
  "order": 1,
  "weight": 37,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "lightning",
              "url": "http://pokeapi.co/api/v2/ability/30/"
          }
      }
  ]
}
]
end

  def get_url
    result = get_pokemon_hash[:abilities][0][:ability][:url]
    binding.pry
  end



  def get_pokemon_hash
    pokemon.detect do |hash|
      hash[:name] == "bulbasaur"
      # hash[:abilities][0][:ability][:url]
      end
  end

  def hash_getter
    pokemon.select do |hash|
      hash[:base_experience] > 40
    end
  end


  def first_base_over_forty
    hash_getter[0][:name]
  end

  def all_base_over_forty
    hash_getter.collect do |hash|
      hash[:name]
    end
  end

  def all_names
    pokemon.collect do |hash|
      hash[:name]
    end
  end



first_base_over_forty
get_url






# How would you get the url for Bulbasaur's ability?
# How would you return the first pokemon with base experience over 40?
# How would you return ALL OF THE pokemon with base experience over 40? (Gotta catch em all)
# How would you return an array of all of the pokemon's names?
# How would you determine whether or not the pokemon array contained any pokemon with a weight greater than 60?
#  whatever method you use should return true if there are any such pokemon, false if not.
