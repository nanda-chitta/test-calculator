module TestCalculator

  def add
    return 0 if empty?
    return self[0].to_i + self[2].to_i if include?(',')

    to_i
  end
end