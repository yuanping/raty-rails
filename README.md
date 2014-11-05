# raty-rails

## Introduction

*raty-rails* is a Ruby gem that wraps the [jQuery Raty][] plugin,
allowing its image and Javascript files to be served via the [Rails][]
[asset pipeline][].

[jQuery Raty][] is a useful "star rating" [jQuery][] plugin.

**This project is not officially associated with the [jQuery Raty][] project.**

*raty-rails* 用Restful的update方法更新ActiveRecord::Base对象的字段

## Installation

### Install the gem

*raty-rails* requires Rails 3, since it depends on the asset pipeline.

To install, add one of the following to your Rails project's `Gemfile`:

    gem 'raty-rails', github: 'yuanping/raty-rails' # Bleeding edge

Then, install the gem by running `bundle install`.

### Configure the assets

Modify the [Sprockets manifest][] in your `application.js` file to include
*one* of the following, depending on whether you want to include the compressed
Javascript or the uncompressed Javascript:

You'll also need to include raty_rails in your scripts for this to work.

    //= require jquery.raty
    //= require raty_rails
  
  
    // as CSS
    *= require jquery.raty

## Usage

At this point, your Rails application has access to jQuery Raty. See the
[jQuery Raty][] web site for instructions on how to use the plugin.


### Making Things Rating

`raty-rails` provides a helper method in your view to make your model values ratable. 
By default, you need to specify the model and property that should be rating. 
A `div` element is rendered with `data-*` attributes used by `JQuery Raty`.

```ruby
%h1= rating_for @model, :name
```

You can customize the tag name and title attribute:

* **title** - The model and attribute name are used to create a capitalized title

The `rating_for` helper method automatically adds these `data-*` attributes used by [raty](http://wbotelhos.com/raty).

* **url** - Uses the `polymorphic_path(model)` helper method.
* **class** - "class" attribute on element.
* **value** - Uses `model.name`. 
* **number** - The number of stars.
* **cancel** - Add a cancel button on the left side of the stars to cacel the score.

```ruby


# example of nested resource
%h1= rating_for [picture.gallery, picture], :name, class: 'custom-style'


## Notes

* The [jQuery Raty][] images are installed so that their assets paths won't
  conflict with same-named images in the application or in other gems.

