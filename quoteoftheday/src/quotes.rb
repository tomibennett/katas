# frozen_string_literal: true

class QuotesSet
  def initialize
    @filepath = './var/quotes.txt'
    @quotes = parse File.open(@filepath, 'r:ISO-8859-1').read
    @size = @quotes.length
  end

  def pick_random
    @quotes[rand(0..@size)]
  end

  private
  def parse(text)
    text.split('%')
  end
end
