class Dog

  attr_accessor :name, :breed, :id
  
  def initialize(name:, breed:, id: null)


    
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
            album TEXT
        )
        SQL

     DB[:conn].execute(sql)
    end      
end
