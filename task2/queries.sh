#!/bin/bash

# Define the URLs
url1="curl -vvv --header "Host:latartsevp" https://176.109.82.213/Cities/3 --insecure"
url2="curl -vvv --header "Host:latartsevp" https://176.109.82.213/Cities/2 --insecure"

# Function to perform a query using curl
query() {
    curl --header "Host:latartsevp" https://176.109.82.213/Cities/3 --insecure 1> /dev/null
    curl --header "Host:latartsevp" https://176.109.82.213/Cities/2 --insecure 1> /dev/null

}

# Run 25 queries for each URL in parallel
for i in {1..25}; do
  query 
  query 
done

# Wait for all background processes to finish
wait

echo "All queries completed."
