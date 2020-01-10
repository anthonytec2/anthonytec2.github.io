#!/usr/bin/env bash
set -e # halt script on error

bundle exec jekyll build
#bundle exec htmlproofer ._site/ --url_ignore '/vendor[s]?/','/js/' --http-status-ignore "999" --allow_hash_href
