class Dog

  attr_accessor :name, :breed, :id
  
  def initialize(name:, breed:, id: null)
    @id = id
    @name = name
    @breed = breed
  end

  def self.drop_table
    sql = <<-SQL
      DROP TABLE IF EXISTS dogs
    SQL

    DB[:conn].execute(sql)
  end

  def self.create_table
        sql = <<-SQL
        CREATE TABLE IF NOT EXISTS dogs (
            id INTEGER PRIMARY KEY,
            name TEXT,
            breed TEXT
        )
        SQL

     DB[:conn].execute(sql)
    end    
    
      def save
    sql = <<-SQL
      INSERT INTO songs (name, breed)
      VALUES (?, ?)
    SQL

    # insert the song
    DB[:conn].execute(sql, self.name, self.breed)
    
end
