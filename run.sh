docker build -t opal_example .
docker run -v "$PWD:/app" --rm -i -t opal_example bundle exec guard
