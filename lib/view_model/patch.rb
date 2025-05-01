module ViewModel
  module Patch
    def view_assigns
      assigns = super.dup

      # Build class name from virtual path, e.g., Products::ShowViewModel
      template = lookup_context.find_all(action_name, _prefixes, false).first
      return assigns unless template

      # Construct a view model for the template
      virtual_path = template.virtual_path
      class_name = virtual_path.split("/").map(&:camelize).join("::") + "ViewModel"
      klass = class_name.safe_constantize
      return assigns unless klass

      # Initiate the view model and merge its readers
      view_model = klass.new(assigns)
      readers = klass.instance_methods(false).reject { |m| m.to_s.end_with?("=") }

      readers.each do |reader|
        assigns[reader] = view_model.send(reader)
      end

      assigns
    end
  end
end
