# find ./src -iname "*.js" -exec grep -q 'import React' {} \; -exec mv "{}" "{}x" \;
for x in src/*.js; do mv "$x" "${x%.js}.jsx"; done
for x in src/**/*.js; do mv "$x" "${x%.js}.jsx"; done