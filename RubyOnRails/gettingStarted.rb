# rails new MySite
# creates new Rails app
# rails new - This command is the start of ever Rails project


# bundle install
# Installs software packages called gems, listed in Gemfile


# rails server
# Starts Rails development server so we can preview the app in our browser
# Development server is called WEBrick


# Request/Response cycle
# What happens when you visit http://localhost:8000 in the browser? 

# The browser makes a request for the URL http://localhost:8000.
# The request hits the Rails router in config/routes.rb. The router recognizes the URL and sends the request to the controller.
# The controller receives the request and processes it.
# The controller passes the request to the view.
# The view renders the page as HTML.
# The controller sends the HTML back to the browser for you to see.
# This is called the request/response cycle. It’s a useful way to see how a Rails app’s files and folders fit together.

# Create a controller

# rails generate controller Pages 
# Go to folder app/controllers/pages_controller.rb and add:

class PagesController < ApplicationController 

    def home
    end
  
  end

# We have created a controller named Pages
# We added a method called home


# Now lets create a route

Rails.application.routes.draw do

	get 'welcome' => 'pages#home'


# Now lets create a view

<div class="main">
	<div class="container">
		<h1>Hello my name is Jonah.</h1>
		<p>I make Rails apps.</p>
	</div>
</div>

# Now you can visit http://localhost:8000/welcome 
# And the previous html will show up

