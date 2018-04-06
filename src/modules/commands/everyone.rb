module Bot::DiscordCommands
  # PMs rules to user
  module Rules
    extend Discordrb::Commands::CommandContainer

    command :rules, description: 'PMs the rules to you', help_available: true, usage: '!rules' do |event|
      event.message.delete

      rules = <<~RULESDOC
                  This community has several rules specific to Discord, as well as more general rules
                  covered on this page: https://www.furryverse.co.uk/rules.

                  **Discord-specific rules:**

                  1. Be nice to each other.

                  2. The decision of Wardens and Game Masters are final.
                  
                  3. Something else goes here.
              RULESDOC

      event.user.pm(rules)
    end
  end
end
