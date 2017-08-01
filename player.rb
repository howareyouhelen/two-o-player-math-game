class Player

    attr_reader :name, :lives
    # attr_writer :player
    
    def initialize (name)
        @name = name
        @lives = 3
    end

    def decrease_live
        @lives = @lives - 1
    end
end