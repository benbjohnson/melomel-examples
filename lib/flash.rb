def embed_flash(swf, width, height)
  output =  "<html><body>\n"
  output << "<object classid='clsid:D27CDB6E-AE6D-11cf-96B8-444553540000' codebase='http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0' WIDTH='#{width}' HEIGHT='#{height}' id='app'>\n"
  output << "<param name='movie' value='#{swf}'>\n"
  output << "<param name='quality' value='high'>\n"
  output << "<param name='bgcolor' value='#FFFFFF'>\n"
  output << "<embed href='#{swf}' quality='high' bgcolor='#FFFFFF' width='#{width}' height='#{height}' name='app' align='' type='application/x-shockwave-flash' pluginspage='http://www.macromedia.com/go/getflashplayer'></embed>\n"
  output << "</object>\n"
  output << "</body></html>\n"
end