require_relative "behavior"

class KinderDragon
  attr_reader :name, :dragons

  def initialize(name)
    @name = name
    @dragons = []
    @dragons << BabyDragon.new("Pfeiffer", "yellow")
    @dragons << BabyDragon.new("Nightfury", "green")
  end

  def add_dragon(dragon_instance)
    @dragons << dragon_instance
  end

  def class_roster
    puts "#{name}'s Class Roster: "
    dragons.each_with_index do |dragon, i|
      puts "#{i + 1}. #{dragon.name}"
    end
  end

  def attack(dragon1, dragon2)
    while dragon1.health > 0 || dragon2.health > 0
      random_num = rand(1..2)
      if random_num == 1
        puts "OUCH.. #{dragon2.name} singed #{dragon1.name}'s baby eyelashes!"
        dragon1.health -= 1
      else
        puts "OUCH.. #{dragon1.name} gnawed on #{dragon2.name}'s baby tail!"
        dragon2.health -= 1
      end
    end
    print dragon1.health > dragon2.health ? "#{dragon1.name}" : "#{dragon2.name}"
    puts "is a bully. Bad Baby Dragon!!"
  end
end

dragoon = KinderDragon.new("Dragoon").class_roster

# attack_dragons = dragoon.dragons.sample(2)
# dragoon.attack(attack_dragons[0], attack_dragons[1])
