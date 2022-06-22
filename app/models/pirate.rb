class Pirate
    
    PIRATE = []
    attr_reader :name, :weight, :height

    def initialize(name, weight, height)
        @name = params[:name]
        @weight = params[:weight]
        @height = params[:height]
        PIRATE << self
    end

    def self.all
        PIRATE
    end

end
