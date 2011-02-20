require 'java'
java_import 'example.Base'

class Derived < Base
  def hello
    "world!"
  end
end
