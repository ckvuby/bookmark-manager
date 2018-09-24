require 'bookmarks'

describe Bookmarks do
  
  describe '#all' do
    it 'return array of bookmarks' do
      expect(Bookmarks.all).to include('www.cats.com') 
      expect(Bookmarks.all).to include('www.dogs.com')
      expect(Bookmarks.all).to include('www.amy.com')
    end
  end

end
