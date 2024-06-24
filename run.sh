#!/bin/bash

FRONTEND_REPO="https://github.com/thedrifted/temelio-frontend.git"
BACKEND_REPO="https://github.com/thedrifted/temelio-backend.git"

FRONTEND_DIR="./frontend"
BACKEND_DIR="./backend"

if [ ! -d "$FRONTEND_DIR" ]; then
  git clone "$FRONTEND_REPO" "$FRONTEND_DIR"
fi

if [ ! -d "$BACKEND_DIR" ]; then
  git clone "$BACKEND_REPO" "$BACKEND_DIR"
fi

docker-compose up --build
