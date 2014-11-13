# Start virtualenv and configure local environment variables. 
# Perhaps this functionality should be invoked via virtualenvwrapper's postactivate hook?

# Inspired by https://realpython.com/blog/python/flask-by-example-part-1-project-setup/

source ./env/bin/activate

# Local Postgres database
export DATABASE_URL="postgres://mfaulk@localhost/flask-angular-d3-dev"

export APP_SETTINGS="config.DevelopmentConfig" 