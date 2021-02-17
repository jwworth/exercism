class Array
  def keep(&block)
    each_with_object([]) do |item, kept|
      kept.push(item) if block.call(item)
    end
  end

  def discard(&block)
    each_with_object([]) do |item, discarded|
      discarded.push(item) unless block.call(item)
    end
  end
end
