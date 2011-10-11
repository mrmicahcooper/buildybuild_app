#Buildy Build
Buildy build is a simple website builder you can use for all the peolple that ask you to make them a website when you tell them you're a web developer.

Buildybuild's goal is to be simple to install an give to people.

##Install and deploy
Assuming you already had RVM and Git already installed...

####Steps (Install)

- Clone the repository by pasting this into your terminal:

`git://github.com/mrmicahcooper/buildybuild.git

- Install bundler if you don't already have it with:

`gem install bundler

- Run bundler:

`bundle

####(Deploy)
These steps are for deploying on Heroku. You'll need to [create an account on Heroku](https://api.heroku.com/signup) if you haven't already. [Here is their documentation](http://heroku.com). And here are the commands:

`heroku create

`git push heroku

`heroku rake db:migrate


