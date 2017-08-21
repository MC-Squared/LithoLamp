guard :shell do
  watch(/lamp.rb/) { system('ruby lamp.rb') }
  watch(%r{^lib/.+/.+\.rb}) { system('ruby lamp.rb') }
end
