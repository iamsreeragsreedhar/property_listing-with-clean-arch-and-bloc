# data_float

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
## 📌 Model Structure & JSON Parsing Approach

The app follows a Clean Architecture–inspired structure:

Entity (PropertyListingEntity) defines core business data

Model (PropertyListingModel) extends the entity and handles JSON parsing

This keeps domain logic independent of data format 

Parsing is done using a factory fromJson() constructor

All fields use null-safe defaults

Image URLs are parsed as a List<String>

Missing or optional fields are handled gracefully


## 📌 Chosen State Management & Reasoning

The application follows **Clean Architecture** principles combined with **Bloc (Cubit) and Freezed** for state management. 


## 📌 Search Implementation

Search functionality is implemented using **Bloc event handling** and local list filtering.

### Approach
- User input is captured from a search field
- A `PropertyListingFilterEvent` is triggered on text change
- Filtering is performed on the already loaded data set
- Results are emitted as a new state, updating the UI reactively 

## 📌 Image Gallery Implementation 

### Approach

Images are parsed from the PICTURE field in JSON

CarouselSlider is used to enable swipe-based image navigation

Current index is tracked for indicators or UI updates

