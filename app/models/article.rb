class Article < ApplicationRecord
    # La tabla => articles (Article pasado a plural)
    # Campos => article.title() => Titulo del articulo y todos los demas campos
    # Escribir metodos
    validates :title, presence: true, uniqueness: true
    validates :body, presence: true, length: { minimum: 20 }
end
