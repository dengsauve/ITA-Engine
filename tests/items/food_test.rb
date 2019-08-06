require_relative '../../libs/items/food'
require 'test/unit'

# ASCII Art from: http://patorjk.com/software/taag/#p=display&h=0&v=0&f=Basic&t=

=begin
d8888b. d88888b d88888b  .d8b.  db    db db      d888888b      d88888b  .d88b.   .d88b.  d8888b. 
88  `8D 88'     88'     d8' `8b 88    88 88      `~~88~~'      88'     .8P  Y8. .8P  Y8. 88  `8D 
88   88 88ooooo 88ooo   88ooo88 88    88 88         88         88ooo   88    88 88    88 88   88 
88   88 88~~~~~ 88~~~   88~~~88 88    88 88         88         88~~~   88    88 88    88 88   88 
88  .8D 88.     88      88   88 88b  d88 88booo.    88         88      `8b  d8' `8b  d8' 88  .8D 
Y8888D' Y88888P YP      YP   YP ~Y8888P' Y88888P    YP         YP       `Y88P'   `Y88P'  Y8888D' 
=end

class TestDefaultFood < Test::Unit::TestCase

    def setup
        @food = Food.new()
    end

    def test_name
        assert_equal('Mysterious Item', @food.name )
    end
    
    def test_descriptions
        assert_equal("It appears to be some kind of food.", @food.description)
    end

    def test_pick_up
        assert_equal(false, @food.pick_up)
    end

    def test_attackable
        assert_equal(false, @food.attackable)
    end

    def test_hit_points
        assert_equal(0, @food.hit_points)
    end

    def test_hit_points_restored
        assert_equal(0, @food.hit_points_restored)
    end

    def test_to_s
        assert_equal("Mysterious Item\nIt appears to be some kind of food.\n", @food.to_s)
    end
end

=begin
 .o88b. db    db .d8888. d888888b  .d88b.  .88b  d88.      d88888b  .d88b.   .d88b.  d8888b. 
d8P  Y8 88    88 88'  YP `~~88~~' .8P  Y8. 88'YbdP`88      88'     .8P  Y8. .8P  Y8. 88  `8D 
8P      88    88 `8bo.      88    88    88 88  88  88      88ooo   88    88 88    88 88   88 
8b      88    88   `Y8b.    88    88    88 88  88  88      88~~~   88    88 88    88 88   88 
Y8b  d8 88b  d88 db   8D    88    `8b  d8' 88  88  88      88      `8b  d8' `8b  d8' 88  .8D 
 `Y88P' ~Y8888P' `8888Y'    YP     `Y88P'  YP  YP  YP      YP       `Y88P'   `Y88P'  Y8888D' 
=end

 class TestCustomFood < Test::Unit::TestCase

    def setup
        @food = Food.new(
            :name => "Perfect Rueben",
            :description => "It's a hot Rueben, on the best toasted Rye, mouth watering corned beef, savory sauerkraut, pungent swiss, and delectable thousand island.",
            :pick_up => true,
            :attackable => false,
            :hit_points => 0,
            :hit_points_restored => 100,
        )
    end

    def test_name
        assert_equal('Perfect Rueben', @food.name )
    end
    
    def test_descriptions
        assert_equal("It's a hot Rueben, on the best toasted Rye, mouth watering corned beef, savory sauerkraut, pungent swiss, and delectable thousand island.", @food.description)
    end

    def test_pick_up
        assert_equal(true, @food.pick_up)
    end

    def test_attackable
        assert_equal(false, @food.attackable)
    end

    def test_hit_points
        assert_equal(0, @food.hit_points)
    end

    def test_hit_points_restored
        assert_equal(100, @food.hit_points_restored)
    end

    def test_to_s
        assert_equal("Perfect Rueben\nIt's a hot Rueben, on the best toasted Rye, mouth watering corned beef, savory sauerkraut, pungent swiss, and delectable thousand island.\n", @food.to_s)
    end
end