class Dog
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def self.all
        @@all
    end

    def self.print_all
        self.all.each { |dog| puts dog.name }
    end

    def save
        self.class.all << self
    end

    def self.clear_all
        self.all.clear
    end
end