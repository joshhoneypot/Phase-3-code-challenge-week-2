class Author
    attr_reader :name

    def initialize (name)
        @name = name
        @articles = []
        @magazines = []
    end

    def articles
        @articles
    end

    def magazines
        @magazines.uniq
    end

    def write_article(magazine, title)
        article=Article.new(self, magazine, title)
        @articles << article
    end

    def name
        puts @name
    end
end