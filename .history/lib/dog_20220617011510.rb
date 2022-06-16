class Dog


    def self.create_table
    sql = <<-SQL
        name TEXT,
        album TEXT
      )
    SQL

    DB[:conn].execute(sql)
  end
end
