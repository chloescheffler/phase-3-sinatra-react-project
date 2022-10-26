class ApplicationController < Sinatra::Base
  set default_content_type: 'application/json'
  
  # Add your routes here
  get '/questions' do
    questions = Question.all
    questions.to_json
  end

  get '/questions/:id' do
    question = Question.find(params[:id])
    question.to_json
  end

end
