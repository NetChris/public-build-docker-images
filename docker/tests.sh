#!/bin/sh
# Tests that can safely be run to ensure proper script configuration.

# Activate "strict" settings
. "/opt/scripts/netchris/strict.sh"

# Test functions
. "/opt/scripts/netchris/functions/tests.sh"

test_function

# Redefine the variable
export IMAGE_BUILD_DATE="newdefinition"

# ... and ensure the function picks it up
test_function
