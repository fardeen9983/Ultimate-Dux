# Import flask module
from flask import Flask, redirect, url_for, request, render_template, make_response

# Create a Flask app with name of current module as argument
app = Flask(__name__)

"""
Flask Extensions :
Flask mail       - SMTP interface
Flask WTF        - Rendering and validation of WTForms
Flask SQLAlchemy - SQLAlchemy support
Flask Sijax      - Interface for Sijax - Python/jQuery library
"""

# --------------------------------------------------------------------------------------#

"""
Create a HTTP route
It is basically a decorator with binds the URL to a particular function
We can access the request and response arguments of the HTTP request
"""


@app.route("/")
# This function will be invoked when anyone accesses the / route on the server
def hello_world():
    # The response of the function will be rendered onto the screen
    return "Hello World"


# Another method to bind URL to a function
app.add_url_rule('/hello', 'hello', hello_world)


# --------------------------------------------------------------------------------------#

# Dynamic URL binding with variables
# Possible converters used as variables : int, float, path
@app.route("/hello/<name>")
def hello_name(name):
    return "Hello " + name


@app.route("/blog/<int:count>")
def blog_count(count):
    return "Totoal Blog posts: " + str(count)


@app.route('/hotel/<float:price>')
def hotel_cost(price):
    return "Your total charges are " + str(price)


# --------------------------------------------------------------------------------------#

"""
If you create you route as /route it will not be accessible through URL pattern of /route/
So to be safe keep route patterns of the following format always : /route/
"""


@app.route("/route/")
def route():
    return "Route accessed"


# --------------------------------------------------------------------------------------#

# Use for url_for method

# Route for admin users
@app.route('/admin')
def hello_admin():
    return "Hello admin"


# Route for guest users
@app.route('/guest')
def hello_guest():
    return "Hello guest"


# Depending on name variable redirect user
# url_for generates a url for given endpoint with the corresponding method
@app.route("/user/<name>")
def hello_user(name):
    # redirect user to admin/guest page depending on name value. Import redirect and url_for
    if name == 'admin':
        return redirect(url_for('hello_admin'))
    else:
        return redirect(url_for('hello_guest'))


"""
The redirect method -> Flask.redirect(location,statuscode,response)
Arguments :
location : URL to be redirected to 
statuscode : Statuscode of response to be sent to browser
    300 : Multiple choices
    301 : Moved permanently
    302 : Found
    303 : See other
    304 : Not modified
    305 : Use Proxy
    306 : Reserved
response : Send the instatnitated response object to hte browser

The abort method -> Flask.abort(code)
code :
    400 : Bad request
    401 : Unauthorized
    403 : Forbidden
    404 : Not found
    406 : Not acceptable
    415 : Unsupported media type
    429 : Too many request 
"""

# --------------------------------------------------------------------------------------#

"""
HTTP methods:
GET : Sends data through URL rewriting in unencrypted format
POST : USed to send data to Server through request body. Secure
HEAD : Same as GET but without response body
PUT : Replace current resource at the URl with the sent one
DELETE : Delete resources at the specified URL 

Global request object members
form    : Dictionary object containing key-value pairs of form-data
args    : Parsed contents of query string part of URL arguments
cookies : Dictionary object holding key-value pairs
files   : Data regarding uploaded files
method  : The HTTP method used
"""


# Example of form submission from login.html and POST/GET requests

# show the HTML page on the /loginPage route
@app.route("/loginPage")
def login_page():
    file = open('login.html', 'r')
    html = file.read()
    file.close()
    return html


# This route is invoked on form submission
@app.route("/login", methods=['POST', 'GET'])
def login():
    # access request parameters. Import request module
    if request.method == 'POST':
        # Access form variable
        name = request.form["name"]
        res = make_response(redirect(url_for('success', name=name)))
    else:
        # Access URL arguments
        name = request.args.get('name')
        res = make_response(redirect(url_for('success', name=name)))
    # Set Cookie key value pair
    res.set_cookie('name', name)
    return res


"""
Using Cookies
Cookies are small files stored on client machine with data as key value pairs used for session management 
"""


# Invoked after /login route to welcome user
@app.route('/success/<name>')
def success(name):
    # Make a Response object

    res = make_response("welcome " + name + "<br>" +
                        "Cookie name : " + request.cookies.get('name'))
    return res


# --------------------------------------------------------------------------------------#

"""
Use Web templates to serve dynamic web content using Jinja2 Template engine
Do so by using delimiters for escaping from HTML
{% ... %} - statements
{{ ... }} - print the result of expressions 
{# ... #} - comments 
# .... ## - for line statements
HTML file used - template.html
"""


# Render the template on the given route. Import render_template
@app.route("/welcome/<name>")
def welcome_name(name):
    # Render the specified File with dynamic arguments. Place the file to be rendered in the templates folder.
    return render_template('template.html', name=name)


# Conditional templates
@app.route("/score/<float:marks>")
def score(marks):
    return render_template("conditional.html", marks=marks)


# Iterative templates
@app.route("/result")
def result():
    dictionary = {'Physics': 50, "Chemistry": 67, 'Mathematics': 78}
    return render_template('iterative.html', result=dictionary)


# --------------------------------------------------------------------------------------#

# This will just make the Flask app run on the server if current module is the main one
if __name__ == '__main__':
    """
    App.run can take following params:
    Host : The server machine on which it will run (127.0.0.1)
    Port : The port on the server machine to be used for handling HTTP requests by Flask (5000
    Option : To be forwarded to underlying server
    debug : Set it to True to begin Flask app in Debug mode where basically the server will reload itself 
            if code changes along with some debugging features
    """
    app.run(debug=True)
