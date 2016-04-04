class Category
  include Mongoid::Document
  include Mongoid::Autoinc
  include Mongoid::Paperclip

  field :name
  field :number, type: Integer
  field :content

  has_mongoid_attached_file :image,
                            :styles => {
                                :thumb => "100x100",
                                :small  => "150x150",
                                :medium => "200x200",
                                :original => "860x640"
                            }

  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates_attachment_size :image, :less_than => 10.megabytes

  increments :number, model_name: 'Category'
  index number: 1

  validates_presence_of :name, :image, :content
end
