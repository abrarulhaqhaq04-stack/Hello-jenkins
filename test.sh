#!/bin/sh
if grep -q "Hello jenkins" app.js; then
echo "Test passed"
exit 0
else
echo "Test failed"
exit 1
fi
