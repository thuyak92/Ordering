module ApplicationHelper
  def active_menu_resolver(args)
    controllers = args[:controllers] || {}
    actions = args[:actions] || {}
    flg = controllers.include?(request.params[:controller])
    flg = flg && actions.include?(request.params[:action].to_sym) unless args[:actions] == :all
    return flg ? 'active' : ''
  end
end
