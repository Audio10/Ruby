class Persona < Struct.new(:name, :age)  
  def self.suggested_names
    ["Pepe", "Pepito", "Sutano"]
  end

end

persona = Persona.new("Pepe", 14)
puts persona.name
puts persona.age
puts Persona.suggested_names