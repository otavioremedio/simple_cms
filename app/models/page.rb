class Page < ApplicationRecord


  belongs_to :subject, {:optional => false} #não obriga ter um pai, padrão falso
  has_and_belongs_to_many :admin_users

end
