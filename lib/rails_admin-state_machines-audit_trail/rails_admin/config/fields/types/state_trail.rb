module RailsAdmin::Config::Fields::Types
  class StateTrail < RailsAdmin::Config::Fields::Base
    RailsAdmin::Config::Fields::Types.register(:state_trail, self)

    register_instance_option :allowed_methods do
      [method_name, limit, association, context]
    end

    register_instance_option(:context) do
      []
    end

    register_instance_option(:limit) do
      nil
    end

    register_instance_option(:partial) do
      :form_state_trail
    end

    register_instance_option(:association) do
      "#{class_underscore}_#{method_name}_transitions"
    end

    register_instance_option(:formatted_value) do
      if bindings[:view].action_name == "show"
        form = OpenStruct.new(object: bindings[:object])
        bindings[:view].render(
          partial: "rails_admin/main/#{partial}",
          locals: { field: self, form: form }
        )
      else
        value
      end
    end

    private

    def class_underscore
      bindings[:object].class.to_s.underscore.split("/").last
    end
  end
end
