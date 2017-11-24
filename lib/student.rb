class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url

  @@all = []

  def initialize(student_hash)
    puts student_hash[:name]
    add_student_attributes(student_hash)
    puts self.name
    #@name=student_hash[:name]
    #@location=student_hash[:location]
    @@all<<self
    puts @@all.first.name
    self

  end

  def self.create_from_collection(students_array)

  end

  def add_student_attributes(attributes_hash)
    student_hash=attributes_hash
     @name=student_hash[:name]
     @location=student_hash[:location]
     @twitter=student_hash[:twitter]
     @linkedin=student_hash[:linkedin]
     @github=student_hash[:github]
     @blog=student_hash[:blog]
     @profile_quote=student_hash[:profile_quote]
     @bio=student_hash[:bio]
     @profile_url=student_hash[:profile_url]
  end

  def self.all
    @@all
  end
end
