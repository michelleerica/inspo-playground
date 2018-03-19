class Quote < ApplicationRecord
  belongs_to :author, optional: true
end
