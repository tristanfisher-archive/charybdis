Charybdis
======================

This cookbook configures the Charybdis IRC server (https://github.com/atheme/charybdis).  I hope you like it.


Attributes
----------

Check recipes/default.rb.  There are many attributes.  Note that the defaults are actually provided in the attributes/charybdis.rb file and that overrides can be specified by overriding in your recipe.  This is to say: don't touch the attributes file directly - this cookbook has been configured to allow easy updating without having to write your own wrapper recipe.


Usage
-----
#### charybdis::default
TODO: Write usage instructions for each cookbook.

e.g.
Just include `charybdis` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[charybdis]"
  ]
}
```

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Tristan Fisher :: tristan@amplify.com
