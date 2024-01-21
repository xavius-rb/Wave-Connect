class Xavius::FormBuilder < ActionView::Helpers::FormBuilder
  def input(attribute, options = {}, as: :text_field)
    @template.content_tag(:div, class: "field") do
      label(attribute, class: "label") +
      send(as, attribute, options.merge(class: "input"))
    end
  end
end