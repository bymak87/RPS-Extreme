module RPS

  class DB

    attr_reader :users, :games, :matches, :next_user_id, :next_game_id, :next_match_id
    def initialize
      @users = {}
      @games = {}
      @matches = {}
      @next_user_id = 0
      @next_game_id = 0
      @next_match_id = 0
    end

    #USERS- Create user
    def create_user(data)
      @next_user_id += 1
      data[:id]= @next_user_id
      @users[@next_user_id] = data
      build_user(data)
    end

    def get_user(id)
      data = @users[id]
      build_user(data)
    end

    def build_user(data)
      RPS::User.new(data)
    end

    def update_user(id, data)
      @users[id].merge!(data)
      build_user(@users[id])
    end

    def delete_user(id)
      @users.delete[id]
    end

    #Matches
    def create_matches(data)
      @next_match_id += 1
      data[:id]= @next_match_id
      @matchs[@next_match_id] = data
      build_match(data)
    end

    def get_match(id)
      data = @matches[id]
      build_match(data)
    end

    def build_match(data)
      RPS::Match.new(data)
    end

    def update_match(id, data)
      @matches[id].merge!(data)
      build_match(@matches[id])
    end

    def delete_match(id)
      @matches.delete[id]
    end

# GAMES

    def create_games(data)
      @next_game_id += 1
      data[:id] = @next_game_id
      @games[@next_game_id] = data
      build_game(data)
    end

    def get_game(id)
      data = @games[id]
      build_game(data)
    end

    def build_game(data)
      RPS::Game.new(data)
    end

    def update_game(id, data)
      @games[id].merge!(data)
      build_game(@games[id])
    end

    def delete_game(id)
      @games.delete[id]
    end

  end
end
