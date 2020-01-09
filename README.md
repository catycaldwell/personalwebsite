# catycaldwell.com
This is my personal website built using docker and nginx.

## Build Container
```!/usr/bin/env bash
docker build -t website .
```

## Run Container
```!/usr/bin/env bash
docker run -d -t -p 8000:80 --name catycaldwell.com website
```

## Verify
Visit [Localhost:8000](http://localhost:8000)
