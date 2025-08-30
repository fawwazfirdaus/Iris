# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Iris is a real-time multimodal AI assistant iOS application built with SwiftUI. The app provides seamless AI interaction through screen analysis and voice processing, offering contextual help without switching apps.

## Core Features

- **Multimodal AI**: Processes both screen content and audio input simultaneously
- **Live Activities**: Provides quick suggestions via Dynamic Island
- **Voice Interaction**: Natural conversation with text-to-speech responses
- **Screen Analysis**: Real-time analysis of user's screen content using ReplayKit
- **Contextual Assistance**: Understands user context from visual and audio cues

## Architecture

### Core Components
- **App Entry Point**: `IrisApp.swift` - Standard SwiftUI App structure
- **Main View**: `ContentView.swift` - Loading screen and app navigation
- **Home Interface**: `HomeView.swift` - Contains SystemToggleButton for AI activation
- **MainContentView**: Navigation coordinator for home, settings, and profile views
- **MultimodalAIManager**: Core orchestrator for AI processing
- **ScreenCaptureService**: ReplayKit integration for screen recording
- **AudioService**: Speech recognition and synthesis
- **ContextProcessor**: Fuses screen and audio data
- **LiveActivityManager**: Dynamic Island updates
- **ResponseManager**: Routes AI responses to appropriate outputs

### Supporting Systems
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

## User Flow

1. **Activation**: User taps SystemToggleButton in HomeView to enable AI assistant
2. **Permissions**: App requests screen recording and microphone access
3. **Monitoring**: AI continuously analyzes screen content and audio input
4. **Processing**: Context processor fuses visual and audio data
5. **Response**: AI provides suggestions via Live Activities and voice responses
6. **Interaction**: User can ask follow-up questions through voice

## Key Technologies

- **ReplayKit**: Screen capture and recording
- **Speech Framework**: Speech recognition and synthesis
- **ActivityKit**: Live Activities for Dynamic Island integration
- **AVFoundation**: Audio processing and management
- **Combine**: Reactive data flow management

## Current App Structure

**Existing Files:**
- `IrisApp.swift` - App entry point
- `ContentView.swift` - Loading screen with 2s delay, then shows MainContentView
- `MainContentView.swift` - Navigation coordinator with sheet presentations for settings/profile
- `HomeView.swift` - Main interface with SystemToggleButton and navigation buttons
- `LoadingView.swift` - Initial loading screen
- `SettingsView.swift` - Settings sheet
- `ProfileView.swift` - Profile sheet
- `Utilities/Font+AppFonts.swift` - Custom Aeonik and Gestura font extensions
- `Info.plist` - App configuration and font registration

**AI Components (To Be Implemented):**
- `MultimodalAIManager.swift` - Core AI orchestration
- `ScreenCaptureService.swift` - Screen recording service
- `AudioService.swift` - Voice processing service
- `ContextProcessor.swift` - Data fusion component
- `LiveActivityManager.swift` - Dynamic Island integration
- `ResponseManager.swift` - Response routing system

**Test Files:**
- `IrisTests/IrisTests.swift` - Unit tests (Swift Testing)
- `IrisUITests/IrisUITests.swift` - UI tests (XCTest)