require_relative 'item'

class Food < Item

    attr_reader :hit_points_restored

    def initialize(args={})
        options = defaults.merge(args)

        set_vals(options)
    end

    def set_vals(options)
        super(options)
        
        @hit_points_restored = options.fetch(:hit_points_restored)
    end

    def defaults
        {
            name: 'Mysterious Item',
            description: "It appears to be some kind of food.",
            pick_up: false,
            attackable: false,
            hit_points: 0,
            hit_points_restored: 0,
        }
    end

end