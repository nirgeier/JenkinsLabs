#!/bin/bash

# Get the source path
BASE_PATH="$(realpath $DIRECTORY)"

# Remove old content
rm -rf      /tmp/_demo
mkdir -p    /tmp/_demo
cd          /tmp/_demo

# Create the root folder & Init the gir repository
git init demo_shared_library

cp -rf $BASE_PATH/. . 

# switch to the git repository
cd demo_shared_library

# Add the remote to this repo
git remote add origin git@github.com:nirgeier/sharedLibraryDemo.git

# Verify the remote (git remote)
git remote -v

# Create the skeleton folders
mkdir -p demo_shared_library/{src/main/groovy,vars,resources}

# Verify the skeleton structure
tree .

# Create the jenkins shared folder
mkdir -p    ./jenkins_home
chmod 777   ./jenkins_home

# Build the dockr image for the demo
docker-compose down 
docker-compose up   --build 

ls -la

