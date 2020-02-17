class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @question = params[:ask]

    @answers = ['Great!', 'Silly question, get dressed and go to work!', 'I don\'t care, get dressed and go to work!']

    if params[:ask] == 'I am going to work'
      @result = @answers[0]
    elsif params[:ask].end_with?('?')
      @result = @answers[1]
    else
      @result = @answers[2]
    end
  end
end
