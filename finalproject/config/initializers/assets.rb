# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )


Rails.application.config.assets.precompile += %w( homepage.css )
Rails.application.config.assets.precompile += %w( profile.css )
Rails.application.config.assets.precompile += %w( login.css )
Rails.application.config.assets.precompile += %w( event.css )
Rails.application.config.assets.precompile += %w( flight.css )

Rails.application.config.assets.precompile += %w( confirm.css )
Rails.application.config.assets.precompile += %w( account.png )
Rails.application.config.assets.precompile += %w( flight.png )
Rails.application.config.assets.precompile += %w( home.png )
Rails.application.config.assets.precompile += %w( hotel.png )
Rails.application.config.assets.precompile += %w( logo_1.png )
Rails.application.config.assets.precompile += %w( signin.png )
Rails.application.config.assets.precompile += %w( user.svg )
