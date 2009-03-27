class WorkGauge

  def initialize(parameters, project, current_user)
    @parameters = parameters
    @project = project
    @current_user = current_user
  end
    
  def execute
    completed_work = @project.execute_mql(@parameters['completed_work']).first.values.sum
    total_work = @project.execute_mql(@parameters['total_work']).first.values.sum
    completion_percentage = (completed_work.to_f / total_work.to_f) * 100

    %Q{ <img src='http://chart.apis.google.com/chart?cht=gom&chs=350&chd=t:#{completion_percentage}&chds=0,100' /> }
  end
  
  
  def can_be_cached?
    false  # if appropriate, switch to true once you move your macro to production
  end
    
end

