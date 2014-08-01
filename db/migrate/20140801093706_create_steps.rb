class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.integer :referer_count
      t.string :html
      t.string :css_class
      t.string :image_url

      t.timestamps
    end
    Step::init
  end
end
