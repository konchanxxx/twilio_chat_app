module Settings
  class App < Settingslogic
    source Rails.root.join('config', 'settings', 'app.yml')
    namespace Rails.env
  end
end
