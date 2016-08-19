class GroupingException
  class InvalidArgumentException < StandardError
    def initialize
      super("Invalid Argument")
    end
  end
  class InvalidArgumentException2 < RuntimeError
    def initialize
      super("Invalid Argument")
    end
  end
end