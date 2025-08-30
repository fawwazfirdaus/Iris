# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Iris is a SwiftUI iOS application that displays a centered logo and title. The app uses custom fonts (Aeonik and Gestura) and custom assets.

## Architecture

- **App Entry Point**: `IrisApp.swift` - Standard SwiftUI App structure
- **Main View**: `ContentView.swift` - Simple VStack layout with title and image
- **Font System**: `Utilities/Font+AppFonts.swift` - Custom font extensions for Aeonik and Gestura families
- **Assets**: Custom fonts stored in `Utilities/Fonts/` and registered in `Info.plist`

## Build and Development Commands

### Building
```bash
# Build the project
xcodebuild -project Iris.xcodeproj -scheme Iris build

# Build and run on simulator
xcodebuild -project Iris.xcodeproj -scheme Iris -destination 'platform=iOS Simulator,name=iPhone 15' build
```

### Testing
```bash
# Run unit tests (uses Swift Testing framework)
xcodebuild test -project Iris.xcodeproj -scheme Iris -destination 'platform=iOS Simulator,name=iPhone 15'

# Run UI tests (uses XCTest framework)
xcodebuild test -project Iris.xcodeproj -scheme Iris -destination 'platform=iOS Simulator,name=iPhone 15' -only-testing:IrisUITests
```

## Font System

The app uses two custom font families with helper extensions:
- **Aeonik**: `.aeonik(size, weight)` - Available in Regular and Bold
- **Gestura**: `.gestura(size, weight)` - Available in Regular and Semibold

Font files are located in `Utilities/Fonts/` and must be registered in `Info.plist` under `UIAppFonts`.

## Key Files

- `IrisApp.swift` - App entry point
- `ContentView.swift` - Main UI view
- `Utilities/Font+AppFonts.swift` - Custom font extensions
- `Info.plist` - App configuration including font registration
- `IrisTests/IrisTests.swift` - Unit tests (Swift Testing)
- `IrisUITests/IrisUITests.swift` - UI tests (XCTest)