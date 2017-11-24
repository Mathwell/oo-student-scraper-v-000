require 'open-uri'
require 'pry'

class Scraper
  attr_accessor :students

  @students=[]

#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#method is responsible for scraping the index page that lists all of the students
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
<<<<<<< HEAD
  def self.scrape_index_page(index_url='fixtures/student-site/index.html')
    html=File.read(index_url)
=======
  def self.scrape_index_page(index_url)
    html=File.read('fixtures/student-site/index.html')
>>>>>>> ca15a858be5043625bb30d4428947ea5ff9e4631
    students=Nokogiri::HTML(html)
    students.css(".student-card").each do |student_css|
      #student=student_css().text
      @students<<{
        :name => student_css.css(".student-name").text,
        :location =>student_css.css(".student-location").text,
<<<<<<< HEAD
        :profile_url => student_css.css("a")[0]["href"]
=======
        :profile_url => student_css.link.attribute.value
>>>>>>> ca15a858be5043625bb30d4428947ea5ff9e4631
      }
    end

    #@students[0]={location:"", name:"",profile_url:""}
    @students
  end


#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#method is responsible for scraping an individual student's profile page to get further information about that student.
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  def self.scrape_profile_page(profile_url)
<<<<<<< HEAD
    html=File.read(profile_url)
    student=Nokogiri::HTML(html)
    student_css=student.css("div.main-wrapper.profile")
    twitter, linkedin, github, youtube, blog = "", "", "", "", ""
    student_css.css(".social-icon-container a").each do |social|
      if social["href"].include?("twitter")
         twitter=social["href"]
       elsif social["href"].include?("linkedin")
         linkedin=social["href"]
       elsif social["href"].include?("github")
         github=social["href"]
       elsif social["href"].include?("youtube")
         youtube=social["href"]
       else
         blog=social["href"]
       end
    end


    individual={
        :twitter => twitter,
        :linkedin => linkedin,
        :github => github,
        :blog => blog,
        :profile_quote => student.css(".profile-quote").text,
        :bio =>student.css(".bio-content p").text,
      }
      individual.delete(:twitter) if individual[:twitter]==""
      individual
    end
  end
=======

  end

end
>>>>>>> ca15a858be5043625bb30d4428947ea5ff9e4631
