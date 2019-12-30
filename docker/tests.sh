#!/bin/sh
# Tests that can safely be run to ensure proper script configuration.

. "/opt/scripts/netchris/include.sh"

test_function_and_variable

export IMAGE_BUILD_DATE="newdefinition"

test_function_and_variable
