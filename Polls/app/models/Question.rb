class Question < ApplicationRecord
    
    def results_n_plus_one
        results = Hash.new(0)
        responses.each do |response|
            results[response.answerchoice.text] += 1
        end
        results
    end

    def results_better
        results = Hash.new(0)
        answers = responses.includes(:answerchoice)
        answers.each do |answer|
            results[answer.answerchoice.text] += 1            
        end
        results
    end

    def results
        results = Hash.new(0)
        responses = self.answerchoices
            .joins(:responses)
            .select('answer_choices.*, COUNT(responses.id) AS picks')
            .group('answer_choices.id')
        responses.each do |response|
            results[response.text] = response.picks
        end
        results
    end
    
    belongs_to(
        :poll,
        class_name: 'Poll',
        foreign_key: :poll_id,
        primary_key: :id
    )
    has_many(
        :answerchoices,
        class_name: 'AnswerChoice',
        foreign_key: :question_id,
        primary_key: :id
    )

    has_many :responses, through: :answerchoices, source: :responses
end