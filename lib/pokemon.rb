class Pokemon
  attr_accessor :id, :name, :type, :db

  @@all = []

  def initialize(id: nil, name: nil, type: nil, db: nil)
    @name = name
    @type = type
    @db = db
    @@all << self
  end

  def self.all
    @@all
  end

  def self.save(name, type, database)
    database.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end

  def self.find(num, database)
    poke = database.execute("select * from pokemon where id = ?", num)
        # binding.pry
        self.new(id: poke[0][0], name: poke[0][1], type: poke[0][2], db: database)
  end
end
