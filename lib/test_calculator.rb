module TestCalculator

  def add
    return 0 if empty?
    return scan(/\d+/).map(&:to_i).sum if include?(',')
    
    to_i
  end
end