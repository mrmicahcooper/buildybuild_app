#Buildy Build
Buildy build is a simple website builder you can use for all the peolple that ask you to make them a website when you tell them you're a web developer.

Buildybuild's goal is to be simple to install an give to people.

##Instructions
Instructions assume you already have [Git](http://git-scm.com/) installed...

###Install


Clone the repository by pasting this into your terminal and go to it

`git clone git://github.com/mrmicahcooper/buildybuild.git`

`cd buildybuild`

Install bundler if you don't already have it and run bundle:

`gem install bundler`

 `bundle`

run the following commands for setup:

rake db:setup

rake db:migrate`

###Deploy
These steps are for deploying on Heroku. You'll need to [create an account on Heroku](https://api.heroku.com/signup) if you haven't already. [Follow the heroku documentation](http://devcenter.heroku.com/articles/quickstart) or paste the following into your terminal.


`gem install heroku`

`heroku create`
`git push heroku master`
`heroku rake db:migrate`

###Give to people
- Go to Heroku and get the url for they app and give it to whoever has been bugging you for a site.
- Send them to [buildybuild.com](http://buildybuild.com) for instructions on how to use the site.
