module Bot::DiscordRoles
  module GameMaster
    extend Discordrb::Commands::CommandContainer

    Bot::BOT.set_role_permission(412089660953722883, 7)
  end
end
