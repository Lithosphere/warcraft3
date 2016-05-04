class Barracks
  def initialize
    @gold = 1000
    @food = 80
  end

  def gold
    @gold
  end

  def food
    @food
  end

  def train_footman
    @gold -= 135
    @food -= 2
    can_train_footman? ? Footman.new : nil
  end

  def train_peasant
    @gold -= 90
    @food -= 5
    can_train_peasant? ? Peasant.new : nil
  end

  def can_train_peasant?
    self.food > 5 && self.gold > 90
  end
  def can_train_footman?
    self.food > 2 && self.gold > 135
  end

end
