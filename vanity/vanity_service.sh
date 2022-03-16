#!/bin/bash

set -e

cd /vanity

./go-import-redirector -tls "code.datasoftcomputing.com/*" "https://datasoft-computing@dev.azure.com/datasoft-computing/STARS/_git/*"
