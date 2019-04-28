#!/bin/bash

hugo
aws s3 sync --profile duc.sebastien.com public/ s3://duc-sebastien.com/ --delete
