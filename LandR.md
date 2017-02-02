# Registration
- Create a form contains the basic information you want stored 
    (name, email, password, birthday, address, phone number)
    - Validate the form
        - all the fields filled
        - name contain only alpha chars
        - email match the correct email format, (email regex)
        - password 6 chars, contains a number, special char 
        - birthday follows the mm/dd/yyyy format, at least 18
        - address 12 chars, contains a number, (address regex????)
        - phone number 10 chars, all numbers
        - REGEX http://regexr.com/
    - if the form is not valid 
        - displays error messages
    - else 
        - save the user info
        - redirect to home page

# Login

- Create a form contains email, password
    - checks the form for correct information 
        - check to see if the form was filled out
        - check the email to see if it is stored in our DB
            - if it is stored
                - continue login 
                - check the password
                    - if that matches the account information
                        - LOGIN!
                    - else 
                        - redirect back to main login page and try again
            - else 
                - redirect back to main login page and try again