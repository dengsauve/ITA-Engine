class Item

    attr_reader :name,
    :description,
    :pick_up,
    :attackable,
    :hit_points

    def initialize(args={})
        options = defaults.merge(args)

        set_vals(options)
    end

    def set_vals(options)
        @name = options.fetch(:name)
        @description = options.fetch(:description)
        @pick_up = options.fetch(:pick_up)
        @attackable = options.fetch(:attackable)
        @hit_points = options.fetch(:hit_points)
    end

    def defaults
        {
            name: 'Mysterious Item',
            description: "You're not sure what this is.",
            pick_up: false,
            attackable: false,
            hit_points: 0,
        }
    end

    def to_s
        ret_str = "#{@name}\n#{@description}\n"

        ret_str
    end

end