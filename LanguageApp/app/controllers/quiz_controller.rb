class QuizController < ApplicationController
	def index
		@score = 0
		@lives = 3
    vocabList = Vocabulary.find_by_sql ["SELECT * FROM vocabularies WHERE english like ?", "a%", ]
    @vocabList = vocabList.sort {|a, b| rand <=> rand }
  end

  def show
    @vocab = Vocabulary.find(params[:id])
  end
end
