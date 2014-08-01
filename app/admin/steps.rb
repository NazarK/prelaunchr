ActiveAdmin.register Step do
  actions :all, :except => [:destroy,:new]
  config.sort_order = "id_asc"

  index do                            
    column :id
    column :html
    column :image_url
    default_actions                   
  end                                 

  filter :email                       

  form do |f|                         
    f.inputs "Details" do       
      f.input :html
      f.input :image_url
    end                               
    f.actions                         
  end     
end
