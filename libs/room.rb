class Room
    attr_reader :name,
    :description_active,
    :description_adjacent,
    :description_north,
    :description_northeast,
    :description_east,
    :description_southeast,
    :description_south,
    :description_southwest,
    :description_west,
    :description_northwest,
    :items

    def initialize(args={})
        options = defaults.merge(args)

        @name = options.fetch(:name)
        @description_active = options.fetch(:desc_active)
        @description_adjacent = options.fetch(:desc_adjacent)
        @description_north = options.fetch(:desc_n)
        @description_northeast = options.fetch(:desc_ne)
        @description_east = options.fetch(:desc_e)
        @description_southeast = options.fetch(:desc_se)
        @description_south = options.fetch(:desc_s)
        @description_southwest = options.fetch(:desc_sw)
        @description_west = options.fetch(:desc_w)
        @description_northwest = options.fetch(:desc_nw)
        @items = options.fetch(:items)
    end

    def defaults
        {
            name: 'Unknown Location',
            desc_active: "You're not quite sure what's around you.",
            desc_adjacent: "You can't make that out",
            desc_n: "You can't make that out.",
            desc_ne: "You can't make that out.",
            desc_e: "You can't make that out.",
            desc_se: "You can't make that out.",
            desc_s: "You can't make that out.",
            desc_sw: "You can't make that out.",
            desc_w: "You can't make that out.",
            desc_nw: "You can't make that out.",
            items: [],
        }
    end

    def to_s
        ret_str = "#{@name}\n#{@description_active}\n"

        items.each do |obj|
            ret_str += "There is a #{obj.to_s}\n"
        end

        ret_str
    end

end