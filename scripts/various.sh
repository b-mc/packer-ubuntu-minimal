#!/bin/bash -eu

echo "%%%%% Cleaning apt %%%%%"
rm -rf /var/lib/apt/lists/*
apt clean