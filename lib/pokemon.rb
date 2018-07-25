class Pokemon
  attr_accessor :id, :name, :type, :db

  @@all = []

  def initialize(id: nil, name: nil, type: nil, db: nil)
    @name = name
    @type = type
    @db = db
    @@all << self
  end

  def self.save(name, type, database)
    database.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end
end
