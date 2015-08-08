##Week 6 assessment: Authentication and Testing

Fork and clone this repo, and submit a pull request when you're done.

###1. Survey sez...
Answer the questions on [this Google Form](https://docs.google.com/forms/d/1pVvxqXfkNZ8OCbnA_mw-I1AkJ4wT6tdNi3q4FDpt31E/viewform?usp=send_form).

###2. My voice is my passport. Verify me.

Check out the `sneakers` directory. It's a Rails app for people who want to keep track of their shoe closet. All the testing gems are installed for you. Reach out right away if you have configuration issues.

```
$ bundle install
$ rake db:create
$ rake db:migrate
```

1. Add a session-based user authentication system. Nobody should be able to see a `user_path` without logging in first.
2. Write a feature test where the user signs into the site and is redirected to their own `user_path`.
3. Write a feature test where the user creates a new pair of shoes, is redirected to their `user_path`, and sees the shoes listed in the table. This test will fail. Make it pass without using an instance variable for `@shoes`.
4. Write tests for the username length validations that already exist on the `User` model.
5. A `Shoe` should be invalid if any of the four attributes is missing. Write failing tests that reflect this, then make them pass.
6. Write two controller tests for `users#show`.
7. Write two controller tests for the happy path of `shoes#create`.
8. Write two controller tests for the sad path of `shoes#create`, assuming the validations from task 5 are present and you are missing some data.
