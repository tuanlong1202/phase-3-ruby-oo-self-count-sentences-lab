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
    arrRet = self.split(/[.?!]/)
    arrRet.delete_if do |item|
      item == ""
    end
    arrRet.count
  end
end