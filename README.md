# Building the Documentation

## Requirements

- Docker

## Building the HTML Documentation

To generate new example output **and** run the complete HTML documentation, run the following after checking out this repository:
```sh
docker build -t phpunit-documentation-generator .;
docker run --rm -v $(pwd):/root phpunit-documentation-generator bash scripts/00-generate-php-unit-documentation.sh;
```
