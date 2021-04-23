class PetHistory < ApplicationRecord
  belongs_to :pet

  #Hash with all pet names in the database
  def self.all_pet_names_hash   
    value = Pet.pluck(:id)
    key = []
    value.each do |id|
      key.append(Pet.find(id).name)
    end

    hash = Hash[key.zip(value)]
    return hash
  end

  def self.hello
    puts 'hello world'
  end

end
