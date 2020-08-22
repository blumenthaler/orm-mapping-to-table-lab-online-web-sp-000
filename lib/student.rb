class Student

  attr_accessor :name, :grade
  attr_reader :id

  @@all = []

  def initialize(name, grade, id=nil)
    @name = name
    @grade = grade
    @id = id
    @@all << self
  end

  def self.create_table
    <<-SQL
    CREATE TABLE students (
    id INTEGER PRIMARY KEY,
    name TEXT,
    grade INTEGER
    );
    SQL
  end
  
  def self.drop_table
    
  end



  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]  
  
end
