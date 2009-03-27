require File.join(File.dirname(__FILE__), 'unit_test_helper')

class WorkGaugeTest < Test::Unit::TestCase
  
  FIXTURE = 'sample'
  
  def test_macro_contents
    work_gauge = WorkGauge.new(nil, project(FIXTURE), nil)
    result = work_gauge.execute
    assert result
  end

end