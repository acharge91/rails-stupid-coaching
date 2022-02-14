class QuestionsController < ApplicationController
  def ask
    @question = params[:question]
  end

  def answer
    @question_answer = {}
    @question_answer[:question] = params[:question]
    if params[:question].include?('?')
      @question_answer[:answer] = 'Silly question, get dressed and go to work!'
    elsif params[:question] == 'I am going to work'
      @question_answer[:answer] = 'Great!'
    else
      @question_answer[:answer] = "I don't care, get dressed and go to work!"
    end
    @question_answer
  end
end
