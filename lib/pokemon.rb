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

  def self.find(num: nil, database)
        a = database.execute("select * from pokemon where id = ?", num)
        # binding.pry
        self.new(id: a[0][0], name: a[0][1], type: a[0][2], db: database)

    end
end
