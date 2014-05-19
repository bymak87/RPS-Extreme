module RPS

  class Invites
    attr_reader :from_user, :to_user, :status

    def initialize(data)
      @from_user = data[:from_user]
      @to_user = data[:to_user]
      @status = data[:status]
    end
  end
end
