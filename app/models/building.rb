class Building
  attr_accessor :id, :name, :address, :height, :construction_date, :architect
  def initialize(input_options)
    @id = input_options["id"]
    @name = input_options["name"]
    @address  = input_options["address"]
    @height = input_options["height"]
    @construction_date = input_options["construction_date"]
    @architect = input_options["architect"]
  end

  def self.find(input_id)

    response = HTTP.get("http://localhost:3000/api/buildings/#{input_id}")
    building_hash = response.parse
    Building.new(building_hash)

    #return the building instance with the id of input_id
  end

  def method_name
    
  end

end



