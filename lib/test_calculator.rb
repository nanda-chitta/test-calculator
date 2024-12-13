module TestCalculator

  def add
    return 0 if empty?
    raise_error_for_negative_number
    num.reduce { |s, n| s + n }
  end

  def raise_error_for_negative_number
    raise if include?('-')
  end

  def num
    scan(/\d+/).map(&:to_i)
  end
end