# twitter-bootstrap-rails-demo

## create rails app

    % cd ~/Dropbox/projects
    % rvm use ruby-1.9.2-p318
    % rvm gemset create rails329
    % rvm gemset use rails329
    % gem install rails
    # uses ~/.railsrc:
    # rails 3.2+ only
    --skip-javascript
    --skip-bundle
    --skip-test-unit
    --skip-git # no .gitkeeps!!!

    % rails new twitter-bootstrap-rails-demo
    % cd twitter-bootstrap-rails-demo
    % rvm rvmrc create
    % git init .

    # add to .gitignore:
    .bundle
    db/*.sqlite3
    log/*.log
    tmp/
    .sass-cache/

    # update Gemfile:
    group :development do
      gem "sqlite3"
    end
    group :production do
      gem "pg"
    end
    gem 'haml-rails'

    % bundle install
    % git add .
    % git commit -m "initial commit"


## heroku

### install stand-alone client

<https://toolbelt.heroku.com/standalone>

    % wget -qO- https://toolbelt.heroku.com/install.sh | sh
    % echo 'PATH="/usr/local/heroku/bin:$PATH"' >> ~/.bashrc

### initialize app

<https://devcenter.heroku.com/articles/rails3>

    % heroku login
    Enter your Heroku credentials.
    Email:
    Password (typing will be hidden):
    Authentication successful.

    % heroku create
    Creating enigmatic-shore-7364... done, stack is cedar
    http://enigmatic-shore-7364.herokuapp.com/ | git@heroku.com:enigmatic-shore-7364.git
    Git remote heroku added

    % git push heroku master
    % heroku open

## twitter bootstrap'd app

<http://railscasts.com/episodes/328-twitter-bootstrap-basics?view=asciicast>

    % rails g scaffold product name price:decimal --skip-stylesheets
    % be rake db:migrate

    # add to Gemfile, group :assets
    gem 'twitter-bootstrap-rails'
    gem 'therubyracer', :platforms => :ruby
    gem 'less-rails'

    % bundle install
    % rails g bootstrap:install
    # follow railscast steps…
    # git add, git commit
    % git push heroku master
    % heroku run rake db:migrate
    % heroku open

    # add to application.js:
    //= require twitter/bootstrap

    % rails g bootstrap:themed products -f
