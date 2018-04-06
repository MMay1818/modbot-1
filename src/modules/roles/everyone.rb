module Bot::DiscordRoles
  module Everyone
    extend Discordrb::Commands::CommandContainer

    Bot::BOT.set_role_permission(364123620659822602, 1)
  end
end
