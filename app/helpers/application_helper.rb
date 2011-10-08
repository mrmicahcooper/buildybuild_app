module ApplicationHelper
  def markdown(text)
    RDiscount.new(text, :smart).to_html
  end

  def format(text)
    sanitize(markdown(text)) if text.present?
  end
end
