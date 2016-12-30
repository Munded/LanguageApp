class QuizController < ApplicationController
	def index
		@score = 0
		@lives = 3
		@questionIndex = 0
    @vocabList = getVocabList
  end

  def getVocabList
  	vocabList = Vocabulary.find_by_sql ["SELECT * FROM vocabularies WHERE english like ?", "a%", ]
    vocabList.sort {|a, b| rand <=> rand }
  end

  def show
    @vocab = Vocabulary.find(params[:id])
  end

  def onClick
  	@questionIndex += 1
  end

  private :getVocabList
end
