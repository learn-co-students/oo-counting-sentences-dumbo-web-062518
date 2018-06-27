require 'pry'

class String
	# def initialize
	# end

  def sentence?
  	self[self.length - 1] == "."
    
  end

  def question?
	self[self.length - 1] == "?"
  end

  def exclamation?
  	self[self.length - 1] == "!"
  end

  def count_sentences
	@counter = 0
	array = self.split(" ")

  	array.each do |i|
  		(i.include?(".") || i.include?("?") || i.include?("!")) && @counter += 1 
  	end 
	  @counter
  end
end