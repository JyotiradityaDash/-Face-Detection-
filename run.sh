#!/bin/bash

# Face Detection Attendance System - Run Script
# This script starts the Streamlit application

echo "🚀 Starting Face Detection Attendance System..."
echo ""

# Check if virtual environment exists
if [ -d "../.venv" ]; then
    echo "✓ Using virtual environment"
    PYTHON_CMD="../.venv/bin/python"
    STREAMLIT_CMD="../.venv/bin/streamlit"
elif [ -d "venv" ]; then
    echo "✓ Using virtual environment"
    PYTHON_CMD="venv/bin/python"
    STREAMLIT_CMD="venv/bin/streamlit"
else
    echo "⚠ No virtual environment found, using system Python"
    PYTHON_CMD="python"
    STREAMLIT_CMD="streamlit"
fi

# Check if streamlit is installed
if ! command -v $STREAMLIT_CMD &> /dev/null; then
    echo "❌ Streamlit is not installed!"
    echo "Please run: pip install -r requirements.txt"
    exit 1
fi

echo "✓ All checks passed"
echo ""
echo "📱 Opening Face Detection Attendance System..."
echo "🌐 The app will open in your browser at http://localhost:8501"
echo ""
echo "💡 Tips:"
echo "   - Enter your name before starting"
echo "   - Allow camera access when prompted"
echo "   - Press Ctrl+C to stop the server"
echo ""

# Run streamlit
$STREAMLIT_CMD run main.py

echo ""
echo "👋 Thanks for using Face Detection Attendance System!"
