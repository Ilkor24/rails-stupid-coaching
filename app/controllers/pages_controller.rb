class PagesController < ApplicationController
  def question
  end

  def answer
    @questions = params['question']
    if params['question'].include?('?')
      @answers = 'Silly question, get dressed and go to work!'
    elsif params['question'] == 'I am going to work'
      @answers = 'Great!'
    else
      @answers = "I don't care, get dressed and go to work!"
    end
  end
end
