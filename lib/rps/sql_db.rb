class RPS::SQLDB

  def initialize
    @db = SQLite3::Database.new "test.db"

    @db.execute <<-SQL
    CREATE TABLE IF NOT EXISTS users(
      id integer,
      username string,
      password string
      PRIMARY KEY (id)
      );
      SQL
  end

  def build_user(data)
    RPS::User.new(data)
  end

  def create_user(data)
    @db.execute <<-SQL
    INSERT INTO users (id, username, password)
    VALUES ("#{data[:username]}", "#{data[:password]}")
    # passes in a string
    SQL
  end
end

