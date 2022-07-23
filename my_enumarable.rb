module MyEnumerable
  def all?
    each { |item| return false unless yield item }
    true
  end

  def any?
    each { |item| return true if yield item }
    false
  end

  def filter
    new_array = []
    each { |item| new_array.push(item) if yield(item) }
    new_array
  end
end
