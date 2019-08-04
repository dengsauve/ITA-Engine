require_relative '../../libs/items/item'
require 'test/unit'

# ASCII Art from: http://patorjk.com/software/taag/#p=display&h=0&v=0&f=Basic&t=

=begin
d8888b. d88888b d88888b  .d8b.  db    db db      d888888b      d888888b d888888b d88888b .88b  d88. 
88  `8D 88'     88'     d8' `8b 88    88 88      `~~88~~'        `88'   `~~88~~' 88'     88'YbdP`88 
88   88 88ooooo 88ooo   88ooo88 88    88 88         88            88       88    88ooooo 88  88  88 
88   88 88~~~~~ 88~~~   88~~~88 88    88 88         88            88       88    88~~~~~ 88  88  88 
88  .8D 88.     88      88   88 88b  d88 88booo.    88           .88.      88    88.     88  88  88 
Y8888D' Y88888P YP      YP   YP ~Y8888P' Y88888P    YP         Y888888P    YP    Y88888P YP  YP  YP 
=end

class TestDefaultItem < Test::Unit::TestCase

    def setup
        @item = Item.new()
    end

    def test_name
        assert_equal('Mysterious Item', @item.name )
    end
    
    def test_descriptions
        assert_equal("You're not sure what this is.", @item.description)
    end

    def test_pick_up
        assert_equal(false, @item.pick_up)
    end

    def test_attackable
        assert_equal(false, @item.attackable)
    end

    def test_hit_points
        assert_equal(0, @item.hit_points)
    end

    def test_to_s
        assert_equal("Mysterious Item\nYou're not sure what this is.\n", @item.to_s)
    end
end

=begin
 .o88b. db    db .d8888. d888888b  .d88b.  .88b  d88.      d888888b d888888b d88888b .88b  d88. 
d8P  Y8 88    88 88'  YP `~~88~~' .8P  Y8. 88'YbdP`88        `88'   `~~88~~' 88'     88'YbdP`88 
8P      88    88 `8bo.      88    88    88 88  88  88         88       88    88ooooo 88  88  88 
8b      88    88   `Y8b.    88    88    88 88  88  88         88       88    88~~~~~ 88  88  88 
Y8b  d8 88b  d88 db   8D    88    `8b  d8' 88  88  88        .88.      88    88.     88  88  88 
 `Y88P' ~Y8888P' `8888Y'    YP     `Y88P'  YP  YP  YP      Y888888P    YP    Y88888P YP  YP  YP
=end

 class TestCustomItem < Test::Unit::TestCase

    def setup
        @item = Item.new(
            :name => "Coffee Cup",
            :description => "It's a black cup with green trim and a handle.",
            :pick_up => true,
            :attackable => false,
            :hit_points => 0,
        )
    end

    def test_name
        assert_equal('Coffee Cup', @item.name )
    end
    
    def test_descriptions
        assert_equal("It's a black cup with green trim and a handle.", @item.description)
    end

    def test_pick_up
        assert_equal(true, @item.pick_up)
    end

    def test_attackable
        assert_equal(false, @item.attackable)
    end

    def test_hit_points
        assert_equal(0, @item.hit_points)
    end

    def test_to_s
        assert_equal("Coffee Cup\nIt's a black cup with green trim and a handle.\n", @item.to_s)
    end
end