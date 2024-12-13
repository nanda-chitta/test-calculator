module TestCalculator

  def add
    return 0 if empty?
    return num.reduce { |s, n| s + n } if size > 4
    return num[0] + num[1] if include?(',')

    to_i
  end

  def num
    split(',').map(&:to_i)
  end
end