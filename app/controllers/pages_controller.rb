class PagesController < HighVoltage::PagesController
  layout :layout_for_page

  private
  def layout_for_page
    return 'empty' if request.subdomain == '37signals'
    'application'
  end
end
