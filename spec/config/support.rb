# frozen_string_literal: true

require 'test_calculator'

RSpec.configure do |_config|
  include TestCalculator
end

RSpec::Expectations.configuration.on_potential_false_positives = :nothing
