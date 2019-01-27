module Bot::DiscordRoles
  module Everyone
    extend Discordrb::Commands::CommandContainer

    Bot::BOT.set_role_permission(412089660953722883, 1)
  end
end
