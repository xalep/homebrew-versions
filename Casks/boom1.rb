cask :v1 => 'boom1' do
  version '1.1'
  sha256 '3d3b57f99372a7f815946c214f3e52eeb52b42498f1e81fe52b046dffb03be8c'

  url "http://www.globaldelight.com/boom/download/#{version}x/boom.dmg"
  homepage 'http://www.globaldelight.com/boom/'
  license :commercial

  app 'Boom.app'
  
  postflight do
    # Delete the background image so that it will launch
    system '/bin/rm', '--', "#{staged_path}/.DMG_Background_new.png"
  end
end
