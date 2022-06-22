class Ship
    
    @@ship = []
    attr_reader :name, :type, :booty

    def initialize(name, type, booty)
        @name = params[:name]
        @type = params[:type]
        @booty = params[:booty]
        SHIP << self
    end


    def self.all
        SHIP
    end

    def self.clear
        @@ship = []
    end

end