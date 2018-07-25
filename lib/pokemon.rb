class Pokemon
  attr_accessor :id, :name, :type, :db

  @@all = []

  def initialize(id: nil, name: nil, type: nil, db: nil)
    @name = name
    @type = type
    @db = db
    @@all << self
  end
end
