class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @query = params[:query]
    if @query.include?("?")
      @response = "Silly question, get dressed and go to work!"
    elsif @query == "I am going to work"
      @response= "Great!"
    else
      @response= "I don't care, get dressed and go to work!"
    end
  end
end
