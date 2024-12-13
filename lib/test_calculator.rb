module TestCalculator

  def add
    return 0 if empty?
    raise_error_for_negative_number
    num.reduce { |s, n| s + n }
  end

  def raise_error_for_negative_number
    raise "Negative numbers not allowed: #{negative_nums.join(', ')}" if negative_nums.any?
  end

  def negative_nums
    num.select { |n| n < 0 }
  end

  def num
    scan(/-?\d+/).map(&:to_i)
  end
end