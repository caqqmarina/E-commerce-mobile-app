# ecommerce_app

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
