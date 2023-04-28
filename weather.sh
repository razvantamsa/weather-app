#!/bin/bash

# # Define the alias
# alias weather='./weather.sh'

# Define the function for the script
function run_script() {
  case "$1" in
    "start-be")
      cd "$(dirname "$0")"
      cd backend && npm run start 
      ;;
    "start-fe")
      echo "Not implemented"
      ;;
    *)
      echo "Invalid command"
      exit 1
      ;;
  esac
}

# Check for command line argument
if [[ $# -eq 0 ]]; then
  echo "No command specified"
  exit 1
else
  run_script $1
fi
