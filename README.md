# ButtonLinkTo

A button version of Rails link_to helper

## Installation

Add this line to your application's Gemfile:

```ruby
  gem 'button_link_to'
```

And then execute:

```ruby
  $ bundle
```

Add the following lines to app/assets/javascript/application.js:

```javascript
//= require jquery_ujs
//= require button_link_to
```

## Usage

You can use button_link_to helper in your view just like link_to helper in Rails.

Send a delete ajax

```ruby
button_link_to "Delete Comment", comment_path(@comment), :remote => true, :method => :delete
```

Send a form with delete method

```ruby
button_link_to "Delete Comment", comment_path(@comment), :method => :delete
```


Send a form with delete method and show confirm message

```ruby
button_link_to "Delete Comment", comment_path(@comment), :method => :delete, :confirm => "Are you sure?"
```



HTML button by send block parameter

```ruby
button_link_to , comment_path(@comment), :remote => true, :class => "btn-link" do
  <i class="icon-remove"></i>  Delete Comment
end
```



## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
