class QuestionsController < ApplicationController
  def create
    Question.create(user_name: params[:user_name], body: params[:body], identity_id: params[:identity_id])
  
  redirect_back(fallback_location: root_path)    
  end
  
  def choice
    @questions = Question.all  
  end
  
  def destroy
    @question.destroy
  end
  
end
