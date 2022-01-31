class Article < ApplicationRecord
    # La tabla => articles (Article pasado a plural)
    # Campos => article.title() => Titulo del articulo y todos los demas campos
    # Escribir metodos
    validades :title, presence: true
    validades :body, presence: true
end
