# novu-style

Novu shared style configs.

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

Create a `.rubocop.yml` with the following directives:

```yaml
inherit_gem:
  novu-style:
    - default.yml
```

Now, run:

```bash
$ bundle exec rubocop
```

>NOTE: Any local rules in .rubocop.yml will take precedence over inheriting from a local project file, which will take precedence over inheriting from a gem.

You do not need to include rubocop directly in your application's dependences. Novu-style will include a specific version of `rubocop` that is shared across all projects.
