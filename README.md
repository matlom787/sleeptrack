Developers:
Matthew Lomelin,
Harry Le


-Goals of the Project-

The goal of this project is to develop a user-friendly sleep tracking application that enables users to:
  -Log their sleep and wake times for accurate tracking of sleep duration.
  -Visualize progress with a bonsai tree that grows as the user logs consistent sleep data.
  -View their total sleep time in a readable format for self-monitoring and improvement.
  -This app is designed to help users improve their sleep hygiene while gamifying the process with visual incentives.


-Functionalities-

The application includes the following functionalities:

1. Sleep and Wake Time Logging:
  -Users can select their sleep and wake times using a date and time picker.
  -Sleep durations are calculated and displayed in a formatted text output.
2. Sleep Duration Display:
  -A UILabel dynamically updates to display the calculated sleep duration in hours and minutes.
3. Bonsai Tree Growth:
  -A bonsai tree image grows in stages as users consistently log sleep records.
  -The tree resets to the initial stage when the app restarts.
4. Persistent Storage:
  -The application saves growth progress and sleep records using UserDefaults to ensure data continuity.


-Architecture and Design-

Model-View-Controller:
  The project follows the MVC architecture to separate the logic, user interface, and data management:
  Model: Handles persistent storage (UserDefaults) and sleep data calculations.
  View: Includes UILabel, UIDatePicker, and UIImageView for user interaction and display.
  Controller: Manages user inputs, updates UI elements, and links data logic with the interface.
Key Components:
  -View Controller: SleepTrackerViewController.swift handles user interaction and manages sleep tracking logic.
  -Storyboard: Provides a user interface with visually connected outlets and actions.


-Documentation of the Project-

GitHub Location of Code
The source code for this project is available on GitHub: 


-Deployment Instructions-

Ensure you have the latest version of Swift and Xcode installed
Clone the GitHub repository: 
Open the project in Xcode:
Navigate to the .xcodeproj file and open it in Xcode
Build the project:
Select the appropriate simulator or device, Iphone 15 Pro was used for demonstration.
Press Cmd + R to build and run the application.


-Instructions to Run the Application-

Launch the Application:
  Open the app on your simulator or device.
Log Sleep Data:
  Use the Sleep Time and Wake Time pickers to select sleep and wake times.
  Tap the "Save" button to log your sleep data.
View Sleep Duration:
  The calculated sleep duration will appear in the UILabel below the pickers.
Track Bonsai Growth:
  Observe the bonsai tree’s growth after successful sleep data entry.
