#!/bin/bash

set -ex

# Run the functional tests
BEHAT_TAGS=$(php vendor/wp-cli/wp-cli/ci/behat-tags.php)
vendor/bin/behat --format progress $BEHAT_TAGS --strict
