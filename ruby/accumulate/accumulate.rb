class Array
  def accumulate
    map { |item| yield(item) }
  end
end

class BookKeeping
  VERSION = 1
end
