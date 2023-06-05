# Flutter Web App with GoRouter

This project is a simple web application created with Flutter, designed to demonstrate the implementation of an easy and efficient routing process. Go_router version 7.1.1 provides the basis and from there some custom template classes have been created to optimise the workflow. The goal of this repository is to provide a practical and well-structured example of how routing can be organised in a Flutter application for future use.

## How does it work?

Routing in this application is handled through a series of classes that work together to define and manage routes.

 1. BaseRoute: This is an abstract class that represents a base route in the application. Every route in the application inherits from this class and provides implementations for path, name, and createChild.
 2. RRouter: This class defines a static instance of GoRouter that is used to configure all routes in the application. It defines routes and handles errors in a uniform way.
 3. MainView: This is a stateless widget that encapsulates the main view of the application. It accepts an optional child that is displayed centred on the screen. All views will pass through this class. 

 ## How can I use it?
 

 1. **Define your application's routes:** Create classes that inherit from BaseRoute for each route in your application. Implement path, name, and createChild for each route.
 2. **Configure the router:** Create an instance of GoRouter and add your application's routes to the routes property. You can also configure an errorPageBuilder to handle cases where an attempt is made to navigate to a route that does not exist in the router configuration.
 3. **Build the application:** Create a class that inherits from StatelessWidget for your application. Use MaterialApp.router to integrate the routing system with the rest of your application. You can pass the GoRouter instance you created in step 2 to the routerConfig property of MaterialApp.router.
 4.  **Create the main view:** For each route in your application, create a widget that represents the main view. You can use `MainView` as a basis for this.


##  Add Menu
At this moment Menu is not fully implemented, however the code below is an example on how to use it.
`MainView` is in charge of display the menu itself and other views as a footer for example.

### MenuItem

The `MenuItem` class represents a single menu item, and contains the data necessary for navigation, such as the text to be displayed in the menu, the path to navigate to when it is selected, and any parameters you may need for navigation.

    class MenuItem { 
	    final String text; 
	    final String route; 
	    final Map<String, dynamic> params; 

	    MenuItem({
		    required this.text, 
		    required this.route, 
		    Map<String, dynamic>? params
		    }) : params = params ?? {}; 
	    }

 - **text** : The text displayed in the menu for this item.
 - **route**: The route to which the application should navigate to when this item is selected.
 - **params**: An optional map of parameters that may be needed for navigation. By default, it is an empty map.

###  MenuItemBuilder

`MenuItemBuilder` is a helper class that generates a list of MenuItem objects. It uses a BuildContext to access the data needed to build the menu items.

    class MenuItemBuilder { 
	    static List<MenuItem> build(BuildContext context) { 
		    return [ 
			    MenuItem(text: 'Home', route: '/'), 
			    MenuItem(text: 'Test', route: '/test'}), 
		    ]; 
	    } 
    }


## Sample 
<p float="left">
<img src="https://github.com/rodri2d2/FlutterMovieApp/blob/develop/gifs/upToNow.gif" width="200" />
<br />
