#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset


celery -A config worker -l info