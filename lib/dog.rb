class Dog
    @@all = []

    def self.all
        @@all
    end

    def self.print_all
        self.all.each { |dog| puts dog.name }
    end

    def self.clear_all
        self.all.clear
    end

    attr_reader :name

    def initialize(name)
        @name = name
        save
    end

    def save
        self.class.all << self
    end
end