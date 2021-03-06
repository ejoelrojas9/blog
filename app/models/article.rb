class Article < ApplicationRecord
    # La tabla => articles (Article pasado a plural)
    # Campos => article.title() => Titulo del articulo y todos los demas campos
    # Escribir metodos
    belongs_to :user
    validates :title, presence: true, uniqueness: true
    validates :body, presence: true, length: { minimum: 20 }
    before_save :set_visits_count

    
   
    def update_visits_count
        self.save if self.visits_count.nil?
        self.update(visits_count: self.visits_count  + 1)
    end

    private

    def set_visits_count
        self.visits_count ||= 0
    end


end
