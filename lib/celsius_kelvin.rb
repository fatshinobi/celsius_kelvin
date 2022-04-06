# frozen_string_literal: true

require_relative "celsius_kelvin/version"

module CelsiusKelvin
  class Error < StandardError; end

  COEFFICIENT = 273.15

  def self.convert(value, from:, to:)
    (value +
      case from
      when :cel
        COEFFICIENT if to == :kel
      when :kel
        - COEFFICIENT if to == :cel
      end
    ).round(2)
  end
end
