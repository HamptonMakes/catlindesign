class Album
  
  def initialize(api_object)
    @api_object = api_object
  end
  
  def title
    @api_object.title
  end
  
  def api_id
    @api_object.id
  end
  
  def photos
    @api_object.photos
  end
  
  def self.get(api_id)
    # This sucks, but $flickr.photosets.getInfo is BROKEN
    @@album_cache ||= {}
    @@album_cache[api_id] ||= (Album.list.select {|a| a.api_id == api_id }).first
  end
  
  def self.list
    ($flickr.photosets.getList.collect do |photoset|
      album = Album.new(photoset)
      unless album.title.starts_with?("[hide]")
        album
      else
        nil
      end
    end).compact
  end
end
