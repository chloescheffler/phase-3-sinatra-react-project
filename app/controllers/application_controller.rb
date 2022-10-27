class ApplicationController < Sinatra::Base
  set default_content_type: 'application/json'
  
  get '/questions' do
    questions = Question.all
    questions.to_json
  end
  
  get '/questions/:id' do
    question = Question.find(params[:id])
    question.to_json
  end

  post '/users' do
    user = User.create(
      name: params[:name],
      score: params[:score]
    )
    user.to_json
  end

  get '/users' do
    user = User.all
    user.to_json
  end

  patch '/users/:id' do
    user = User.find(params[:id])
    user.update(
      score: params[:score]
    )
    user.to_json
  end

  get '/results' do
    # result = Result.all
    # result.to_json
    "hello world"
  end

    #Nico made changes below 

    get '/users/:id' do
      user = User.find(params[:id])
      user.to_json
    end
  
    get '/results' do
      results = Result.all
      results.to_json
    end
  
    post '/results' do
      result = Result.create(
        name: params[:name],
        score: params[:score]
      )
      result.to_json
    end

  # post '/results' do
  #   user = User.create(
  #     name: params[:name]
  #     score: params[:score]
  #   )
  #   user.to_json
  # end

  # delete '/results/:id' do
  #   result = Result.find(params[:id])
  #   result.destroy
  #   result.to_json
  # end

end
