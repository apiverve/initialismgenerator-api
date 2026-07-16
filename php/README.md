# Initialism Generator API - PHP Package

Initialism Generator creates initialisms from phrases by extracting first letters of significant words, with options for filtering and formatting.

## Installation

Install via Composer:

```bash
composer require apiverve/initialismgenerator
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Initialismgenerator\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'phrase' => 'Application Programming Interface',
    'uppercase' => true
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Initialismgenerator\Client;
use APIVerve\Initialismgenerator\Exceptions\APIException;
use APIVerve\Initialismgenerator\Exceptions\ValidationException;

try {
    $response = $client->execute(['phrase' => 'Application Programming Interface', 'uppercase' => true]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/initialismgenerator?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/initialismgenerator?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/initialismgenerator?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
