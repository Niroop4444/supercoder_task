# supercoder_task

🚀 Installation and Run Instructions

📋 Prerequisites

1. Flutter SDK Installation
2. Development Environment Setup with preferrerd IDE(Android Studio), add **Flutter** & **Dart** plugin
3. Platform-Specific Requirements
   * For Android Development 
      - Android Studio with Android SDK
      - Android SDK Platform 21 or higher
      - Android SDK Build-Tools
      - Android Emulator or physical device
   * For iOS Development (macOS only):
      - Xcode 14.0 or higher
      - iOS Simulator or physical device
    
📋 Installation Steps

Step 1 : Clone the Repository
`git clone [https://github.com/Niroop4444/supercoder_task.git]`

Step 2 : Navigate to your project directory
`cd supercoder_task_assignment`

Step 3 : Verify Flutter Installation
`flutter doctor`

Step 4 : Install Dependencies
`flutter pub get`

Step 5 : Platform-Specific Setup
Android Setup:
Navigate to Android directory
`cd android`

Clean and build (if needed)
```
./gradlew clean
./gradlew build
```

Return to project root
`cd ..`

iOS Setup (macOS only):
Navigate to iOS directory
`cd ios`

Install CocoaPods dependencies
`pod install`

Return to project root
`cd ..`

📱 Running the Application

Step 1: Check Available Devices
`flutter devices`

Step 2: Start an Emulator/Simulator
Android Emulator
```
# Start Android Studio
# Open AVD Manager
# Launch an existing emulator or create a new one
```

iOS Simulator
```
# Open iOS Simulator
open -a Simulator
```

Step3 : Run the Application
```
# Run on connected device/emulator
flutter run

# Or specify a specific device
flutter run -d emulator-5554

# For web development
flutter run -d chrome
```

📱 Build for Production

Build APK for Android
`flutter build apk --release`

Build App Bundle for Play Store
`flutter build appbundle --release`

Build IPA for iOS (macOS only)
`flutter build ios --release`

🛠️ Development Workflow

Start Development:
`flutter run`

Hot Reload:
  * Press `r` in terminal for quick updates
  * Press `R` for complete restart if needed

Stop Development:
  * Press `q` in terminal
  * Or close the terminal

🏗️ Project Structure

```
lib/
├── main.dart                 # Application entry point
├── modules/                  # Feature-based modules
│   ├── splash/              # App initialization & loading
│   ├── dashboard/           # Main user interface
│   ├── campaign/            # Campaign management system
│   ├── basic_info/          # User setup & configuration
│   ├── my_info/            # Profile management
│   └── password/            # Security & authentication
└── utils/                   # Shared utilities & components
    ├── constants/           # App-wide constants (colors, texts, assets)
    ├── theme/              # UI theming system
    ├── routes/             # Navigation management
    └── widgets/            # Reusable UI components
```

🚀 Key Features

- **Modular Architecture**: Feature-based modules for scalability
- **GetX State Management**: Reactive UI with efficient state handling
- **Infinite Scrolling**: Pagination for campaign lists
- **Custom UI Components**: Brand-consistent design system
- **Responsive Design**: Optimized for mobile devices

🛠️ Technology Stack

- **Framework**: Flutter 3.7.2+
- **State Management**: GetX
- **Architecture**: MVC with GetX
- **Navigation**: GetX routing
- **Dependencies**: cached_network_image, image_picker, path_provider

Implementation Assumptions and Decisions

📋 Project Development Decisions

This outlines the key implementation decisions, assumptions, and trade-offs made during the development of the SuperCoder Task Assignment Flutter application.

🏗️ Architecture Decisions

1. StateManagement
     - Chose `GetX` instead of Provider, Bloc, or Riverpod
     - Development : GetX reduces boilerplate code significantly giving a better *development speed*
     - Performance : Sufficient performance for expected user load and app complexity
     - Project Complexity : Application doesn't require complex state management patterns
     - ❌ Cons: Less community adoption compared to Provider/Bloc, potential vendor lock-in

2. Architecture Pattern: Modular vs Layer-Based
     -  `Feature-based modular architecture` instead of traditional layer-based architecture
     -  Team Collaboration: Multiple developers can work on different features independently
     -  Feature Complexity: Each module has distinct, focused functionality
     -  Maintenance: Easier to maintain and update individual features
     -  ❌ Cons: Potential code duplication, harder to share common logic

3. Navigation Strategy: GetX Routing vs Navigator 2.0
     - Used `GetX routing` instead of Flutter's Navigator 2.0
     - Application doesn't require deep linking or complex navigation patterns
     - GetX routing is simpler to implement and maintain
     - ❌ Cons: Less flexible for complex navigation, potential limitations for advanced routing

4. Data Source: Dummy Data
     - Used `dummy data` for development and testing phase
     - Focus on UI/UX implementation before backend integration
     - Testing: Easier to test with predictable, consistent data

5. Pagination Strategy: Infinite Scroll vs Page Numbers
     - Made `infinite scrolling` instead of traditional page-based pagination
     - User Experience: Mobile users prefer infinite scrolling for content consumption
     - Performance: Better performance on mobile devices
     - ❌ Cons: Harder to jump to specific pages, potential memory issues with very long lists

6. Component Strategy: Custom vs Material Design
     - Created `custom widgets` instead of relying solely on Material Design
     - User Experience: Specific interaction patterns and visual hierarchy required
     - Consistency: Custom components ensure design consistency across the application
     - Flexibility: Easier to modify and extend custom components
     - ❌ Cons: More development time, potential accessibility issues, maintenance overhead

7. Controller Lifecycle: Lazy Loading vs Eager Loading
     - Implemented `lazy loading` for controllers using GetX bindings
     - Memory Usage: Application will have multiple screens and controllers
     - User Behavior: Users typically don't access all screens simultaneously
     - ❌ Cons: Slight delay when first accessing screens, more complex lifecycle management
