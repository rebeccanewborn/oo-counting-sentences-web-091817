require 'pry'

class String

  def sentence?
    self[-1] == "."
  end

  def question?
    self[-1] == "?"
  end

  def exclamation?
    self[-1] == "!"
  end

  def count_sentences
  #  self.sub("...",".").tr(".!","?").split.length
    self.squeeze!
    # binding.pry
    arr = self.split(/[!?.]/)
    arr.length
  end
end
