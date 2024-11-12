#Shakti

#Overview

Shakti is a Flutter-based mobile application designed for [primary purpose, e.g., "fake call and spy camera detection"]. This app leverages background services to operate when inactive, offering features like real-time location tracking, shake detection to trigger alerts, and automated SMS notifications for emergencies.

#Key Features

Real-time Background Location Tracking: Tracks user location in the background using background_location and geolocator.

Shake Detection: Triggers alerts upon detecting a shake event using shake.

Background Services: Utilizes flutter_background_service and workmanager to run background tasks seamlessly.

Customizable UI Components: Interactive elements, carousel sliders, and animations.

#Usage

Shake to Alert: Users can trigger alerts by shaking their device. Customize the message and contacts in the app settings.

Background Location Tracking: Start location tracking, which continues even when the app is in the background.

Send Emergency SMS: If a shake is detected, the app sends an SMS alert with the user's current location.

Fake Call:Fake calls can be generated.

Spy Camera Detection:It can be detected through magnetometer.
