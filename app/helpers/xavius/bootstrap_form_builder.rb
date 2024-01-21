class Xavius::BootstrapFormBuilder < Xavius::FormBuilder
  LABEL_CLASS = "form-label"
  INPUT_CLASS = "form-control"

  def text_field(attribute, options = {})
    @template.content_tag(:div, class: "row mb-2") do
      label(attribute, class: LABEL_CLASS) +
      super(attribute, options.merge(class: INPUT_CLASS))
    end
  end

  def submit(value = nil, options = {})
    @template.content_tag(:div, class: "row") do
      super(value, options.merge(class: "btn btn-primary"))
    end
  end

  def input(attribute, options = {}, as: :text_field)
    send(as, attribute, options.merge(class: INPUT_CLASS))
  end
end