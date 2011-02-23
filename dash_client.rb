<<<<<<< HEAD
# By Ernest
=======
##Testing the GitHub
##Testing the GitHub
##Testing the GitHub
>>>>>>> b08857c41c4479ee85d40ab8124560a44d3c69b4
class DashboardClient

  # Returns total RAM available to the 
  def self.memory(mem_output)
     mem=nil
     unless mem_output.nil? or mem_output.empty?
     mem_output=~ /Mem:\s+(\d+)/
     mem= $1 + ' MB'
     end
     mem
  end
  def self.address(address_output)
  #`ifconfig`=~/\D+\s+\D+\s+\D+\s+\d\d\:\d\d\:\d\d:\d\d\:\d\D\:\d\D\D+(\d+\.\d+\.\d+\.\d+)/
    add = nil
    
    unless address_output.nil? or address_output.empty?
    address_output=~ /\D+\s+\D+\s+\D+\s+\D+\s+\d\d\:\d\d\:\d\d:\d\d\:\d\D\:\d\D\D+(\d+\.\d+\.\d+\.\d+)/
    add = $1 
    end
    add

  end
  #Rerurns total disk space
  
  def self.diskspace
     `df -h` =~ /sda1\s+(\d+)/
      $1.to_i
  end
  #returns the processor type
  
  def self.cpu
   `grep Intel /proc/cpuinfo` =~ /name\s+(\D+\d+\.\d+\D\D\D)/
    $1
  end
  #returns the Mac adress of the computer
  def self.mac(mac_output)
     mac=nil
     unless mac_output.nil? or mac_output.empty?
       mac_output=~ /\s+(\d+\:\d+\:\d+\:\d+\:\d\D\:\d\D)/
       mac = $1 
     end
     mac
   #`ifconfig -a eth0:`=~ /\s+(\d+\:\d+\:\d+\:\d+\:\d\D\:\d\D)/

    $1
    
  end
  #returns the hostname address
  def self.host
  `hostname -i`=~/(\d+\.\d\.\d\.\d)/
  $1
  end
  

 end
 
  def get_memory
  `free -m`
  end
  def get_mac
  `ifconfig -a eth0:`
  end
  def get_address
   `ifconfig eth0`
  end
=begin
puts "This is the summary of the Computer Information"
puts "================================================"
puts "Total Memory        : " + DashboardClient.memory.to_s + "MB"
puts "Total Diskpace      : " + DashboardClient.diskspace.to_s + "GB"
puts "MAC ADDRESS         : " + DashboardClient.mac
puts "Processor Info      " + DashboardClient.cpu + " " 
puts "Host                :"  + DashboardClient.host 
puts "================================================"
=end





