require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences

    if self == ""
      string_num = []
    else
    string_num = self.split('! ')
    string_num << self.split('? ')
    string_num << self.split('. ')
  end
    string_num.count
  end
end
