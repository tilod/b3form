module B3Form
  class Railtie < Rails::Railtie
    initializer 'b3form.initialize' do
      ActionView::Base.class_eval do
        include ViewHelpers::FormBuilderHelper
      end
    end

    config.action_view.field_error_proc = ->(html_tag, instance) { html_tag }
  end
end
