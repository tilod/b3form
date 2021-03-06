require "chosen-rails"

require "b3form/helper_methods"
require "b3form/form_builder"
require "b3form/form_builder/basic_form_builder"
require "b3form/form_builder/horizontal_form_builder"
require "b3form/form_builder/inline_form_builder"
require "b3form/input"
require "b3form/input/top_level_element"
require "b3form/input/text_like"
require "b3form/input/text"
require "b3form/input/password"
require "b3form/input/search"
require "b3form/input/url"
require "b3form/input/email"
require "b3form/input/number"
require "b3form/input/checkbox"
require "b3form/input/radio_option"
require "b3form/input/radio_options"
require "b3form/input/text_area"
require "b3form/input/select"
require "b3form/input/select_option"
require "b3form/input/select_options"
require "b3form/input/static"
require "b3form/input/file_upload"
require "b3form/input/radio_group"
require "b3form/input/composed_input"
require "b3form/input/form_actions"
require "b3form/input/button"
require "b3form/input/submit_button"
require "b3form/helper"
require "b3form/helper/error_alert"
require "b3form/view_helpers/form_builder_helper"
require "b3form/view_helpers/glyphicon_helper"

unless Rails.env.production?
  require "pry-rails"
  # require "ap"
end


module B3Form
  class Engine < Rails::Engine
    initializer "b3form.initialize" do
      ActionView::Base.class_eval do
        include ViewHelpers::FormBuilderHelper
        include ViewHelpers::GlyphiconHelper
      end
    end

    config.action_view.field_error_proc = ->(html_tag, instance) { html_tag }
  end
end
