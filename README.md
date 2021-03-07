# Opinionated Guide to Ruby Setup

Ruby versions 2.0 and above are included by default in macOS releases since at least El Capitan (10.11). For other macOS versions you can install it with `brew`, use various versions managers or run everything inside a Docker container. 

In this setup I'm gonna explain how to set this template up with the `RVM` version manager. It allows you to have better control over the ruby version that you're using and supports compartmentalized independent ruby setups for your projects, meaning that you won't have to worry about conflicting gems (Ruby libraries) versions. 

If you wish to use this repo with a different setup, feel free to do so. You'll have to make minimal changes to the file, but it should still be doable with minimal work. After the setup I recommend using the project with RubyMine from JetBrains.

# Setup with RVM and gemsets

1. Install [RVM](https://rvm.io/rvm/install).
2. Install and start using Ruby 3 with RVM.
```bash
> rvm install 3.0.0
> rvm use 3.0.0
```

You can check your version by running:
```bash
> rvm list
=* ruby-3.0.0 [ x86_64 ]

# => - current
# =* - current && default
#  * - default
```

3. Create and start using gemset:
```bash
> rvm gemset create codekata
> rvm gemset use codekata
```

Check your gemset by:
```bash
> rvm gemset list

gemsets for ruby-3.0.0 (found in your path)
   (default)
=> codekata
   global
```

4. Install bundler and dependencies
```bash
> gem install bundler
> bundle install
```

# RubyMine

After installing _Ruby_ and _RVM_ and creating your _gemset_, open `Preferences > Languages & Frameworks > Ruby SDK and Gems`, and if you expand `RVM: ruby-3.0.0` you'll see the `codekata` gemset. Select it and you're all set.  

# Running the tests

Use RubyMine by putting your cursor to the test scope that you want to run and press `crtl + shift + R` or run the tests from the terminal:
```bash
> rvm gemset use codekata
> bundle exec rspec kata_spec.rb
```

