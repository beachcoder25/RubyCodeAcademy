# Generate a new model named Message

rails generate model Message 

# go to db/migrate

class CreateMessages < ActiveRecord::Migration
    def change
      create_table :messages do |t|
              t.text :content
        t.timestamps
      end
    end
  end
  
# Then run

rake db:migrate 

# What did we just do?

# 1. The rails generate model command created a new model named Message. In doing so, Rails created two files:
#    a model file in app/models/message.rb. The model represents a table in the database.
#    a migration file in db/migrate/. Migrations are a way to update the database.

# 2. Open the migration file in db/migrate/. The migration file contains a few things:
#   The change method tells Rails what change to make to the database. Here it uses the create_table method to create a new table in the database for storing messages.
#   Inside create_table, we added t.text :content. This will create a text column called content in the messages tables.
#   The final line t.timestamps is a Rails command that creates two more columns in the messages table called created_at and updated_at. These columns are automatically set when a message is created and updated.

# 3. The rake db:migrate command updates the database with the new messages data model.

# 4. Finally the rake db:seed command seeds the database with sample data from db/seeds.rb.

# Excerise!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

# Now that we have a model, let’s move on to the second and third parts of the request/response cycle and create a controller and a route.

# 1. Generate a controller named Messages.

rails generate controller Messages

# 2. In the routes file, create a route that maps the URL /messages to the Messages controller’s index action.
# config/routes.rb

Rails.application.routes.draw do
  
    get '/messages' => 'messages#index'

# 3. Then in the Messages controller (app/controllers/messages_controller.rb), add an index action:

class MessagesController < ApplicationController
  
    def index
      @messages = Message.all
    end
  end
  

