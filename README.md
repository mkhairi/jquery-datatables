# jquery-datatables [![Gem Version](https://badge.fury.io/rb/jquery-datatables.svg)](http://badge.fury.io/rb/jquery-datatables)
Jquery datatables assets pipeline :: sprockets

Include [jQuery DataTables](http://www.datatables.net/) in your asset pipeline with ease using [jquery-datatables](https://rubygems.org/gems/jquery-datatables) gem.

## Gem Installation

### Requirements

**Rails 6.0+**
Since Webpacker the default JavaScript compiler for Rails 6. you can install via yarn.

see this [official](https://datatables.net/download/index) pages for details.

However, if your app still using javascript with sprockets, this gem is still good to go.


**Rails 5.1+**
The Rails JavaScript helpers has been rewritten in a new gem called rails-ujs and they use vanilla JavaScript, so jQuery is not a dependency of Rails anymore. Since Jquery datatables relies on it, install it with ```bin/yarn add jquery``` or via ```gem 'jquery-rails'```  and add ```//= require jquery``` to ```application.js```. 

**NOTE:** Ensure that the `sass-rails` gem is presented in your Gemfile.


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

or if you using css framework

``` 
rails g jquery:datatables:install bootstrap4

```

this generator will: 
  -  1. append ```//= require datatables ``` add `app/assets/javascripts/application.js`
  -  2. append ```*= require datatables ``` add `app/assets/stylesheets/application.css`
  -  3. create datatable.js  in ```app/assets/javascripts/``` with default init script.
  -  4. create datatable.scss in  ```app/assets/stylesheets/```
  -  5. create scaffold index template in ```lib/template```


available [styling](https://datatables.net/examples/styling/)
 - bootstrap 
 - bootstrap4
 - foundation
 - jqueryui
 - sematicui
 - material (Tech. preview)
 - uikit (Tech. preview)


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

or if you using scss

Include the stylesheet in your `app/assets/stylesheets/application.scss`:
```scss
@import 'datatables';
```

Create new file `app/assets/stylesheets/datatables.scss`
<br>
** default theme
```scss
@import 'datatables/jquery.dataTables';
@import 'datatables/extensions/Responsive/responsive.dataTables';
@import 'datatables/extensions/Buttons/buttons.dataTables';
```
** if using boostrap4 theme
```scss
@import 'datatables/dataTables.bootstrap4';
@import 'datatables/extensions/Responsive/responsive.bootstrap4';
@import 'datatables/extensions/Buttons/buttons.bootstrap4';

```
*** you may refer other extensions in this directory: [click me](https://github.com/mkhairi/jquery-datatables/tree/master/app/assets/stylesheets/datatables/extensions)


### Basic Initialization

Where needed in your JavaScripts, initialize your DataTables:

```
$(document).ready(function() {
  $("#dttb").dataTable();
});
```

And you will of course, need to have a html table (with a theader and tbody) with the id set to dttb. Here is an example:

```html
    <table id="dttb" class="table table-hover">
      <thead>
        <tr>
          <th> Panel No</th>          
        </tr>
      </thead>
      <tbody>
        <% @panels.each do |panel| %>
          <tr>
            <td><%= link_to panel.no, panel %></td>
          </tr>
        <% end %>
      </tbody>
    </table>
```

### Server Side processing

Recommended use this gem

```ruby
 gem 'ajax-datatables-rails'
```
see [docs](https://github.com/jbox-web/ajax-datatables-rails) for details instruction


## Contributing

1. [Fork it]( https://github.com/mkhairi/jquery-datatables/fork)
2. Commit your changes (`git commit -am 'My Changes'`)
3. Push your changes (`git push origin`)
5. Create a new Pull Request
