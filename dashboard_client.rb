class DashboardClient

  # Returns total RAM available to the 
  def self.memory(mem_output)
    mem = nil
    unless mem_output.nil? or mem_output.empty?
      mem_output =~ /Mem:\s+(\d+)/
      mem = $1 + ' MB'
    end
    mem
  end
  #Rerurns total disk space
  
  def self.diskspace(diskspace_output)
  sda1 = nil
    unless diskspace_output.nil? or diskspace_output.empty?
    diskspace_output =~ /sda1\s+(\d+)/
    sda1 = $1 + ' GB'
    end
  sda1
  end
  #returns the processor type
  
  def self.cpu(cpu_output)
  name = nil
  unless cpu_output.nil? or cpu_output.empty?
     cpu_output =~ /name\s+(\D+\d+\s+\@\s\d+\.\d+\D\D\D)/
   name = $1
  end
  name
  end
  #returns the hostname
  def self.hostname(hostname_output)
  nam = nil
  unless hostname_output.nil? or hostname_output.empty?
   hostname_output =~ /(\D\D\D\D\D\D\D\D\D)/
   nam = $1 + " "
  end
  nam
  end
  #returns the Mac adress of the computer
  def self.mac
   `ifconfig -a eth0:`=~ /eth0:\s+(\D+\d+\:\d+\D\:\d+\:\D\d\:\d+\:\d+)/
    $1
    
  end
  #returns the hostname address
  def self.adress(adress_output)
  name = nil
  unless adress_output.nil? or adress_output.empty?
    adress_output =~ /(\d+\.\d\.\d\.\d+\s\d+\.\d\.\d\.\d)/ 
    $1 + ""
  end
  end
  
  def self.address(address_output)
  add = nil
  unless address_output.nil? or address_output.empty?
    address_output =~ /\s+(\d+\:\d\D\D\d\d\D+\d\:\d+\:\d+\D+\d+\.\d+\.\d+\.\d+\s+\D+\d+\.\d+\.\d+\.\d+\s+\D+\d+\.\d+\.\d\.\d)/
    add = $1 +  ""
    end
    add
  end
  def self.ipaddress(ipaddress_output)
  ip = nil
  unless ipaddress_output.nil? or ipaddress_output.empty?
  ipaddress_output =~ /\D+\s+\D+\s\d+\:\d\D\:\d\D\:\D+\:\d\D\:\d\D+\s+\D+(\d+\.\d+\.\d+\.\d+)/
  ip = $1 + ''
  end
  ip
  end
    
  
end


def get_memory
  `free -m`
end
def get_diskspace
   `df -h`
end
def get_cpu
`grep Intel /proc/cpuinfo`

end
def get_hostname
`hostname -v`
end

def get_adress
`hostname -i`

end
def get_address
`ifconfig eth0:avahi`

end
def get_ipaddress
`ifconfig wlan0`
end


=begin
puts "This is the summary of the Computer Information"
puts "====================================================================="
puts "Total Memory          : " + DashboardClient.memory.to_s + "MB"
puts "Total Diskpace        : " + DashboardClient.diskspace.to_s + "GB"
puts "The hostname is    :   "     + DashboardClient.hostname + " "
puts  "CPu information is   " + DashboardClient.cpu + "mm"
puts "Mac Address Info      : " + DashboardClient.mac + ""
puts "Hostname address is   :"  + DashboardClient.adress + ""
puts "Network Adresses Info :"     + DashboardClient.address + " "

puts "===================================================================="
=end




