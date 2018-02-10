# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

Rails.application.config.assets.precompile += %w( main/index.scss )
Rails.application.config.assets.precompile += %w( main/mypage_student.scss)
Rails.application.config.assets.precompile += %w( users/users_layout.scss )
Rails.application.config.assets.precompile += %w( users/top.scss )
Rails.application.config.assets.precompile += %w( users/pass_forgot.scss )
Rails.application.config.assets.precompile += %w( users/pass_forgot2.scss )
Rails.application.config.assets.precompile += %w( users/new.scss )
Rails.application.config.assets.precompile += %w( users/logout.scss )
Rails.application.config.assets.precompile += %w( users/top.js )



