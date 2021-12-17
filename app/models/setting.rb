class Setting < ApplicationRecord
  has_rich_text :root_page_content
  # validate :only_one

  # private

  # def only_one
  #   if Setting.count >= 1
  #     errors.add :base, 'There can only be one global setting'
  #   end
  # end
end
