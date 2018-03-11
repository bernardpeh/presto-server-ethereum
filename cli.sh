#!/bin/bash

./bin/launcher start
./presto-cli --server localhost:8080 --catalog ethereum --schema default
