module Bot::DiscordRoles
  module GameMaster
    extend Discordrb::Commands::CommandContainer

    Bot::BOT.set_role_permission(382259497844080653, 7)
  end
end
