class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params
    if params[:question].downcase == 'i am going to work'
      @answer = "Great!"
    elsif params[:question].include? "?"
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
