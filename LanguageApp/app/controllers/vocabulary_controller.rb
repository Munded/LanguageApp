class VocabularyController < ApplicationController
	def index
    @vocabulary = Vocabulary.all
  end

  def show
    @vocab = Vocabulary.find(params[:id])
  end
end
