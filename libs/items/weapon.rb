require_relative 'item'

class Weapon < Item

    attr_reader :attack_damage_multiplier,
    :hands

    def initialize(args={})
        options = defaults.merge(args)

        set_vals(options)
    end

    def set_vals(options)
        super(options)
        
        @attack_damage_multiplier = options.fetch(:attack_damage_multiplier)
        @hands = options.fetch(:hands)
    end

    def defaults
        {
            name: 'Mysterious Item',
            description: "It appears to be some kind of weapon.",
            pick_up: false,
            attackable: false,
            hit_points: 0,
            attack_damage_multiplier: 0,
            hands: 0,
        }
    end

end