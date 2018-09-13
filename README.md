# Poll Everywhere Cops

Custom RuboCop cops for Poll Everywhere

## Cops

- *NullableBoolean*: Boolean database columns cannot be nullable.
- _Constantize_: Don't call String#constantize.

## Instructions

Add to `Gemfile`:

```
gem "polleverywhere-cops"
```

Add to `.rubocop.yml`:

```
require:
- polleverywhere-cops
```

## Publishing to RubyGems

```
$EDITOR lib/rubocop/polleverywhere/version.rb
gem build polleverywhere-cops.gemspec
gem push polleverywhere-cops-x.x.x.gem
```
