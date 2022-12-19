#!/bin/bash -e

# This is a Bash script that performs the following actions:
# 1. It sets the script to exit if any command within it returns a non-zero exit status.
# 2. It removes the `dist` directory and all its contents, including subdirectories.
# 3. It copies the contents of the `static` directory to the `dist` directory. If the `dist` directory doesn't exist, it creates it.
# 4. It runs the following commands in a subshell:
#    - It sets a trap to kill all processes in the subshell when the script receives a `SIGINT`, `SIGTERM`, `ERR` or `EXIT` signal.
#    - It runs the `bikeshed watch src/index.bs dist/index.html` command in the background. This command watches the `src/index.bs` file for changes and re-builds the `dist/index.html` file whenever a change is detected.
#    - It runs the `python -m http.server -d=dist` command in the background. This command starts a simple HTTP server that serves the contents of the `dist` directory.
#    - It waits for all background processes to complete.

# Remove the `dist` directory and all its contents, including subdirectories.
rm -vrf dist

# Copy the contents of the `static` directory to the `dist` directory. If the `dist` directory doesn't exist, create it.
cp -vr static dist || mkdir -v dist

# Run the following commands in a subshell.
(
  # Set a trap to kill all processes in the subshell when the script receives a `SIGINT`, `SIGTERM`, `ERR` or `EXIT` signal.
  trap 'kill 0' SIGINT SIGTERM ERR EXIT

  # Run the `bikeshed watch src/index.bs dist/index.html` command in the background. This command watches the `src/index.bs` file for changes and re-builds the `dist/index.html` file whenever a change is detected.
  bikeshed watch src/index.bs dist/index.html &

  # Run the `python -m http.server -d=dist` command in the background. This command starts a simple HTTP server that serves the contents of the `dist` directory.
  python -m http.server -d=dist &

  # Wait for all background processes to complete.
  wait
)
