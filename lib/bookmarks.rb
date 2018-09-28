require 'pg'

class Bookmarks

  

  def self.all
    if ENV['RACK_ENV'] == 'test'
      @conn = PG.connect( dbname: 'bookmark_manager_test' )
    else
      @conn = PG.connect( dbname: 'bookmark_manager' )
    end
    retrieve_urls
  end

  def self.retrieve_urls
    @conn.exec( "SELECT url FROM bookmarks") do |result|
      return formater(result)
    end
  end

  def self.add_url(url)
    if ENV['RACK_ENV'] == 'test'
      @conn = PG.connect( dbname: 'bookmark_manager_test' )
    else
      @conn = PG.connect( dbname: 'bookmark_manager' )
    end
    @conn.exec( "INSERT INTO bookmarks(url) VALUES('#{url}');") 
  end

  def self.formater(data)
    data.map { |line| line['url'] }
  end

end