require File.dirname(__FILE__) + '/integration_test_helper.rb'

class WorkGaugeIntegrationTest < Test::Unit::TestCase
  
  PROJECT_RESOURCE = 'http://username:password@your.mingle.server:port/lightweight_projects/your_project_identifier.xml'

  def test_macro_contents
    work_gauge = WorkGauge.new(nil, project(PROJECT_RESOURCE), nil)
    result = work_gauge.execute
    assert result
  end

end