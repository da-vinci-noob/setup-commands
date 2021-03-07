# Create New App with optional PostgresqlVue Support
rails new whatsapp_ui_clone --database=postgresql --webpack=vue

# Create and Migrate Database
rails db:create
rails db:migrate

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Start [Setting up VueJS]

# Create Vue Controller 
rails g controller vue index

# In routes.rb add
content in (files/routes.rb)

# Controller for VueJS
class VueController < ApplicationController
  layout "vue"
end

# add in views/layouts/vue.html.erb
content in (files/vue.html.erb)

# Delete Content of vue/index.html.erb

# Rename
hello_vue.js -> main.js

# Create Folder inside app/javascript/packs/
components

# Continued in rails-with-vuejs.txt


# End [Setting up VueJS]
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Start [Setting up TailwindCSS]

yarn add --dev tailwindcss@latest postcss@latest autoprefixer@latest

# * If you see error "Error: PostCSS plugin tailwindcss requires PostCSS 8." then do this. 
yarn remove tailwindcss postcss autoprefixer
yarn add --dev tailwindcss@npm:@tailwindcss/postcss7-compat @tailwindcss/postcss7-compat postcss@^7 autoprefixer@^9

# if no matches found: postcss@^7 then add "\" before ^

# initialize Tailwind

./node_modules/.bin/tailwind init

# Check the tailwind.config.js file. Reference can be taken from files/

# Create file app/javascript/packs/main.css
content in (files/main.css)

# Add in app/javascript/packs/main.js
import './main.css' // TailCSS framework

# add tailwind and autoprefixer to postcss.config.js
content in (files/postcss.config.js)

# End [Setting up TailwindCSS]
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Add Support for Prettier in Ruby:
yarn add -D @prettier/plugin-ruby
