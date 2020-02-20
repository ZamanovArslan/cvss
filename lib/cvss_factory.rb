require "cvss2"

class CVSSFactory
  def self.cvss(params)
    CVSS2.new(params)
  end
end