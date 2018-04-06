require './src/utilities.rb'

module Bot::DiscordCommands
  include Utilities

  # Prunes last X messages
  # @param amount [Integer] the amount of messages to prune
  module Prune
    extend Discordrb::Commands::CommandContainer

    command :prune, description: 'Prune last X messages from channel. Maximum of 100 messages', help_available: false, permission_level: 6, min_args: 1, max_args: 1, usage: '!prune <amount>' do |event, amount|
      event.channel.prune(amount.to_i)
      nil
    end

  end

  # Bans user
  # @param user [String] The user to ban
  # @param reason [String] The reason for the ban
  module Ban
    extend Discordrb::Commands::CommandContainer

    command :ban, description: 'Ban a user', help_available: false, permission_level: 6, min_args: 2, usage: '!ban <@user> <reason>' do |event, user, *reason|

      event.message.delete

      mention = Bot::BOT.parse_mention(user).id
      event.server.ban(mention, 7, reason: reason.join(''))

      Utilities.log_moderation_action(event, "admin-moderation-logs", user, reason.join(''))
    end
  end

  # Test logging
  module TestLogging
    extend Discordrb::Commands::CommandContainer

    command :test_log, permission_level: 6 do |event|
      Utilities.log_moderation_action(event, "admin-moderation-logs")
      nil
    end
  end
end
