class BabyDragon
  attr_reader :thirst_level, :behavior

  def initialize(name, color)
    @name = name
    @thirst_level = 10
    @hungriness_level = 10
    @is_asleep = false
    @color = color
    action = {
      yellow: "Plants sunflowers",
      blue: "Likes to swim",
      green: "Goes for a Hike",
      gray: "Regards everyone with judgamental eyes",
    }
    @behavior = action[color.to_sym]
  end

  def eat
    @hungriness_level = 10
    puts "#{@name} ate like 6 bags of marshmallows (yo...)"

    process_time
  end

  def drinks
    @thirst_level = 10
    puts "#{@name} poured a glass of Rose"

    process_time
  end

  def sleep
    @is_asleep = true
    puts "#{@name} curled up and fell asleep"

    process_time
    process_time
    process_time
  end

  def play
    puts "#{@name} takes out their yo-yo and walks a dog AND THEN JUMPS IN THE AIR AND FLIES"

    process_time
  end

  def do_behavior
    puts "#{@name} #{@behavior.downcase}"
    process_time
  end

  def process_time
    puts "The passage of time moves on..."
    if @thirst_level > 0
      @thirst_level -= 1
    else
      puts "#{@name} is dizzy. OHHH NOOO and trampled the town!!"
    end
    if @hungriness_level > 0
      @hungriness_level -= 1
    else
      if @is_asleep
        @is_asleep = false
        puts "#{@name} woke up!"
      end
      puts "#{@name} is hangry! They EAT YOU!"
      exit
    end
  end
end

dees_dragon = BabyDragon.new("Patricia", "gray")

dees_dragon.eat
dees_dragon.do_behavior
puts dees_dragon.thirst_level
puts dees_dragon.behavior

# dees_dragon.sleep

# 100.times do |i|
#   puts "This is the #{i}th time playing:"
#   dees_dragon.play
# end
