class ChecksController < ApplicationController
  before_action :authenticate_user!, only: [:create]
 
  def index
  @week_count = current_user.checks.where(check_date: [Time.current-7.day..Time.current]).count 
  @weekgoal_count = current_user.answers.count * 7
  
  @week_percent = (@week_count.to_f / @weekgoal_count)
  end
  
  
  def monthly
  @daygoal_count = current_user.answers.count 
  end 
  
  # # def monthly
  # @day_count = current_user.checks.where(check_date: date).count 
  # @daygoal_count = current_user.answers.count
  
  # @day_percent = (@day_count.to_f / @daygoal_count)
  # end

  def create
    select_answers = params[:selector_a] 
    
    if current_user.checks.where(check_date: Time.current).present?
      current_user.checks.where(check_date: Time.current).destroy_all
    end
    
    if select_answers.present?
      select_answers.each do |answer|
        data = current_user.checks.create(check_date: Time.current, user_id: current_user.id, answer_id: answer)
      end 
    end
  
    
    redirect_to "/checks/index"
  end

end
