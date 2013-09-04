module ApplicationHelper

  def render_agreement_sent status
    if status == "0"
      "No"
    elsif status == "1"
      "Yes"
    else
      "No"
    end
  end

end
