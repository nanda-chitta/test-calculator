module TestCalculator

  def add
    return 0 if empty?
    num = split(',').map(&:to_i)
    return num[0] + num[1] if include?(',')

    to_i
  end
end