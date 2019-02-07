# BasicAuthentication

Submit and verify client credentials using the 'Basic' HTTP authentication scheme.

General purpose functionality is found in the `BasicAuthentication` module

### Raxx.BasicAuthentication

This module contains raxx specific helpers for extracting an submitting credentials from Raxx requests.


## Notes

I have extracted the general code, from the code that assumes Raxx Request/Response data structures. It would be trivial to implement a plug, might be worth doing just to show how easy it is.

I don't like that there is an implementation of secure_compare in here. I would prefer to use something in the language instead.

This PR has a very simple middleware. In real applications a user might want to configure

    * how the credentials are checked, against env vars or in a database

    * configure the error response

    * configure what logging there is and the log level

    * if requests with no authentication can pass up stack but with no user set.

    * what information about the user should be added to the context


I think it would be easier for a user to implement there own auth middleware using `fetch_basic_authorization` rather than make all the above options configurable.

What could be useful is a general `Raxx.Authentication` middleware that defines a callback from request -> {:ok, user information} or {:error, response}. The implementer could also add things like calls to the logger/metrics in this callback
