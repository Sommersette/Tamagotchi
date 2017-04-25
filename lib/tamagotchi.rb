class Tamagotchi

  define_method(:initialize) do |name, food, rest, activity|
    @name = name
    @food = food
    @rest = rest
    @activity = activity


    define_singleton_method(:name) do
      @name
    end
    define_singleton_method(:food_level) do
      @food
    end
    define_singleton_method(:rest_level) do
      @rest
    end
    define_singleton_method(:activity_level) do
      @activity
    end
  end
  define_method(:is_alive?) do
    @food > 0
  end
  define_method(:set_food_level) do
    @food = 0
  end
  define_method(:time_passes) do
    @food -= 1
  end
end
