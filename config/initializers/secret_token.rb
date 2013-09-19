# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Einbeiniger::Application.config.secret_key_base = ENV['SECRET_KEY_BASE'] || 'a06899203c4e11825949f957e7ab0b869f80807f27bfbed5db54feb319f0dad92feb809bded3f9d3dd5435eaf724827d6294ba0b3ba0602e772dc65d37dd4670'
