# view_model

A ViewModel layer for Ruby On Rails

## Installation

Add view_model to your Rails application

```sh
bundle add 'view_model'
```

## Usage

Create a ViewModel object in a corresponding ```view_models``` folder

```sh
app/
├─ view_models/
│   └─ products/
│       └─ show.rb
├─ views/
│   └─ products/
│       └─ show.html.erb
```

The contents of the view model look something like this:

```rb
class ProductsShowViewModel < ViewModel
  def breadcrumbs
    [
      [@product.category.name, category_path(@product.category)],
      [@product.name, product_path(@product)]
    ]
  end
end
```

The view itself ooks like this;

```erb
<div id="product">
  <h1><%= @product.name %></h1>
  <%= breadcrumbs.each do |name, url| %>
    <li><a href="<%= url %>"><%= name %></a></li>
  <% end %>
</div>
```

## Core concepts

- All instance variables and local variables (`local_assigns`) are passed to the view model.
- All attributes and public methods are exposed to the view
- You can override local variables in the view model with public methods
- You can add new local variables in the view model with public methods
