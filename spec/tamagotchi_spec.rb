require('rspec')
require('tamagotchi')

describe(Tamagotchi) do
  describe("#initialize") do
    it("sets the name and life levels of a new Tamagotchi") do
      my_pet = Tamagotchi.new("lil dragon", 10, 10, 10)
      expect(my_pet.name()).to(eq("lil dragon"))
      expect(my_pet.food_level()).to(eq(10))
      expect(my_pet.rest_level()).to(eq(10))
      expect(my_pet.activity_level()).to(eq(10))
    end
  end

  describe("#is_alive") do
    it("is alive if the food level is above 0") do
      my_pet = Tamagotchi.new("lil dragon", 10, 10, 10)
      expect(my_pet.is_alive?()).to(eq(true))
    end
# food - hunger - stuff
    it("is dead if the food level is 0") do
      my_pet = Tamagotchi.new("lil dragon", 0, 10, 10)
      my_pet.set_food_level()
      expect(my_pet.is_alive?()).to(eq(false))
    end
  end

  describe("#time_passes") do
    it("decreases the amount of food the Tamagotchi has left by 1") do
      my_pet = Tamagotchi.new("lil dragon", 10, 10, 10)
      my_pet.time_passes()
      expect(my_pet.food_level()).to(eq(9))
    end
  end
  describe("#is_hungry") do
    it("is hungry if food level is 5 or less") do
      my_pet = Tamagotchi.new("lil dragon", 5, 10, 10)
      my_pet.is_hungry()
      expect(my_pet.food_level()).to(eq(5))
    end
  end
# energy sleep level stuff
  describe("#is_sleepy") do
    it("is sleepy if rest level is less than or equal to 4") do
      my_pet = Tamagotchi.new("lil dragon", 10, 4, 10)
      my_pet.is_sleepy()
      expect(my_pet.rest_level()).to(eq(4))
    end
  end
  describe("#is_bored") do
    it("is bored if activity level is equal to or below 6") do
      my_pet = Tamagotchi.new("lil dragon", 10, 10, 6)
      my_pet.is_bored()
      expect(my_pet.activity_level()).to(eq(6))
    end
  end
end
