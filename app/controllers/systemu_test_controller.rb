require 'systemu'

class SystemuTestController < ApplicationController
  def index
    cmd = %q( date )
    status, stdout, stderr = systemu cmd
    @out = stdout
    render
  end
end
