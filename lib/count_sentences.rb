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
    # sentences = self.split(/[!?.]/).count
    counter = 0
    sentences = 0
    sentences = self.split(" ")
    sentences.each do |word|
      if word.end_with?("!") || word.end_with?("?") || word.end_with?(".")
        counter += 1
      else
        0
      end
    end
    counter
  end

end
