# frozen_string_literal: true

RSpec.describe CelsiusKelvin do
  it "has a version number" do
    expect(CelsiusKelvin::VERSION).not_to be nil
  end

  describe ".convert" do
    it "supports celsius to kelvin" do
      expect(CelsiusKelvin.convert(30.3, from: :cel, to: :kel)).to eq 303.45
    end

    it "supports kelvin to celsius" do
      expect(CelsiusKelvin.convert(500.3, from: :kel, to: :cel)).to eq 227.15
    end
  end
end
