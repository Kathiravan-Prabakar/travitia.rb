# travitia.rb
A simple API Wrapper for Travitia API library(https://public-api.travitia.xyz/talk)

# Installation
1) Git clone the repo
2) `gem build travitiarb.gemspec`
3) `gem install travitiarb-1.0.0.gem`

Enjoy!

# Example

```rb
require 'travitiarb'

client = Travitia::Client.new("apitoken")
resp = client.ask("query")
puts resp["response"]
```
