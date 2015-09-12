module UserAccessHelper

  def owner?
    current_user.is_admin? == true
  end

  def admin_access
    if owner?
      link_to "Admin", admin_dashboard_path
    end
  end

end



