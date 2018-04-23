class Product < ApplicationRecord
  	belongs_to :line

  	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.jpg"
 	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

 	has_attached_file :image_high, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.jpg"
 	validates_attachment_content_type :image_high, content_type: /\Aimage\/.*\z/

    validates :name, presence: true
    #validates :name, uniqueness: true


    scope :pertencentes_a_linha, -> (line) { where line: line }

	rails_admin do
	    #configure :image do
	    #  hide
	    #end

	    list do
	        field :image do
	            pretty_value do
	                bindings[:view].tag(:img, { :src => bindings[:object].image.url(:thumb) })
	            end
	        end
	        field :name
	        field :line
	    end
	    show do
	        field :image do
	            pretty_value do
	                bindings[:view].tag(:img, { :src => bindings[:object].image.url(:thumb) })
	            end
	        end
	        field :name
	        field :line
	    end
	end

end
