require_relative '../../libs/items/weapon'
require 'test/unit'

# ASCII Art from: http://patorjk.com/software/taag/#p=display&h=0&v=0&f=Basic&t=

=begin
d8888b. d88888b d88888b  .d8b.  db    db db      d888888b      db   d8b   db d88888b  .d8b.  d8888b.  .d88b.  d8b   db 
88  `8D 88'     88'     d8' `8b 88    88 88      `~~88~~'      88   I8I   88 88'     d8' `8b 88  `8D .8P  Y8. 888o  88 
88   88 88ooooo 88ooo   88ooo88 88    88 88         88         88   I8I   88 88ooooo 88ooo88 88oodD' 88    88 88V8o 88 
88   88 88~~~~~ 88~~~   88~~~88 88    88 88         88         Y8   I8I   88 88~~~~~ 88~~~88 88~~~   88    88 88 V8o88 
88  .8D 88.     88      88   88 88b  d88 88booo.    88         `8b d8'8b d8' 88.     88   88 88      `8b  d8' 88  V888 
Y8888D' Y88888P YP      YP   YP ~Y8888P' Y88888P    YP          `8b8' `8d8'  Y88888P YP   YP 88       `Y88P'  VP   V8P  
=end

class TestDefaultWeapon < Test::Unit::TestCase

    def setup
        @weapon = Weapon.new()
    end

    def test_name
        assert_equal('Mysterious Item', @weapon.name )
    end
    
    def test_descriptions
        assert_equal("It appears to be some kind of weapon.", @weapon.description)
    end

    def test_pick_up
        assert_equal(false, @weapon.pick_up)
    end

    def test_attackable
        assert_equal(false, @weapon.attackable)
    end

    def test_hit_points
        assert_equal(0, @weapon.hit_points)
    end

    def test_attack_damage_multiplier
        assert_equal(0, @weapon.attack_damage_multiplier)
    end

    def test_hands
        assert_equal(0, @weapon.hands)
    end

    def test_to_s
        assert_equal("Mysterious Item\nIt appears to be some kind of weapon.\n", @weapon.to_s)
    end
end

=begin
 .o88b. db    db .d8888. d888888b  .d88b.  .88b  d88.      db   d8b   db d88888b  .d8b.  d8888b.  .d88b.  d8b   db 
d8P  Y8 88    88 88'  YP `~~88~~' .8P  Y8. 88'YbdP`88      88   I8I   88 88'     d8' `8b 88  `8D .8P  Y8. 888o  88 
8P      88    88 `8bo.      88    88    88 88  88  88      88   I8I   88 88ooooo 88ooo88 88oodD' 88    88 88V8o 88 
8b      88    88   `Y8b.    88    88    88 88  88  88      Y8   I8I   88 88~~~~~ 88~~~88 88~~~   88    88 88 V8o88 
Y8b  d8 88b  d88 db   8D    88    `8b  d8' 88  88  88      `8b d8'8b d8' 88.     88   88 88      `8b  d8' 88  V888
 `Y88P' ~Y8888P' `8888Y'    YP     `Y88P'  YP  YP  YP       `8b8' `8d8'  Y88888P YP   YP 88       `Y88P'  VP   V8P
=end

 class TestCustomWeapon < Test::Unit::TestCase

    def setup
        @weapon = Weapon.new(
            :name => "Coffee Sword",
            :description => "It's a black Sword with green trim and a handle.",
            :pick_up => true,
            :attackable => false,
            :hit_points => 0,
            :attack_damage_multiplier => 2.5,
            :hands => 1,
        )
    end

    def test_name
        assert_equal('Coffee Sword', @weapon.name )
    end
    
    def test_descriptions
        assert_equal("It's a black Sword with green trim and a handle.", @weapon.description)
    end

    def test_pick_up
        assert_equal(true, @weapon.pick_up)
    end

    def test_attackable
        assert_equal(false, @weapon.attackable)
    end

    def test_hit_points
        assert_equal(0, @weapon.hit_points)
    end

    def test_attack_damage_multiplier
        assert_equal(2.5, @weapon.attack_damage_multiplier)
    end

    def test_hands
        assert_equal(1, @weapon.hands)
    end

    def test_to_s
        assert_equal("Coffee Sword\nIt's a black Sword with green trim and a handle.\n", @weapon.to_s)
    end
end