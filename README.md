# Antiprivate [![Build Status](https://travis-ci.org/damncabbage/antiprivate.svg)](https://travis-ci.org/damncabbage/antiprivate)

Makes every newly-declared `protected` or `private` method public.


## Installation

Add `gem 'antiprivate'` to your application's Gemfile and then run `bundle install`.


## Usage

```
class OldClass
  private
  def is_private; "is_private"; end
end

require 'antiprivate'

class NewClass
  private
  def is_private; "is_private"; end
end

NewClass.is_private # => "is_private"
OldClass.is_private # => NoMethodError: method `is_private' ...
```


## Licence

Copyright 2015 Rob Howard

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.


## Addendum

This is horrible and a joke and I am so very sorry you've needed to be aware that Ruby can do this at all.
