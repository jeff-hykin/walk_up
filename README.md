# What is this?

A simple function for walking up a file directory until a certain file is found.

```ruby
require "walk_up"

require_relative walk_up_until("globals.rb") # <- will keep looking in parent directories for a "globals.rb" file
```

# Setup

Everything is detailed in the `documentation/setup.md`!