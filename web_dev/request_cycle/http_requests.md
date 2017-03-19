<!-- 
1. What are some common HTTP status codes?
200 OK: the request has succeeded. The information returned with the response is dependent on the method used in the request.
300 Multiple Choices: the requested resource has different choices and cannot be resolved into one. For example, there may be several index.html pages depending on which language is wanted (such as Dutch).
301 Moved Permanently: the requested resource has been assigned a new permanent URI and any future references to this resource should use one of the returned URIs.
401 Unauthorized: the request requires user authentication. The response MUST include a WWW-Authenticate header field containing a challenge applicable to the requested resource.
403 Forbidden: the server understood the request, but is refusing to fulfill it. Authorization will not help and the request SHOULD NOT be repeated.
404 Not Found: the server has not found anything matching the Request-URI. No indication is given of whether the condition is temporary or permanent.

2. What is the difference between a GET request and a POST request? When might each be used?
They're two commonly used methods for a request-response between a client (browser) and server. 
GET - Requests data from a specified resource
POST - Submits data to be processed to a specified resource
GET requests can be cached
GET requests remain in the browser history
GET requests can be bookmarked
GET requests should never be used when dealing with sensitive data
GET requests have length restrictions
GET requests should be used only to retrieve data
GET is less secure compared to POST because data sent is part of the URL.

POST requests are never cached
POST requests do not remain in the browser history
POST requests cannot be bookmarked
POST requests have no restrictions on data length
POST is a little safer than GET because the parameters are not stored in browser history or in web server logs.

3. Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests? 
An HTTP cookie (web cookie, browser cookie) is a small piece of data that a server sends to the user's web browser, that may store it and send it back together with the next request to the same server. Typically, it's used to know if two requests came from the same browser allowing to keep a user logged-in, for example.
Cookies are mainly used for these three purposes:
Session management (user logins, shopping carts)
Personalization (user preferences)
Tracking (analyzing user behavior)
-->