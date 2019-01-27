module Bot::DiscordRoles
  module Warden
    extend Discordrb::Commands::CommandContainer

    Bot::BOT.set_role_permission(412089660953722883, 4)
  end
end
