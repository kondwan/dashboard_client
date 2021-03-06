require 'test/unit'
require 'dashboard_client'
#this is the test file for baobab dashboard_client


class TestDashboardClient < Test::Unit::TestCase
  #this is the method for testing the memory
  def test_memory
    mem_text = "Mem:          2004       1732        271          0        156        649"
    assert_equal("2004 MB", DashboardClient.memory(mem_text))
    assert_equal(nil, DashboardClient.memory(nil))
    assert_equal(nil, DashboardClient.memory(''))
  end
  #This is the method for testing the diskspace
  def test_diskspace
    diskspace_text = "sda1  142     "
    assert_equal("142 GB", DashboardClient.diskspace(diskspace_text))
    assert_equal(nil, DashboardClient.diskspace(nil))
    assert_equal(nil, DashboardClient.diskspace(''))
   
  
  end
  #this is the method for testing the cpu
  def test_cpu
    cpu_text = " name	: Intel(R) Pentium(R) Dual  CPU  T2390  @ 1.86GHz"

    assert_equal(": Intel(R) Pentium(R) Dual  CPU  T2390  @ 1.86GHz", DashboardClient.cpu(cpu_text))
    assert_equal(nil, DashboardClient.cpu(nil))
    assert_equal(nil, DashboardClient.cpu(''))
  end
  #the hostname can be tested using this method
  def test_hostname
    hostname_text = " renameme" 
    assert_equal(" renameme ", DashboardClient.hostname(hostname_text))
    assert_equal(nil, DashboardClient.hostname(nil))
    assert_equal(nil, DashboardClient.hostname(''))
  end
  #this is to test the address itself maily the IP address
  def test_adress
    adress_text = "127.0.0.1 127.0.1.1"
    assert_equal("127.0.0.1 127.0.1.1",DashboardClient.adress(adress_text))
    assert_equal(nil, DashboardClient.adress(nil))
    assert_equal(nil, DashboardClient.adress(''))
  end
  #this one we can test the mac address
  def test_address
     
    address_text = " 00:1a:80:f4:50:57  inet addr:169.254.38.57  Bcast:169.254.255.255  Mask:255.255.0.0 "
    assert_equal("00:1a:80:f4:50:57  inet addr:169.254.38.57  Bcast:169.254.255.255  Mask:255.255.0.0",
    DashboardClient.address(address_text))
    assert_equal(nil, DashboardClient.address(nil))
    assert_equal(nil, DashboardClient.address(''))
  end
  
  
end

