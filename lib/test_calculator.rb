# frozen_string_literal: true

module TestCalculator
  def add
    return 0 if empty?

    raise_error_if_negatives
    num.reduce { |s, n| s + n }
  end

  def raise_error_if_negatives
    raise "Negative numbers not allowed: #{negative_nums.join(', ')}" if negative_nums.any?
  end

  def negative_nums
    num.select(&:negative?)
  end

  def num
    scan(/-?\d+/).map(&:to_i)
  end
end
