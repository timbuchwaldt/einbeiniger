#einbeiniger
## local testing

Install the ruby bundler gem and run bundle to install the gems:

    gem install bundler --no-ri --no-rdoc
    bundle install

## deployment to heroku
Create a heroku app ```heroku apps:create name``` and push the code.

Use the following to create a secret key on heroku:

    heroku config:set SECRET_KEY_BASE=`rake secret`


# todo

- Create proposals controller
- Create cancan-model for elevated privileges
