module ApplicationHelper
  def active_menu_class(controller_name)
    params[:controller] == controller_name ? "is-active" : ""
  end

  def xavius_form_with(model: nil, scope: nil, url: nil, format: nil, **options, &block)
    # TODO: replace by Xavius::Config.default_form_builder
    options[:builder] ||= Xavius::BootstrapFormBuilder
    form_with model: model, scope: scope, url: url, format: format, **options, &block
  end
end
