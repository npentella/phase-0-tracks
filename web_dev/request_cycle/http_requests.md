# What are some common HTTP status codes?

Any code starting with a '1' ndicates some kind of information.  A common example is '100', which indicates that the headers of the request were accepeted and the requester should continue sending the body of the request.

Anything stating in a '2' indicates success, such as the 200 code.

Codes starting in '3' indicate redirection.  For example, '301' means that a site has been permanently redirected to another page.

Codes starting in '4' or '5' indicate an error, 4 being on the client side anf 5 being on the server side.  Common examples are 404, not found, and 503, service unavailable.

# What is the difference between a GET request and a POST request?  When might each be used?

GET requests data from a resource.

POST submits data to a resource.

GET is often used to load a web page while POST may be used to submit a form.

# What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

A cookie is a small piece of information that is saved in the client's browser.  It can be used to control sessions, such as whether the user is logged in.  Cookies are also used to personalize and save preferences, in addition to tracking purposes.