# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

# Disable the automatically generated <div class="field_with_errors"> element for model validations
#  errors. Project uses custom error styling instead of this div.
ActionView::Base.field_error_proc = Proc.new { |html_tag, instance| html_tag.html_safe }
