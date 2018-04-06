module Bot::DiscordRoles
  module Warden
    extend Discordrb::Commands::CommandContainer

    Bot::BOT.set_role_permission(382257109854715906, 4)
  end
end
