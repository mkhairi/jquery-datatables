# jquery-datatables [![Gem Version](https://badge.fury.io/rb/jquery-datatables.svg)](http://badge.fury.io/rb/jquery-datatables)
Jquery datatables assets pipeline :: sprockets

Include [jQuery DataTables](http://www.datatables.net/) in your asset pipeline with ease using [jquery-datatables](https://rubygems.org/gems/jquery-datatables) gem.

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

## Install generator

### command
``` 
rails g jquery:datatables:install 

```

or if you using bootstrap

``` 
rails g jquery:datatables:install bootstrap 

```

this generator will: 
  -  1. append ```//= require datatables ``` add `app/assets/javascripts/application.js`
  -  2. append ```*= require datatables ``` add `app/assets/stylesheets/application.css`
  -  3. create datatable.js  in ```app/assets/javascripts/```
  -  4. create datatable.css in  ```app/assets/stylesheets/```

## Manual install

### JavaScripts

Include the JavaScript in your `app/assets/javascripts/application.js`:
```
//= require jquery
//= require datatables

```
create new file `app/assets/javascripts/datatables.js`
```
//Core component
//= require datatables/jquery.dataTables
//Bootstrap4 theme
//= require datatables/dataTables.bootstrap4

//Optional Datatables extensions
//= require datatables/extensions/Responsive/dataTables.responsive
//= require datatables/extensions/Responsive/responsive.bootstrap4
//= require datatables/extensions/Buttons/dataTables.buttons
//= require datatables/extensions/Buttons/buttons.html5
//= require datatables/extensions/Buttons/buttons.print
//= require datatables/extensions/Buttons/buttons.bootstrap4

```
*** you may refer other extensions in this directory: [click me](https://github.com/mkhairi/jquery-datatables/tree/master/app/assets/javascripts/datatables/extensions)

### Stylesheets
Include the stylesheet in your `app/assets/stylesheets/application.css`:
```
*= require datatables
```

create new file `app/assets/stylesheets/datatables.css`
<br>
** default theme
```
/*
*= require datatables/jquery.dataTables
*= require datatables/extensions/Responsive/responsive.dataTables
*= require datatables/extensions/Buttons/buttons.dataTables
*/
```
** if using boostrap theme
```
/*
*= require datatables/dataTables.bootstrap4
*= require datatables/extensions/Responsive/responsive.bootstrap4
*= require datatables/extensions/Buttons/buttons.bootstrap4
*/

```
*** you may refer other extensions in this directory: [click me](https://github.com/mkhairi/jquery-datatables/tree/master/app/assets/stylesheets/datatables/extensions)

### Initialization

Where needed in your JavaScripts, initialize your DataTables:

```
$(document).ready(function() {
  $("#dttb").dataTable();
});
```

## Todo
 - update instructions

## Contributing

1. [Fork it]( https://github.com/mkhairi/jquery-datatables/fork)
2. Commit your changes (`git commit -am 'My Changes'`)
3. Push your changes (`git push origin`)
5. Create a new Pull Request
