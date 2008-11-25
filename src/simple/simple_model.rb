require 'hpricot'
class SimpleModel
  attr_accessor :name, :message
  
  def initialize
    page = Hpricot( open( 'http://www.planetargon.com/about.html' ) )    
    amount = page.search( "//div[@class='team']" ).size 
    @message = "submitted text appears here (#{amount})"
    
  end
end
