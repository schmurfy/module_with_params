This gem is a simple way to solve a problem I often have: How
to write a module designed to be included and allow the class including
it to configure its behavior.

I have tried many solutions but this one is the most elegant one I
have for now and the code is at the same time really short and easy to
understand.

# Supported versions

- MRI 1.8.7+

# Example

You can pass a hash as argument:

```ruby
module MySuperModule
  include ModuleWithParams
  
  def number
    _MySuperModule_module_options[:number]
  end
end


class A
  include MySuperModule[:number => 234]
  
end

A.new.number # => 234
```

Or an array:

```ruby
module MySuperModule
  include ModuleWithParams
  
  def number
    _MySuperModule_module_options[0]
  end
end


class A
  include MySuperModule[234]
  
end

A.new.number # => 234
```