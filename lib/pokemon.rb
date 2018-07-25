class Pokemon
  attr_accessor :name, :type, :db

  @@all = []

  def initialize(name: nil, type: nil, db: nil)
    @name = name
    @type = type
    @db = db
    @@all << self
  end
end
