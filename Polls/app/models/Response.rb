class Response < ApplicationRecord
    
    def sibling_responses
        self.question.responses.where.not('responses.id = ?', self.id)
    end
    
    def respondant_already_answered
        self.sibling_responses.each do |response| 
            if response.user_id == self.user_id
                errors[:base] << 'This user has already responded.'
            end
        end
    end

    def author_cant_rig_results
        if question.poll.author_id == self.user_id
            errors[:base] << 'You cannot respond to your own poll.'
        end
    end

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

    has_one :question, through: :answerchoice, source: :question
end