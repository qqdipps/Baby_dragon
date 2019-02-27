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
        sleep 0.1
        dragon1.health -= 1
      else
        puts "OUCH.. #{dragon1.name} gnawed on #{dragon2.name}'s baby tail!"
        sleep 0.1
        dragon2.health -= 1
      end
    end
    print dragon1.health > dragon2.health ? "\n#{dragon1.name}" : "\n#{dragon2.name}"
    puts " is a bully. Bad Baby Dragon!!"
    print dragon1.health < dragon2.health ? "#{dragon1.name}" : "#{dragon2.name}"
    puts " needs a bandaid and a hug"
  end
end

dragoon = KinderDragon.new("Dragoon")
dragoon.class_roster
attack_dragons = dragoon.dragons.sample(2)
dragoon.attack(attack_dragons[0], attack_dragons[1])
