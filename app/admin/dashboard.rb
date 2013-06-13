ActiveAdmin.register_page "Dashboard" do

    menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

    content :title => proc{ I18n.t("active_admin.dashboard") } do

    #Here is an example of a simple dashboard with columns and panels.
    
        columns do
            column do
                panel "Recent Emails" do
                    EmailContact.order('created_at').limit(5). each do |email|
                        h1 email.name
                    end
                end
            end
            column do
                panel "Info" do
                    h1 'recent'
                end
            end
        end # content
    end
end
