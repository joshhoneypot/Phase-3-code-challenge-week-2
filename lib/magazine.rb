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
        Article.all.select { |article| article.magazine == self }.map(&:title)
    end

    def contributing_authors
        author_counts = Hash.new(0)
        Article.all.each do |article|
            author_counts[article.author] += 1
        end

        author_counts.select { |author, count| count > 2 }.keys
    end
        
  end
  