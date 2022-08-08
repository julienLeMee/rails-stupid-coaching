class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question == 'I am going to work'
      @his_answer = 'Great!'
    elsif @question.include?('?')
      @his_answer = 'Silly question, get dressed and go to work!'
    else
      @his_answer = 'I don\'t care, get dressed and go to work!'
    end
  end
end
