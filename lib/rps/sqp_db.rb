class RPS::SQLDB

  def initialize
    @db = SQLite3::Database.new "test.db"
  end

  def build_user(data)

end
