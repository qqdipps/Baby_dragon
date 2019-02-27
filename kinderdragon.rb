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
end

KinderDragon.new("Dragoon").class_roster
