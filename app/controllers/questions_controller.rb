class QuestionsController < ApplicationController
  def ask; end

  def answer
    @answer = params['ask']
    if @answer == 'i am going to work right now!'
      @respuesta_cosch = 'grait !'
    elsif @answer.end_with?('?')
      @respuesta_coach = 'Silly question, get dressed and go to work!'
    else
      @respuesta_coach = "I don't care, get dressed and go to work!"
    end
  end
end
