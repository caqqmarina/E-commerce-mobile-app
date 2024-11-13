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
