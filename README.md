##Week 6 assessment: Authentication and Testing

Fork and clone this repo, and submit a pull request when you're done.

###1. Survey sez...
Answer the questions on [this Google Form](https://docs.google.com/forms/d/1pVvxqXfkNZ8OCbnA_mw-I1AkJ4wT6tdNi3q4FDpt31E/viewform?usp=send_form).

###2. My voice is my passport. Verify me.

Check out the `sneakers` directory. It's a Rails app with for people who want to keep track of their shoe closet. All the testing gems are installed for you. Reach out right away if you have configuration issues.

```
$ bundle install
$ rake db:create
$ rake db:migrate
$ rake db:seed
```

1. Add a session-based user authentication system. Nobody should be able to see a `user_shoes_path` without logging in first.
2. Write a feature test where the user signs into the site and is redirected to their own `user_shoes_path`.
3. Write a feature test where the user creates a new pair of shoes and is redirected to the `shoe_path`.
4. Test the validity of a new `User` object with various missing attributes.
5. Test the password length validations that already exist on the `User` model.
6. Test that the `shoes#index` controller action sets the instance variable `@shoes` correctly using a group of 5 shoes.  

