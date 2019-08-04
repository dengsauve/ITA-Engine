require_relative '../libs/room'
require 'test/unit'

# ASCII Art from: http://patorjk.com/software/taag/#p=display&h=0&v=0&f=Basic&t=

=begin
d8888b. d88888b d88888b  .d8b.  db    db db      d888888b      d8888b.  .d88b.   .d88b.  .88b  d88. 
88  `8D 88'     88'     d8' `8b 88    88 88      `~~88~~'      88  `8D .8P  Y8. .8P  Y8. 88'YbdP`88 
88   88 88ooooo 88ooo   88ooo88 88    88 88         88         88oobY' 88    88 88    88 88  88  88 
88   88 88~~~~~ 88~~~   88~~~88 88    88 88         88         88`8b   88    88 88    88 88  88  88 
88  .8D 88.     88      88   88 88b  d88 88booo.    88         88 `88. `8b  d8' `8b  d8' 88  88  88 
Y8888D' Y88888P YP      YP   YP ~Y8888P' Y88888P    YP         88   YD  `Y88P'   `Y88P'  YP  YP  YP                     
=end

class TestDefaultRoom < Test::Unit::TestCase

    def setup
        @room = Room.new()
    end

    def test_name
        assert_equal('Unknown Location', @room.name )
    end
    
    def test_descriptions
        assert_equal("You're not quite sure what's around you.", @room.description_active)
        assert_equal("You can't make that out.", @room.description_north)
        assert_equal("You can't make that out.", @room.description_northeast)
        assert_equal("You can't make that out.", @room.description_east)
        assert_equal("You can't make that out.", @room.description_southeast)
        assert_equal("You can't make that out.", @room.description_south)
        assert_equal("You can't make that out.", @room.description_southwest)
        assert_equal("You can't make that out.", @room.description_west)
        assert_equal("You can't make that out.", @room.description_northwest)
    end
    
    def test_items
        assert_equal([], @room.items)
    end

    def test_to_s
        assert_equal("Unknown Location\nYou're not quite sure what's around you.\n", @room.to_s)
    end
end

=begin 
 .o88b. db    db .d8888. d888888b  .d88b.  .88b  d88.      d8888b.  .d88b.   .d88b.  .88b  d88. 
d8P  Y8 88    88 88'  YP `~~88~~' .8P  Y8. 88'YbdP`88      88  `8D .8P  Y8. .8P  Y8. 88'YbdP`88 
8P      88    88 `8bo.      88    88    88 88  88  88      88oobY' 88    88 88    88 88  88  88 
8b      88    88   `Y8b.    88    88    88 88  88  88      88`8b   88    88 88    88 88  88  88 
Y8b  d8 88b  d88 db   8D    88    `8b  d8' 88  88  88      88 `88. `8b  d8' `8b  d8' 88  88  88 
 `Y88P' ~Y8888P' `8888Y'    YP     `Y88P'  YP  YP  YP      88   YD  `Y88P'   `Y88P'  YP  YP  YP 
=end

class TestCustomRoom < Test::Unit::TestCase
    def setup
        @room = Room.new(
            :name => 'Office',
            :desc_active => "Developers clack away at their keyboard, the occasional siren goes by outside.",
            :desc_n => 'Andy and Big Mike are working.',
            :desc_ne => 'Artem and Levi are working.',
            :desc_e => 'Computer monitors.',
            :desc_se => 'Michael is working.',
            :desc_s => 'Connor is munching on a Whammy.',
            :desc_sw => 'Mailboxes glisten in the sun.',
            :desc_w => 'The snackbar tempts you with delicious chips and goodies.',
            :desc_nw => 'The water cooler gurgles.',
            :items => []
        )
    end
    
    def test_name
        assert_equal('Office', @room.name)
    end

    def test_descriptions
        assert_equal("Developers clack away at their keyboard, the occasional siren goes by outside.", @room.description_active)
        assert_equal('Andy and Big Mike are working.', @room.description_north)
        assert_equal('Artem and Levi are working.', @room.description_northeast)
        assert_equal('Computer monitors.', @room.description_east)
        assert_equal('Michael is working.', @room.description_southeast)
        assert_equal('Connor is munching on a Whammy.', @room.description_south)
        assert_equal('Mailboxes glisten in the sun.', @room.description_southwest)
        assert_equal('The snackbar tempts you with delicious chips and goodies.', @room.description_west)
        assert_equal('The water cooler gurgles.', @room.description_northwest)
    end

    def test_items
        assert_equal([], @room.items)
    end

    def test_to_s
        assert_equal("Office\nDevelopers clack away at their keyboard, the occasional siren goes by outside.\n", @room.to_s)
    end
end