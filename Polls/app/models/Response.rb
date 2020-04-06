class Response < ApplicationRecord
    belongs_to(
        :user,
        class_name: 'User',
        foreign_key: :user_id,
        primary_key: :id
    )
    belongs_to(
        :answerchoice,
        class_name: 'AnswerChoice',
        foreign_key: :answerchoice_id,
        primary_key: :id
    )
end