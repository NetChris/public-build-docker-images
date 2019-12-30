#!/bin/sh
# Tests that can safely be run to ensure proper script configuration.

. "/opt/scripts/netchris/include.sh"

test_function_and_variable

# Redefine the variable
export IMAGE_BUILD_DATE="newdefinition"

# ... and ensure the function picks it up
test_function_and_variable
