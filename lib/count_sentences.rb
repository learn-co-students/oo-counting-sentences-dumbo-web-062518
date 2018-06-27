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
    new_array = self.split(".").flatten
    # puts "array #{new_array}"

    new_array = new_array.map do |x|
      x.split("?")
    end.flatten
    # puts "array #{new_array}"

    new_array = new_array.map do |x|
      x.split("!")
    end.flatten

    # puts "array #{new_array}"

    new_array.reject { |blank| blank.empty? }.count

    # binding.pry
  end
end
