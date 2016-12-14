class Specinfra::Command::Windows::Base::Share < Specinfra::Command::Windows::Base
  class << self
    def check_exists(name)
      Backend::PowerShell::Command.new do
        using 'find_share.ps1'
        exec "(FindShare -name '#{name}') -ne $null"
      end
    end
  end
end