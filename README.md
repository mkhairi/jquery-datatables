# jquery-datatables [![Gem Version](https://badge.fury.io/rb/jquery-datatables.svg)](http://badge.fury.io/rb/jquery-datatables)
Jquery datatables assets pipeline :: sprockets

Include [jQuery DataTables](http://www.datatables.net/) in your asset pipeline with ease using [jqury-datatables](https://rubygems.org/gems/jqury-datatables) gem.

## Gem Installation

### Requirements
To use this gem you need to include [jQuery](http://jquery.com/) in your applications's javascript.
To do so you may use the [jquery-rails gem](https://github.com/rails/jquery-rails). By default rails already include it.


Add this line to your application's `Gemfile`:

```
gem 'jquery-datatables'
```

And then execute:

    $ bundle install

## Install Generator

### command
``` rails g jquery:datatables:install ```

or if you using bootstrap

``` rails g jquery:datatables:install bootstrap ```

this generator will: 
  -  1. add ```//= require datatables ```
  -  2. add ```*= require datatables ```
  -  3. create datatable.js  in ```app/assets/javasrcipts/```
  -  4. create datatable.css in  ```app/assets/stylesheets/```

## Manual install

### JavaScripts

Include the JavaScript in your `app/assets/javascripts/application.js`:
```
     //= require jquery
     //= require datatables
```

### Stylesheets
Include the stylesheet in your `app/assets/stylesheets/application.css`:
```
    *= require datatables
```
### Initialization

Where needed in your JavaScripts, initialize your DataTables:

```
$(document).ready(function() {
  $("#dttb").dataTable();
});
```

## Contributing

1. [Fork it]( https://github.com/mkhairi/jquery-datatables/fork)
2. Commit your changes (`git commit -am 'My Changes'`)
3. Push your changes (`git push origin`)
5. Create a new Pull Request
