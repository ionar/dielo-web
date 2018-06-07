class Banner < ApplicationRecord
    has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.jpg"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
    #validates :image, attachment_presence: true


  default_scope { order(sequence: :asc) }

  rails_admin do
    #configure :image do
    #  hide
    #end

    edit do
        field :image do
            pretty_value do
                bindings[:view].tag(:img, { :src => bindings[:object].image.url(:thumb), class: 'img-thumbnail' })
            end
        end
        field :link
        field :sequence
    end

    list do
        field :image do
            pretty_value do
                bindings[:view].tag(:img, { :src => bindings[:object].image.url(:thumb) })
            end
        end
        field :link
        field :sequence
    end
    show do
        field :image do
            pretty_value do
                bindings[:view].tag(:img, { :src => bindings[:object].image.url(:thumb) })
            end
        end
        field :link
        field :sequence
    end

  end
end
