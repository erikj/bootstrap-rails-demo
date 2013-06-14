# bootstrap-rails-demo

## About

Demo application demonstrating Rails 3.2.9 application running on Heroku and using Twitter Bootstrap

- <https://devcenter.heroku.com/articles/rails3>
- <http://railscasts.com/episodes/328-twitter-bootstrap-basics?view=asciicast>

For notes documenting steps followed, see `doc/NOTES.md`

## Getting Started

    % git clone git@github.com:erikj/twitter-bootstrap-rails-demo.git
    % cd twitter-bootstrap-rails-demo/
    % bundle install --path vendor --without production
    % bundle install --binstubs
    % cp config/database.yml.example config/database.yml
    % rake db:migrate
    % rails s
    % open http://localhost:3000
