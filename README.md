# Assignment 1

## 1. What are Stateless and Stateful Widgets?
- **Stateless Widgets**: Immutable widgets that don’t store state; their appearance or behavior cannot change after being built.
- **Stateful Widgets**: Can change over time as they hold mutable state, allowing dynamic behavior and UI updates.

## 2. Widgets Used in This Project
- **MaterialApp**: Main app structure with theme and home.
- **Scaffold**: Provides the main page structure with AppBar and body.
- **AppBar**: Displays the app’s title.
- **Text**: Displays text, such as the welcome message and user information.
- **Row** and **Column**: Arranges widgets vertically or horizontally.
- **Card** (InfoCard): Used to display NPM, name, and class.
- **InkWell** (ItemCard): Wraps widgets to detect taps and show SnackBars.
- **GridView**: Arranges ItemCards in a grid layout.

## 3. What is setState()?
- **Use-case**: setState() is used to update the UI by modifying variables that the widget depends on.
- **Variables Affected**: Any variable within a State class. In this project, we don’t use it as we’re only dealing with StatelessWidget.

## 4. Difference Between const and final
- **const**: Compile-time constant, meaning the value must be determined when compiled.
- **final**: Run-time constant, so it can be assigned later, but only once.

## 5. Step-by-Step Implementation
1. Created menu.dart for a clean structure.
2. Moved MyHomePage, InfoCard, ItemHomepage, and ItemCard classes to menu.dart.
3. Modified main.dart to import menu.dart.
4. Changed MyHomePage to a StatelessWidget and removed unnecessary code.
5. Added NPM, Name, and Class to MyHomePage.
6. Created InfoCard to display user info.
7. Created ItemHomepage and ItemCard for feature buttons.
8. Integrated InfoCard and ItemCard into MyHomePage's build() method.
9. Updated theme color in main.dart.
10. Ran flutter analyze to ensure no errors.

# Assignment 2

## 1. What is the purpose of `const` in Flutter? Explain the advantages of using `const` in Flutter code. When should we use `const`, and when should it not be used?

### Purpose of `const` in Flutter
`const` makes widgets immutable, so they don’t change during runtime. It helps optimize the app by telling Flutter not to rebuild that widget, saving time and resources.

### Advantages of Using `const`
- Improves app performance by reducing rebuilds and memory usage.
- Makes code cleaner and reduces errors from unexpected changes.

### When to Use and Not Use `const`
- **Use `const`** for widgets that won’t change, like static text or icons.
- **Avoid `const`** for widgets that need to change during runtime (e.g., inside `setState()`).

## 2. Explain and compare the usage of `Column` and `Row` in Flutter. Provide example implementations of each layout widget!

### Column
`Column` arranges widgets vertically, useful for stacking items top to bottom.

```dart
Column(
  children: [
    Text('Item 1'),
    Text('Item 2'),
    Icon(Icons.star),
  ],
)
```

### Row
`Row` arranges widgets horizontally, from left to right.

```dart
Row(
  children: [
    Icon(Icons.star),
    Text('Item 1'),
    Text('Item 2'),
  ],
)
```

Both `Column` and `Row` are essential for layouts, with the main difference being their axis: Column is vertical, Row is horizontal.

## 3. List the input elements you used on the form page in this assignment. Are there other Flutter input elements you didn’t use in this assignment? Explain!

### Input Elements Used
- **TextFormField**: Used for entering name and description.
- **Number Input Field**: Used for entering the amount as an integer.

### Other Input Elements in Flutter
Flutter has other input options, such as:
- **Checkbox**: For true/false options.
- **Switch**: Similar to a toggle switch.
- **Slider**: For selecting a value within a range.
- **DatePicker**: For date selection.

Only text and number inputs were needed for this assignment.

## 4. How do you set the theme within a Flutter application to ensure consistency? Did you implement a theme in your application?

### Setting the Theme in Flutter
To set a theme, we define `ThemeData` in `main.dart`, where we can set colors, font styles, etc.

### Did I Implement a Theme?
Yes, I set a color scheme for primary and secondary colors in `ThemeData`, which keeps the app’s look consistent.

## 5. How do you manage navigation in a multi-page Flutter application?

### Navigation in Flutter
Flutter manages navigation with `Navigator.push` and `Navigator.pop`.  
- `push` moves the user to a new page, and `pop` returns to the previous one.
- A drawer widget can also be used for quick access to different pages.
```

Assignment 8
Explain why we need to create a model to retrieve or send JSON data. Will an error occur if we don't create a model first?
Creating a model to retrieve or send JSON data is essential because it provides a structured way to handle data. Models define the schema of the data, ensuring that the data is consistent and valid. They also provide methods to serialize and deserialize data, making it easier to convert between JSON and the application's internal data structures.

If we don't create a model first, we might encounter several issues:

Data Inconsistency: Without a model, there is no guarantee that the data will have the expected structure, leading to potential errors when accessing or manipulating the data.
Validation Errors: Models often include validation logic to ensure that the data meets certain criteria. Without a model, invalid data might be processed, causing errors or unexpected behavior.
Serialization/Deserialization Issues: Converting between JSON and the application's data structures can be error-prone without a model, leading to potential bugs and data corruption.
Explain the function of the http library that you implemented for this task.
The http library in Flutter is used to make HTTP requests to a server. It provides a simple and convenient way to perform network operations such as GET, POST, PUT, and DELETE requests. In this task, the http library is used to communicate with the Django backend, sending and receiving JSON data.

Key functions of the http library include:

Sending Requests: The library allows sending various types of HTTP requests (e.g., GET, POST) to specified URLs.
Handling Responses: It provides methods to handle the responses from the server, including parsing JSON data.
Error Handling: The library includes mechanisms to handle network errors and exceptions, ensuring robust communication with the server.
Explain the function of CookieRequest and why it’s necessary to share the CookieRequest instance with all components in the Flutter app.
CookieRequest is a class used to manage HTTP requests that require session management through cookies. It handles the storage and transmission of cookies, allowing the application to maintain a session with the server.

Sharing the CookieRequest instance with all components in the Flutter app is necessary because:

Session Management: It ensures that all requests share the same session, allowing the server to recognize the user across different requests.
Authentication: It maintains the authentication state, ensuring that the user remains logged in and can access protected resources.
Consistency: Sharing a single instance ensures that all components have access to the same cookies and session data, preventing inconsistencies and potential errors.
Explain the mechanism of data transmission, from input to display in Flutter.
The mechanism of data transmission from input to display in Flutter involves several steps:

User Input: The user enters data into a form or interacts with the UI.
Sending Request: The app sends an HTTP request to the server using the http library or CookieRequest, including the user input as JSON data.
Server Processing: The server processes the request, performs any necessary operations (e.g., database updates), and sends a response back to the app.
Receiving Response: The app receives the response from the server, typically as JSON data.
Updating UI: The app parses the JSON data and updates the UI to reflect the new state, displaying the data to the user.
Explain the authentication mechanism from login, register, to logout. Start from inputting account data in Flutter to Django’s completion of the authentication process and display of the menu in Flutter.
The authentication mechanism involves several steps:

Registration:

User Input: The user enters their username and password in the registration form.
Sending Request: The app sends a POST request to the Django backend with the registration data.
Server Processing: Django creates a new user account and returns a success response.
Updating UI: The app displays a success message and navigates the user to the login page.
Login:

User Input: The user enters their username and password in the login form.
Sending Request: The app sends a POST request to the Django backend with the login credentials.
Server Processing: Django authenticates the user and returns a success response with session cookies.
Updating UI: The app stores the session cookies, displays a success message, and navigates the user to the main menu.
Logout:

Sending Request: The app sends a POST request to the Django backend to log out the user.
Server Processing: Django invalidates the session and returns a success response.
Updating UI: The app clears the session cookies, displays a success message, and navigates the user to the login page.
Explain how you implement the checklist above step by step! (not just following the tutorial).
Ensure the deployment of your Django project is running smoothly:

Set up the Django project and ensure all dependencies are installed.
Configure the database and run migrations.
Start the Django development server and verify that all endpoints are accessible.
Implement the registration feature in the Flutter project:

Create a registration form in Flutter with fields for username and password.
Implement the logic to send a POST request to the Django backend with the registration data.
Handle the response and display appropriate messages to the user.
Create a login page in the Flutter project:

Create a login form in Flutter with fields for username and password.
Implement the logic to send a POST request to the Django backend with the login credentials.
Handle the response, store session cookies, and navigate the user to the main menu.
Integrate the Django authentication system with the Flutter project:

Use CookieRequest to manage session cookies and ensure consistent authentication state across the app.
Implement the logic to handle login, registration, and logout requests.
Create a custom model according to your Django application project:

Define the model in Django with the required fields.
Create and run migrations to update the database schema.
Create a page containing a list of all items available at the JSON endpoint in Django that you have deployed:

Implement a view in Django to return a list of items as JSON.
Create a Flutter page to fetch and display the list of items.
Display the name, price, and description of each item on this page:

Parse the JSON response in Flutter and extract the relevant fields.
Update the UI to display the name, price, and description of each item.
Create a detail page for each item listed on the Product list page:

Implement navigation from the list page to the detail page when an item is tapped.
Create a Flutter page to display the details of the selected item.
Display all attributes of your item model on this page:

Update the detail page to display all attributes of the item model.
Add a button to return to the item list page:

Add a button on the detail page to navigate back to the list page.
Filter the item list page to display only items associated with the currently logged-in user:

Update the Django view to filter items based on the logged-in user.
Ensure the Flutter app sends the appropriate authentication headers with the request.

