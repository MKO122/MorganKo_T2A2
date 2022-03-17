module ApplicationHelper
    def select_alert_subclass(input)
        case input
            #  The input is the colour from bootstrap
        when 'notice'
          return 'success'
        when 'alert'
          return 'warning'
        when 'error'
          return 'danger'
        else
          return 'info'
        end 
    end 
end
