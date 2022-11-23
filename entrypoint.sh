#!/bin/sh
nvm use $INPUT_NODE && $INPUT_COMMAND --token "$INPUT_TOKEN"
