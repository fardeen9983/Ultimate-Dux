# React
A Javascript library for building User interfaces
* React was created by Facebook in 2011
* Used on Instagram in 2012
* Open-sourced by 2013
* 2015 - React native is released to build apps
* React 15 was released in 2016

## Why React
* Flexibility
  * Less opinionated
  * A library, not a framework
  * You can use it to create
    * Web apps
    * Static sites
    * VR experiences
    * Mobile apps
    * Desktop apps
    * Server rendered apps
  * Learn React once and write applications everywhere
  * The flexibility of React comes from its separation of renderer from React itself
    * For web-app : react-dom
    * For react-native: react-native
    * For React in VR: react-vr
    * [Other renderers](https://www.github.com/chentsulin/awesome-react-renderer)
    * For server-side rendering (also used for static site generation) use :
      * Gatsby
      * Next.js
      * Phenomic
    * Broad Browser Support
* Developer experience
  * Simply APi, easy to use. No need tor refer docs too much
  * Uses JSX to create HTML elements using JS
  * ALso gives power to JS rather than creating syntax in HTML to control elements
  * Simple Project creation method using `create-react-app` command
  * Each component is atomic and can be modified individually
  * Uses hot reload to reflects changes quickly
* Corporate investment
  * Created and maintained by Facebook and used in its platform
  * Active development
  * Provides `react-codemod` to bring over changes from legacy to new versions in case of breaking changes
* Community support
  * Huge active community
  * Popular in the developer community
  * High usage statistics
  * Online React community [Reactiflux](https://www.Reactiflux.com)
  * Many respected companies worldwide use React
  * Ready-made component libraries
    * [Microsoft Office UI Fabric React](https://developer.microsoft.com/en-us/fluentui)
    * [Material UI](https://material-ui.com)
    * [React Bootstrap](https://react-bootstrap.github.com)
    * [Other libs](https://www.github.com/enaqx/awesome-react)
  * Ecosystem
    * React Router
    * Redux
    * Mobx
    * Jest
    * GraphQL
    * NExt.js
* Performance
  * Uses Virtual Dom
    * Updating the DOM is expensive
    * React minimizes DOM changes
    * Without Virtual DOM, websites blindly updated the DOM using new states even for minor changes
    * Virtual DOM compares existing DOM state and the changes and finds the least expensive way to update it
    * This avoids layout thrashing (recalculating all element positions when DOM changes)
    * Saves battery and CPU usage
    * Enables simple programming model
  * When minified React and React DOM is sized up to be around 35 KB only
    * Alternative to this with the smaller size - Inferno, Preact
* Testability
  * Little to no configuration is required for setting up UI testing
  * Testing is already configured out of the box using the `create-react-app` command
  * Can be tested in memory via Node
  * Fast testing
  * Can write reliable, deterministic tests
  * Tests can be written and updated quickly
  * Majority of the components can be written as Pure plain functions (always return the same output for a given input)
  * Testing frameworks to use: Mocha, Jasmine, Tape, Ava, Jest, QUnit, React Testing  Library
* Declarative for Dynamic HTML
  * Uses declarative language (model UI and state)

## Tradeoffs
* Framework Vs. Library
  * Frameworks
    * are more opinionated
    * cause less decision fatigue
    * useless setup overhead
    * have more cross-term consistency
    * Limited flexibility: Hard to deviate from and forces you to do things in a certain way
    * Large and full of features: Hard to customize and use the whole thing
  * Libraries
    * are lightweight
    * use in existing apps
    * follows pick what you need an approach
    * are free to pick the best technologies. But
    * popular boilerplates do exist like `create-react-app`
* Concise vs. Explicit
  * React trades off concise nature for being more explicit where we have to spend more time wiring up code to get the desired feature but this helps achieve better predictability of code behavior
  * Example: React uses one-way binding (that requires an explicit change handler) in place of two-way binding (less coding, automatic). This allows us to have more control over what happens at every event. It is more explicit and easier to debug. Though this does require more coding.
* Template-centric vs. JS-centric
  * Uses JS as a tool to create and manage conditions instead of creating unique syntaxes powering JS in HTML
  * So it uses plain javascript when handling conditionals, loops, events, etc. making its library smaller
  * Template approach
    * requires less JS knowledge
    * avoids confusion with JS binding
    * Uses Rule of least power (limits language feature that can be used)
  * JS-centric approach
    * Little framework-specific syntax
    * Fewer component to learn
    * Less code
    * Easy to read and debug
    * Encourages improving JS skills (modern)
* Separate template vs. Single File
  * Traditionally we follow MVC approach for separation of business login (JS) and UI (HTML)
  * React brings them together in a cohesive component using JSX & JS
  * React treats every component as a separate concern
  * On another hand, handling intertwined concerns in separate files can hinder debugging and slows feedback
  * With React we can handle styling in separate files
* Standard vs. Non-standard
  * Standard web applications implement the **Web Component Standard**
  * It is composed of four core technologies
    * Templates: Inert, reusable markup
    * Custom Elements: Define our elements
    * Shadow DOM: Encapsulated styling
    * Imports : Bundle HTML,JS and CSS
  * It isn't much used because of
    * Spotty browser support - for that to work we need to polyfills
    * Don't enable anything new
    * JS libs keep improving
    * Only runs in Browser
  | *                   | Web component features           | React |
  | ------------------- | -------------------------------- |
  | Templates           | JSX, JS                          |
  | Custom Elements     | React components                 |
  | Shadow DOM          | CSS Modules, CSS in JS, "inline" |
  | Bundle into Imports | One component per file           |
* Community vs. Corporate backing
  * Driven by Facebook's needs
  * Full-time development staff
  * Over 1000 contributors
  * 50,000 components in production


## Why not React?
* JSX differs from HTML
  * JSX compiles to JS
  * Differs in tags and attributes
  * Inline css is used as JSON
  * Comments made in JS style
  * Convert HTML to JSX
    * Find/Replace
    * Use Online compiler
    * `htmltojsx` node package
* React requires build step
  * Mostly required for most JS frameworks
    * To minify code
    * Transpile to use latest features in unsupported platforms
    * Test and Lint
    * Popular transpilers - Babel, TypeScript
* Potential version conflicts
  * Runtime leads to potential version conflicts
  * Need to keep react components on the same version in the same page
  * Check for version compatibility of ecosystem libs
  * Avoiding conficts
    * Select a Standardize React version to work on
    * Upgrade React when upgrading librraies
    * Ugrade as a team
* Old features appear in searches
  * Some content is outdated
  * This may be because the features are extracted from React Core
  * Example:
    * `react` DOM package changed to `react-dom`
    * `React.createClass` moved to `create-react-class` package
    * `PropTypes` removed from `react` package and added to separate package `prop-types`
    * Mixins are replaced by concepts like Higher order components, render props, etc
* Decision fatigue
  * React is light weight and unopinionated which leaves the decision of choosing aditional deatures to us
  * This leads to having may options making it difficult to choose from
  * Decisions factor
    * Dev environment
      * Choose popular dev env like `create-react-app` or create one such by yourself
      * Collection of [React Startet Project](http://www.javascriptstuff.com/react-starter-projects)
    * ES class or createClass
      * ES class is more popular as it avoids importing an extra library `create-react-class`. But the later is more popular for new devs
    * Types
      * Can be handled by
        * Flow
          * Project by Facebook
          * Its a static type checker for JS
          * Uses `type` to define JS ptopTypes
          * Uses annotation
          * Types are checked whenever flow changes
        * PropTypes (recomended)
          * Types are checked only during runtime and development cycle
          * Uses maps to define Props type
        * TypeScript
          * Stricter JS
          * Used interfaces to define prop types
          * Checked during compilation
    * State
      * Defined as App data
      * State management methods
        * Plain React - component state
        * Flux - Centralised state
        * Redux - Most popular, centralised state
        * Mobx - Observalble data sructure
    * Styles
      * Recommended method - Plain CSS, Sass, Load

# Basic concepts :
* Components
  * Are basically like functions that produce custom HTML elements
  * Take input props and state and produce User interface as the output
  * Reusable and composable
  * No need to invoke. Rather states as an HTML element : `<Component/>`
  * Can manage a private state
  * Components can be either Function or Class based
  * They can be stateful and have side effect or be purely presentational
  * Props are akin to the list of attributes HTML element posses
  * State manages internal field
  * State object can be changed while the prop fields remain fixed
* Reactive Updates
  * When the state of a component changes, the corresponding UI changes as well
  * React will take care of how and where the changes are to be reflected itself
* Virtual representation of views in memory
  * Generates HTML using JavaScript
  * Does not use any HTML template language
  * So no extra step needed to parse this HTML template
  * Helps manages Virtual DOM

## Simple example:
```js
function Hello() {
  return <div> Hello World </div>;
}

ReactDOM.render(
  <Hello/> ,
  document.getElementById('node')
);
```
* The components can  be created using a function which basically return a HTML element written in JSX
* The ReactDOM uses the render function to place the given React component into an exisiting HTML element which acts as the entry point for our app
* The Hello function returns a JSX element which is converted to browser compatible code using JSX extensions provided by Babel library. So the converted format for line 2 of JSX code in above example will be

  ```js
  "use strict"

  React.createElement(
    'div',
    null,
    "Hello World"
  );
  ```
  The above code is actually executed by the browser. The arguments are as follows
  1. The element to be created
  2. Attributes placed in JS map
  3. Child/Inner HTML content

  The line `<Hello/>` is equivalent to the following JS code:
  ```js
    React.createElement(Hello,null)
  ```
## useState : Simple React Hook
Each React componnet maintains its internal state and provides mthods to modify it. These can be accessed using the `useState` method provided in the main `react` package.
```js
const [state, setState] = React.useState(initialValue);
```
`state` can be any valid JS type and `setState` is a function that sets the state. `useState` takes an `initalValue` for the `state`.

The `state` of a React component can only be accessed internally by itself.

`useState` is an example of React Hook where we simply bind a Component with its state.

## Multiple Components
It is imperative in React that only one component can be passed to the `render` method, because that is basically a function call/ But sometimes a situation may arise when we want to render multiple components in the same page. We can do this using follwoings methods

1. Enclose the components in a single `div`
    ```js
    ReactDOM.render(
        <div>
            <Button />
            <Display />
        </div>,
        document.getElementById('main')
    );
    ```
    This does introduce a new DOM element and hence is not that much used
2. Pass an array of components to the render method
    ```js
    ReactDOM.render(
        [<Button />,<Display />],
        document.getElementById('main')
    );
    ```
3. Another method is to use a special component called `React.Fragment` to group them together without introducing a new DOM element
    ```js
    ReactDOM.render(
      <React.Fragment>
          <Button />
          <Display />
      </React.Fragment>,
      document.getElementById('main')
    );
    ```
    This method is so much in use that a shortcut was introduced rewritting it as follows
    ```js
    ReactDOM.render(
        <>
            <Button />
            <Display />
        </>,
        document.getElementById('main')
    );
    ```
4. Or we can simply create another component to place them as child elements
    ```js
    // Main app
    function App(){
        return (
            <div>
                <Button />
                <Display />
            </div>
        )
    }
    ReactDOM.render(
        <App />,
        document.getElementById('main')
    );
    ```
## Props
These are basically what attributes are to HTML elements. Using props we can pass objects like attributes in form a JS object (Key value pairs) to the Component.

Each Function Compone may recieve props as a function paramater. These are immutable fields. We can also pass references to methods as props

```js
function App(){
    const [counter, setCounter] = React.useState(0);
    return (
        // Defining custom prop
        <Display message={counter} />
    )
}

function Display(props){
    // Using the props
    return (
        <div>{props.message}</div>
    );
}
```
## Class Components
* Another method for creating React components is by creating classes that extend the `React.Component` class and the return statement of thee JSX element in the function is placed in a special function called `render`.
* The render method is called when the component is executed by the React DOM.
* The `props` for such comppnents are actually placed insise the class as memeber variables.
Example
```js
class App extends React.Component{
  render(){
    return (
      <div>
        Hello {this.props.title}
      </div>
    );
  }
}

ReactDOM.render(
  <App title="Ultimate-Dux"/>,
  document.getElementById("main")
);
```
The next important thing in the Class Component is the State of the component which is managed by the Class as an instance variable. We can access it in the class scope using the `this` keyword. It is best to initialise it in the class constructor
```js
class App extends React.Component{

  constructor(props){
    super(props);
    this.state = {
      profiles : testData
    };
  }
  // Other way ti do the above is thorugh class filed syntax
  // state = { profiles : testData }

  render(){
    return (
        <div>
            <div className="header">{this.props.title}</div>
            <Form/>
            <CardList profiles={this.state.profiles}/>
        </div>
    );
  }
}
```
## Styling
We can irectly use Global CSS stylesheets to style our React web app but we can also use special JS based styling as well
```js
function App(){
  return (
    <div className="info" style={{ color : Math.random() < 0.5 ? "red":"green">}}>How do you like this?</div>
  );
}
```
* In the above exMple we use global and inline css both
* `className` is used to add css classes just like HTML `class` attribute
* `style` attribute is a bit special. It actually taks a JS literal (an onject), with camelCased style attributes and strings as their values

## User Input
* Using the HTML Form elements we can easily create User forms with added JSX features
* `action` attribute can be replaced by `onSubmit` method
* We can also create special JSX references to Elements similar to ids in HTML using `React.createRef` method
```js
class Form extends React.Component {
    userInputUsername = React.createRef();
    handleSubmit = (event) =>{
        // Prevent Defualt Event submit
        event.preventDefault();
        // Access the reference elemet's value
         console.log(this.UserNameInput.current.value);
    }
    render() {
        return (
            <form onSubmit={handleSubmit}>
                <input type="text" placeholder="Github Username" ref={this.userInputUsername} required/>
                <button>Add Card</button>
            </form>
        );
    }
}
```
The other way around is to use controlled components with the state. This is a bit more verbose but also makes react handle all input changes.
```js
class Form extends React.Component {
    state = { userName : ''};
    handleSubmit = (event) =>{
        // Prevent Defualt Event submit
        event.preventDefault();
        console.log(this.state.userName)
    }
    render() {
        return (
            <form onSubmit={this.handleSubmit}>
                <input
                    type="text"
                    placeholder="Github Username"
                    value={this.state.userName}
                    onChange = {event => this.setState({userName : event.target.value})}
                    required
                />
                <button>Add Card</button>
            </form>
        );
    }
}
```
The `setState` function is predefined and takes an object literal which is merged with the existing state to update the Component. The `input` filed with only value attribute based on state will be a read only field. We have to attach a callbakc for the `onChange` event for it to work. Next we can access the current value from the state  object itself.
## Resources
1. Book : [Begginning JS](http://www.jscomplete.com/beginning-js)
2. Labs : [JS Labs](http://www.jscomplete.com/js-labs)
3. Commonly faced problems in React : [Link](http://www.jscomplete.com/react-cfp)
4. Blog : [Why React](http://www.jscomplete.com/why-react)
5. Code Playground : [JavaScript Playground](http://www.jscomplete.com/playground)
6. Article : [CSS in JS](https://github.com/MicheleBertoli/css-in-js)