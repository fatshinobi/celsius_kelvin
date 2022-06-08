# CelsiusKelvin

Training Ruby gem to convert celsius to kelvin and vice-versa

## Usage

```ruby
require 'celsius_kelvin'

CelsiusKelvin.convert(100, from: :kel, to: :cel)
#=> -173.15

CelsiusKelvin.convert(-173.15, from: :cel, to: :kel)
#=> 100.0
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
