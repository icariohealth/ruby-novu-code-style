# novu-style

Novu shared rubocop configuration.

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
inherit_from:
  - https://raw.githubusercontent.com/novu/ruby-novu-code-style/master/default.yml
```

Now, run:

```bash
$ bundle exec rubocop
```

## Code Climate setup

For repositories that are tracked in Code Climate, add the following at the top of `.codeclimate.yml`:

```yaml
prepare:
  fetch:
  - url: 'https://raw.githubusercontent.com/novu/ruby-novu-code-style/master/default.yml'
    path: '.rubocop-https---raw-githubusercontent-com-novu-ruby-novu-code-style-master-default-yml'
```

>NOTE: Any local rules in .rubocop.yml will take precedence over inheriting from a local project file, which will take precedence over inheriting from a gem.

You do not need to include rubocop directly in your application's dependences. Novu-style will include a specific version of `rubocop` that is shared across all projects.
