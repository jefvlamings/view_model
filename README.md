# viewmodel

A ViewModel layer for Ruby On Rails

## Installation

Add viewmodel to your Rails application

```sh
bundle add viewmodel
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
  def internal_reference
    [@product.id, @product.name].join("-")
  end
end
```

The view would then look like this;

```erb
<div id="product">
  <h1><%= @product.name %></h1>
  <h2><%= @internal_reference %></h2>
</div>
```

## Core concepts

- All instance variables and local variables (`local_assigns`) are passed to the view model.
- All attributes and public methods are exposed to the view
- You can override local variables in the view model with public methods
- You can add new local variables in the view model with public methods
