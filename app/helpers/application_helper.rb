module ApplicationHelper
  def flash_class(type)
    case type
    when 'error' then 'alert-danger'
    when 'notice' then 'alert-info'
    when 'alert' then 'alert-warning'
    when 'success' then 'alert-success'
    else type.to_s
    end
  end
end
