# frozen_string_literal: true

class USASocket
  def plug_in
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

class EuropeanSocket
  def connect
    puts 'European socket: Device connected with 220V'
  end
end

class EuropeanToUSAAdapter < USASocket
  def initialize(european_socket)
    @european_socket = european_socket
  end

  def plug_in
    @european_socket.connect
  end
end

european_socket = EuropeanSocket.new
adapter         = EuropeanToUSAAdapter.new(european_socket)
adapter.plug_in

USASocket.new
