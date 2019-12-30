#!/bin/sh
# General include to get all generally useful functions and environment variables loaded
# for scripts.  Pull into your script with this line:
# . "/opt/scripts/netchris/include.sh"

# See https://stackoverflow.com/a/2871034/208990
set -euxo pipefail

. "/opt/scripts/netchris/variables.sh"
. "/opt/scripts/netchris/functions.sh"
