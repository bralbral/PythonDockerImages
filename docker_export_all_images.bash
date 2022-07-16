#!/bin/bash

docker save $(docker images --format '{{.Repository}}:{{.Tag}}') -o allfilestoone_$(date +"%m_%d_%Y_%H:%M").tar