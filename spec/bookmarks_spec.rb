require 'bookmarks'

describe Bookmarks do
  

  describe '#all' do
    it 'return all the bookmarks' do
      conn = PG.connect(dbname: 'bookmark_manager_test')
      conn.exec("INSERT INTO bookmarks(url) VALUES('http://www.makersacademy.com');")
      conn.exec("INSERT INTO bookmarks(url) VALUES('http://www.google.com');")
      conn.exec("INSERT INTO bookmarks(url) VALUES('http://www.destroyallsoftware.com');")
      bookmarks = Bookmarks.all
      
      expect(bookmarks).to include('http://www.makersacademy.com')
      expect(bookmarks).to include('http://www.google.com')
      expect(bookmarks).to include('http://www.destroyallsoftware.com')
    end
  end

end
