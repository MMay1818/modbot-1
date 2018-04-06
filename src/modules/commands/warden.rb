require './src/utilities.rb'

module Bot::DiscordCommands
  include Utilities

  # Sends warning PM to user
  # @param user [String] The user to send the warning to
  # @param reason [String] The reason for the warning
  module Warn
    extend Discordrb::Commands::CommandContainer

    command :warn, description: 'Warn a user', help_available: false, permission_level: 4, min_args: 2, usage: '!warn <@user> <reason>' do |event, user, reason|

      case reason.downcase
      when "spamming"
        message = "Please don't spam!"
      end

      mention = Bot::BOT.parse_mention(user)

      Utilities.log_moderation_action(event, "warden-moderation-logs", user, reason)

      event.message.delete

      warning = "This is an automated message from the Furryverse Community Team\n\n"
      warning << "**#{message}**"
      warning << "\n\nIf you continue, you may be banned."

      mention.pm(warning)

      nil
    end
  end
end
