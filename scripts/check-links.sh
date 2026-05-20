#!/bin/bash
# Run markdown link checker on all markdown files
npx markdown-link-check README.md --config .markdown-link-check.json
npx markdown-link-check CONTRIBUTING.md --config .markdown-link-check.json
npx markdown-link-check CODE_OF_CONDUCT.md --config .markdown-link-check.json
