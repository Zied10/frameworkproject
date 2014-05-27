# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Assistant::Application.config.secret_key_base = '430e9aa724e2cf14f4a49aed9825e116a030620094e7d9ba17ec37a4ace4e82dfe6da0c843c422d37c45de1aed7233dcc04255e6f845031ec3f5bf5dd5d54cca'
