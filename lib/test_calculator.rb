module TestCalculator

  def add
    return 0 if empty?
    num.reduce { |s, n| s + n }
  end

  def num
    scan(/\d+/).map(&:to_i)
  end
end