#einbeiniger
The "einbeinige" is a mysterious creature from the german radio scene. He allows scheduling calls for call-in shows with a simple proposal system.


## local testing

Install the ruby bundler gem and run bundle to install the gems:

    gem install bundler --no-ri --no-rdoc
    bundle install

## deployment to heroku
Create a heroku app ```heroku apps:create name``` and push the code.

Use the following to create a secret key on heroku:

    heroku config:set SECRET_KEY_BASE=`rake secret`

