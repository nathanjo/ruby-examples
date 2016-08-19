class BankException
  class NoteUnavailableException < StandardError
    def initialize
      super("Notes Unavailable")
    end
  end
  class InvalidArgumentException < StandardError
    def initialize
      super("Invalid Argument")
    end
  end
end