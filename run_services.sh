#!/bin/bash

# Function to run nats service
run_nats() {
    echo "Running nats service..."
    docker run -p 4222:4222 nats:latest
}

# Function to run expo service
run_expo() {
    echo "Running expo service..."
    cd apps/expo-app && pnpm start
    cd - # Return to the previous directory
}

# Function to run auth service
run_auth() {
    echo "Running auth service..."
    cd apps/services/auth-service && pnpm start
    cd - # Return to the previous directory
}

# Function to run api gateway service
run_api_gateway() {
    echo "Running api gateway service..."
    cd apps/services/api-gateway && pnpm start
    cd - # Return to the previous directory
}

# Main function to run all services
run_local() {
    # Run services in the background
    run_nats &
    run_expo &
    run_auth &
    run_api_gateway &
    
    # Wait for all background processes to finish
    wait

    echo "All services are running."
}

# Call the main function
run_local
