class Player

    attr_reader :players :lives
    # attr_writer :player
    
    def initialize
        @name = name
        @lives = 3
    end

    def decrease_live(lives)
        @lives = @lives - 1
    end
end