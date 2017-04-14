# frozen_string_literal: true

# for chaining methods
class MethodChainer
  attr_reader :content

  def initialize(str)
    @content = str
  end

  def reverse!
    @content = @content.reverse
    self
    # self -- notice the difference when commented out
    # What is returned? Returns the entire object, not just the result of the method
  end

  def caps!
    @content = @content.upcase
    self
  end

  def double!
    @content += @content
    self
  end
end

# string = MethodChainer.new("apple")
