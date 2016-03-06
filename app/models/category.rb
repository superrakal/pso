class Category
  include Mongoid::Document
  include Mongoid::Autoinc

  field :name
  field :number
  field :content

  increments :number, model_name: 'Category'
  index number: 1

end
