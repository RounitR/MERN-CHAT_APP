#!/bin/bash

echo "🚀 Starting production deployment..."

# Install dependencies
echo "📦 Installing dependencies..."
npm run install-all

# Build frontend
echo "🔨 Building frontend..."
npm run build --prefix frontend

# Set production environment
export NODE_ENV=production

# Start production server
echo "🌐 Starting production server..."
npm run start --prefix backend
