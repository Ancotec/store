class Role < ApplicationRecord
    has_many :users #relacion uno a muchos entre tabla roles y users
                    #esta ultima en plural segun has_many

    validates :name, presence: true, uniqueness: true #validar campo "name" de tabla role en este-- 
                                                      #caso que exita y sea unico
end
