#!/bin/bash
pandoc *.md projects/*.md -f markdown -t html -s -o README.html --metadata title='resume'

