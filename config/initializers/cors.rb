# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

<<<<<<< HEAD
# Uncomment this chunk below
# Add origin * to allow for all origins
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'
=======
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'example.com'
>>>>>>> 6a5efc32d6bd901d66035ed937996139a44c30e7

    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
