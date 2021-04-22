# novu-style

Novu shared rubocop configuration.

## Updating Cops

Open a pull request with the proposed changes and ask for reviews in other teams.
Remember that cops are ordered alphabetically in `default.yml` and avoid adding paths that only make sense for a particular repository.

## Installation

Add this line to your application's Gemfile:

```ruby
group :test, :development do
  gem 'novu-style'
end
```

Or, for a Ruby library, add this to your gemspec:

```ruby
spec.add_development_dependency 'novu-style'
```

And then run:

```bash
$ bundle install
```

## Usage

Create a `.rubocop.yml` in the repository with the following configuration:

```yaml
inherit_gem:
  novu-style:
    - default.yml
```

Additionally you can add new extensions `rubocop-rspec` and `rubocop-rake` to your project in the local `rubocop.yml` file

Now, run:

```bash
$ bundle exec rubocop
```

You do not need to include rubocop directly in your application's dependences. Novu-style will include a specific version of `rubocop` that is shared across all projects.

## Changelog

All changes should be logged in CHANGELOG.md. Also make sure to bump the version (version.rb).
