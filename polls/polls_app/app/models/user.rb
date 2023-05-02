# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  username   :string           not null
#
class User < ApplicationRecord
    has_many :authored_polls,
        foreign_key: :author_id,
        class_name: :Poll,
        dependent: :destroy

    has_many :responses,
        foreign_key: :respondent_id,
        class_name: :Response,
        dependent: :destroy

    
end
