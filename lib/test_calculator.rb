module TestCalculator

  def add
    return 0 if empty?
    num = split(',')
    return num[0].to_i + num[1].to_i if include?(',')

    to_i
  end
end