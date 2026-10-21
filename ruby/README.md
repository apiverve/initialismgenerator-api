# Initialism Generator API - Ruby Gem

Initialism Generator creates initialisms from phrases by extracting first letters of significant words, with options for filtering and formatting.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_initialismgenerator'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_initialismgenerator
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_initialismgenerator'

# Initialize the client
client = APIVerve::Initialismgenerator::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  phrase: "Application Programming Interface",
  uppercase: true
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ phrase: "Application Programming Interface", uppercase: true })
  puts response["data"]
rescue APIVerve::Initialismgenerator::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Initialismgenerator::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Initialismgenerator::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "initialism": "API",
    "phrase": "Application Programming Interface",
    "wordCount": 3,
    "words": [
      "Application",
      "Programming",
      "Interface"
    ]
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/initialismgenerator?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/initialismgenerator?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/initialismgenerator?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
