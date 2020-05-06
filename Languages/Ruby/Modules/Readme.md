# Modules in Ruby

When working on a larger project, we need to implement some features in code that may have already been solved and posted by someone, and all we need to do is include that code and use it in our program.

This is where the concept of modules comes in. These are a collection of ruby files (or just a single file), with pre-written code that offers some features we need

We can do this by defining a module in a file and including its content in another.

```rb
# FILE 1
# Define the module
module Demo
    # Some variable, method or class definition
end

# FILE 2
# Use the above module
include Demo
```

## References

1. [Ruby Programming Language - Full Course](https://youtu.be/t_ispmWmdjY?t=14031)
