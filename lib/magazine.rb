class Magazine
    attr_accessor :name, :category, :contributors
  
    @@all = []
  
    def initialize(name, category)
      @name = name
      @category = category
      @@all << self
      @contributors = []
    end
  
    def name
      @name
    end
  
    def category
      @category
    end
  
    def self.all
      @@all
    end
  
    def self.find_by_name(name)
      @@all.find { |magazine| magazine.name == name }
    end

    def article_titles
        articles.select { |article| article.magazine == self }.map(&:title)
    end
  end
  