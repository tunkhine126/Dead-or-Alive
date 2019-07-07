class QuizzesController < ApplicationController

  def index
    @quiz = Quiz.all[0]
  end


end
