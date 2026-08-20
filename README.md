# CarnetDeVoyage ✈️

A native iOS travel journal built with **SwiftUI** to discover new destinations, plan future trips, and keep track of travel memories.

## Overview

CarnetDeVoyage is a mobile application designed around the different stages of a traveler's journey.

From discovering new places and planning upcoming adventures to keeping track of previously visited destinations, the app brings travel inspiration and memories together in one place.

## Features

* 🔎 **Discover** — Explore places and find inspiration for future destinations
* 🗓️ **Planning** — Keep track of places you would like to visit
* 📸 **Memories** — Organize destinations and places you have already experienced
* 👤 **Profile** — Dedicated space for the user experience
* 🧭 **Navigation** — Structured application navigation using a dedicated router
* 💾 **State management** — Centralized place management through a dedicated store

## App Structure

The project separates the application into models, stores, reusable components, and feature-specific views.

```text
CarnetDeVoyage/
├── App/
├── Components/
├── Models/
│   └── Place.swift
├── Stores/
│   ├── PlacesStore.swift
│   └── Router.swift
├── Views/
│   ├── DiscoverView.swift
│   ├── MemoriesView.swift
│   ├── PlanningView.swift
│   └── ProfileView.swift
└── Assets.xcassets/
```

### Models

`Place` represents the core domain model used throughout the application.

### Stores

`PlacesStore` centralizes place-related application state, while `Router` handles navigation between the different sections of the app.

### Views

The user experience is divided into four main areas:

* `DiscoverView` — destination discovery
* `PlanningView` — upcoming travel planning
* `MemoriesView` — previously visited places and memories
* `ProfileView` — user-related content

## Tech Stack

* **Swift**
* **SwiftUI**
* **Xcode**
* **Observable State Management**
* **SwiftUI Navigation**
* **Component-based UI**

## Getting Started

Clone the repository:

```bash
git clone https://github.com/morealcode/CarnetDeVoyage.git
```

Open the project in Xcode:

```text
CarnetDeVoyage.xcodeproj
```

Then:

1. Select an iOS Simulator or connected device.
2. Build the project.
3. Run the application with `⌘R`.

## What I Practiced

This project was an opportunity to explore and practice:

* Building native interfaces with SwiftUI
* Structuring a multi-screen iOS application
* Application state management
* Navigation and routing
* Reusable SwiftUI components
* Data modeling
* Organizing features in a growing Swift codebase

## Future Improvements

Potential improvements for the project include:

* Persistent storage for places and memories
* Interactive maps and location-based discovery
* Photos for visited destinations
* Search and filtering
* Detailed destination pages
* Trip itinerary management
