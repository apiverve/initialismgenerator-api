# Initialism Generator API - Dart/Flutter Client

Initialism Generator creates initialisms from phrases by extracting first letters of significant words, with options for filtering and formatting.

[![pub package](https://img.shields.io/pub/v/apiverve_initialismgenerator.svg)](https://pub.dev/packages/apiverve_initialismgenerator)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Initialism Generator API](https://apiverve.com/marketplace/initialismgenerator?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_initialismgenerator: ^1.1.14
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_initialismgenerator/apiverve_initialismgenerator.dart';

void main() async {
  final client = InitialismgeneratorClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'phrase': 'Application Programming Interface',
      'uppercase': true
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [Initialism Generator API](https://apiverve.com/marketplace/initialismgenerator?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/initialismgenerator](https://docs.apiverve.com/ref/initialismgenerator?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
