class Array
  def keep(&block)
    kept = []
    each do |item|
      kept.push(item) if block.call(item)
    end
    kept
  end

  def discard(&block)
    discarded = []
    each do |item|
      discarded.push(item) unless block.call(item)
    end
    discarded
  end
end
