class Dragon
  def initialize(name)
    @name = name
    @asleep = false
    @stuff_in_belly = 10 # baby is full
    @stuff_in_intestine = 0 # baby doesn't need to go
    puts "#{@name} is born."
  end

  def feed
    puts "You feed #{@name}."
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts "You walk #{@name}."
    @stuff_in_intestine = 0
    passage_of_time
  end

  def put_to_bed
    puts "You put #{@name} to bed."
    @asleep = true
    3.times do
      if @asleep
        passage_of_time
      end
      # since passage_of_time might wake up the baby,
      # check to see if they are still asleep
      if @asleep
        puts "#{@name} snores, filling the room with smoke."
      end
    end
    if @asleep
      @asleep = false
      puts "#{@name} wakes up slowly."
    end
  end

  def toss
    puts "You toss #{@name} up into the air."
    puts "#{@name} giggles, which singes your eyebrows."
    passage_of_time
  end
end
