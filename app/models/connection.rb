class Connection < ApplicationRecord
  belongs_to :user
  belongs_to :activated_by, class: 'User', optional: true
end
