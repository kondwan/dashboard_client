require 'test/unit'
require 'dashboard_client'

class TestDashboardClient < Test::Unit::TestCase
  
  def test_memory
    mem_text = "Mem:          2004       1732        271          0        156        649"
    assert_equal("2004 MB", DashboardClient.memory(mem_text))
    assert_equal(nil, DashboardClient.memory(nil))
    assert_equal(nil, DashboardClient.memory(''))
  end
  def test_mac
    mac_text = "eth0:     Link encap:Ethernet  HWaddr 00:11:25:84:5f:6f"
    assert_equal("00:11:25:84:5f:6f", DashboardClient.mac(mac_text))
    assert_equal(nil, DashboardClient.mac(nil))
    assert_equal(nil, DashboardClient.mac(''))

  end

  def test_address
    add_text = "192.168.11.39"
    
    assert_equal( "192.168.11.39 ", DashboardClient.address(add_text))
    assert_equal(nil, DashboardClient.address(nil))
    assert_equal(nil, DashboardClient.address(''))
  end

end

