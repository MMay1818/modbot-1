module Utilities

  def self.log_moderation_action(event, channel_name, player = nil, reason = nil)
    channel = find_channel(event, channel_name)
    message = event.message.to_s

    if message.start_with?("!warn")
      channel.send_message("#{event.author.name} warned #{player} for #{reason}")
    elsif message.start_with?("!ban")
      channel.send_message("#{event.author.name} banned #{player} for #{reason}")
    else
      channel.send_message(event.message)
    end
  end

  private

  def self.find_channel(event, channel_name)
    channels = event.server.channels
    channels.each do |channel|
      next unless channel.name == channel_name
      return channel
    end
  end
end
