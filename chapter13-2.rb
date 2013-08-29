class OrangeTree

  def initialize
    @height = 0
    @age = 0
    @oranges = 0
  end

  def height
    return @height
  end

  def one_year_passes
    @height += 10
    @age += 1

    if @age > 5
      @oranges += 1
    end

    if @oranges > 0
      @oranges -= 1
    end

  end

  def count_oranges
    @oranges
  end

  def pick_an_orange
    @oranges -= 1
    return 'That was a delicious orange!'
  end

end

