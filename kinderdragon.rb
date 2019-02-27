require_relative "behavior"

class KinderDragon
    attr_reader :name, :dragons
    def initialize(name,)
        @name = name
        @dragons = []
        @dragons << BabyDragon.new("Pfeiffer", "brown", "jumps and spins in the air (so fly) and eats live birds (so fierce).")
        @dragons << BabyDragon.new("Nightfury", "green")
    def add_dragon(name)
    @dragons << name
    end

end
