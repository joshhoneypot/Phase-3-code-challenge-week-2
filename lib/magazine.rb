class Magazine
    attr_accessor :name, :category, :contributors

    @@all = []

    def initialize(name,category)
        @name=name
        @category=category
        @@all << self
        @contributors=[]
    end

    def name
        puts @name
    end

    def category
        puts @category
    end

    def self.all
        @@all
    end
end