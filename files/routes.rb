# For VueJS
root 'vue#index'

# In routes.rb add for redirecting to VueJS on route no defined 
get '/*path', to: 'vue#index', constraints: ->(req) { !(req.fullpath =~ %r{^\/assets\/.*}) }
