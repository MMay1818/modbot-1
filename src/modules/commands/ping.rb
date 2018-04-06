module Bot::DiscordCommands
  # Responds with 'Pong!'
  # This is used to check if bot is alive
  module Ping
    extend Discordrb::Commands::CommandContainer
    command :ping do |_event|
      'Pong!'
    end
  end
end
