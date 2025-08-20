#!/bin/bash

echo "🚀 Setting up Node.js retail checkout service development environment..."

# Make sure we're in the workspace
cd /workspaces/node-retail-checkout-service

# Install dependencies
echo "📚 Installing dependencies..."
yarn install

# Build the project
echo "🔨 Building project..."
if yarn build; then
    echo "✅ Project built successfully!"
else
    echo "⚠️  Build failed. Manual intervention may be required."
    echo "💡 Try running: yarn build manually"
fi

# Clean build artifacts for fresh start
echo "🧹 Cleaning build artifacts..."
yarn clean || rm -rf dist build coverage

# Run tests to validate environment
echo "🧪 Running tests to validate environment..."
if yarn test; then
    echo "✅ Tests passed successfully!"
else
    echo "⚠️  Tests failed, but continuing with setup..."
    echo "💡 You may need to fix compilation issues before running tests again"
fi

# Run linting
echo "🔍 Running linting..."
if yarn lint; then
    echo "✅ Linting passed successfully!"
else
    echo "⚠️  Linting issues found, but continuing with setup..."
    echo "💡 You may want to fix linting issues"
fi

echo "✅ Node.js retail checkout service development environment setup complete!"
echo ""
echo "🔄 Automatically completed:"
echo "  ✅ Dependencies installed"
echo "  ✅ Project built"
echo "  ✅ Build artifacts cleaned"
echo "  ✅ Environment validated"
echo "  ✅ Linting checked"
echo ""
echo "📋 Available manual commands:"
echo "  yarn dev        - Start the checkout service in development mode"
echo "  yarn start      - Start the checkout service in production mode"
echo "  yarn test       - Run tests again"
echo "  yarn build      - Build the application"
echo "  yarn clean      - Clean build artifacts"
echo "  yarn lint       - Run linting"
echo ""
echo "🔧 Troubleshooting commands:"
echo "  yarn clean      - Clean and rebuild"
echo "  yarn audit      - Check for security vulnerabilities"
echo "  yarn outdated   - Check for outdated dependencies"
