module ApplicationHelper
  def liquidize(template, arguments)
    Liquid::Template.parse(template).render(arguments).html_safe
  end
end
