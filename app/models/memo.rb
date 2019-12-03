class Memo < ApplicationRecord
    belongs_to :category
    def self.search(search)
      if search
        Memo.where(['title LIKE ? or content LIKE ?', "%#{search}%", "%#{search}%"])
      else
        Memo.all
      end
    end
end
