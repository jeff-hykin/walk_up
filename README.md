# What is this?

A simple function for walking up a file directory until a certain file is found.

JavaScript version:

`npm install walk-up`

```js
const { walkUpUntil } = require("@!!!!!/walk_up")

let filepath = walkUpUntil("package.json")
```

Python version:

`pip install walk-up`

```python
from walk_up import walk_up_until

filepath = walk_up_until("requirements.txt")
```

Ruby version:

`gem install walk_up`

```ruby
require "walk_up"

require_relative walk_up_until("globals.rb") # <- will keep looking in parent directories for a "globals.rb" file
```