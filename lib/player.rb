class Player
    
    attr_reader :name, :symbol
    def initialize (name, symbol)
        @players = {}
        @name = name
        @symbol = symbol
        @players[@name] = @symbol 
    end
end