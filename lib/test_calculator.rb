module TestCalculator

  def add
    return 0 if empty?
    return num[0] + num[1] if include?(',')

    to_i
  end

  def num
    split(',').map(&:to_i)
  end
end