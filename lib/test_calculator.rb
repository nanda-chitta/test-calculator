module TestCalculator

  def add
    return 0 if empty?
    num.reduce { |s, n| s + n }
  end

  def num
    split(',').map(&:to_i)
  end
end