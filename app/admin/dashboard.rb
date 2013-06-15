ActiveAdmin.register_page "Dashboard" do

    menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

    action_item do
        link_to "View Site", "/"
    end

    action_item do 
        link_to "View Store", '/store'
    end


    sidebar :actions do 
        ul do 
            li link_to "View Contact Messages", admin_email_contacts_path
            li link_to "View Career Inquirys", '#'
        end
    end

    content :title => proc{ I18n.t("active_admin.dashboard") } do

    #Here is an example of a simple dashboard with columns and panels.


        columns do
            column do
                panel "Recent Emails" do
                    table_for EmailContact.order('created_at').limit(5). each do
                        column 'Email' do |email|
                            link_to "#{email.email}", admin_email_contact_path(email)
                        end
                        column 'Name' do |email| 
                            h4 email.name
                        end
                        column 'Date' do |email|
                            p email.created_at
                        end
                    end
                end
            end

            column do 
                panel "Career Messages" do 
                end
            end
        end # content
    end
end
