ActiveAdmin.register_page "Dashboard" do

  # menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end


section "My Properties" do
  table_for Property.limit(5) do
    column :name do |property|
      link_to property.name, [:admin, property]
    end
    column :location
    column :description
    column :category
  end
  strong {link_to "View All Properties", admin_properties_path}
end



  end # content
end
