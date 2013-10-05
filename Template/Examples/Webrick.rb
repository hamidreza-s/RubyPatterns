require 'webrick'

class NewServer < WEBrick::GenericServer

  # override run hook
  def run socket
    socket.print "Hello TCP/IP world\n"
  end

  # override shutdown hook
  def shutdown
    puts "Bye"
    super
  end

end

server = NewServer.new :Port => 8000
trap 'INT' do server.shutdown end
server.start
