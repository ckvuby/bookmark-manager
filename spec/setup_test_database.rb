require 'pg'

def truncate_bookmark_table
  conn = PG.connect(dbname: 'bookmark_manager_test')
  conn.exec ('TRUNCATE bookmarks')
end