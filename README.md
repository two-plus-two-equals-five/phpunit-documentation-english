# Building the Documentation

## Requirements

- Docker

## Building the HTML Documentation

To generate both the latest PHPUnit output examples **and** its corresponding HTML documentation, please run the following after checking out this repository:
```sh
docker build -t phpunit-documentation-generator .;
docker run --rm -v $(pwd):/root phpunit-documentation-generator bash scripts/00-generate-php-unit-documentation.sh;
```

The HTML pages this generates can be found in `build/html`.
