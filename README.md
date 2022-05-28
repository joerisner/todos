# todos

Simple todos app in Rails using Hotwire, Turbo, and Tailwind as a CSS processor - all without a single full-page re-render or redirect.

# Getting started

1. Clone/download this repository
2. Install the necessary ruby version (defined in `.ruby-version`) and gems (`bundle install`)
   - _This application uses PostreSQL as a database so you'll need to [install & setup postgres locally](https://www.sqlshack.com/setting-up-a-postgresql-database-on-mac/) as well_
3. Run migrations `bin/rails db:migrate`
4. Run `bin/rails tailwindcss:build` to build Tailwind CSS assets
5. Start a server on port 5000 `bin/rails s`
6. Navigate to `localhost:5000` to start adding todos!
