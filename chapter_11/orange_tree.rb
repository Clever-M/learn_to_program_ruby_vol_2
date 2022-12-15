class OrangeTree
  attr_reader :height, :oranges

  def initialize
    @age     = 0
    @height  = 0
    @oranges = 0
  end

  def one_year_passes
    if @age > 150
      puts 'The tree is dead :-('
      @oranges = 0
      return
    end
    add_year_to_tree
    grow_tree if height < 30

    produce_fruit if @age > 4
  end

  def pick_an_orange
    @oranges -= 1 unless @oranges.zero?
  end

  private

  def produce_fruit
    @oranges += 10 if @age < 10
    @oranges += 30
  end

  def add_year_to_tree
    @age += 1
  end

  def grow_tree
    @height += 6
  end
end
