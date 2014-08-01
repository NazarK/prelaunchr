# == Schema Information
#
# Table name: steps
#
#  id            :integer          not null, primary key
#  referer_count :integer
#  html          :string(255)
#  css_class     :string(255)
#  image_url     :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Step < ActiveRecord::Base
	attr_protected []

  def self.init
  	recs = [
            {
                'count' => 5,
                "html" => "Shave<br>Cream",
                "class" => "two",
                "image" =>  ActionController::Base.helpers.asset_path("refer/cream-tooltip@2x.png")
            },
            {
                'count' => 10,
                "html" => "Truman Handle<br>w/ Blade",
                "class" => "three",
                "image" => ActionController::Base.helpers.asset_path("refer/truman@2x.png")
            },
            {
                'count' => 25,
                "html" => "Winston<br>Shave Set",
                "class" => "four",
                "image" => ActionController::Base.helpers.asset_path("refer/winston@2x.png")
            },
            {
                'count' => 50,
                "html" => "One Year<br>Free Blades",
                "class" => "five",
                "image" => ActionController::Base.helpers.asset_path("refer/blade-explain@2x.png")
            }
        ]

    recs.each do |r|
    	rec = Step.new
    	rec.referer_count = r['count']
    	rec.html = r['html']
    	rec.css_class = r['class']
    	rec.image_url = r['image']
    	rec.save
    end
  end
end
