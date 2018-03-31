class Line < ApplicationRecord
  	belongs_to :category

  	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
 	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
	validates :image, attachment_presence: true

	validates :name, presence: true
    validates :name, uniqueness: true


	default_scope { order(name: :asc) }

    rails_admin do
	    configure :image do
	      hide
	    end

	    list do
	        field :image do
	            pretty_value do
	                bindings[:view].tag(:img, { :src => bindings[:object].image.url(:thumb) })
	            end
	        end
	        field :name
	        field :caterory
	    end
	    show do
	        field :image do
	            pretty_value do
	                bindings[:view].tag(:img, { :src => bindings[:object].image.url(:thumb) })
	            end
	        end
	        field :name
	        field :caterory
	    end
  	end
end
